; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_fence.c_scif_recv_sig_remote.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_fence.c_scif_recv_sig_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_dev = type { i32 }
%struct.scifmsg = type { i64*, i32 }
%struct.scif_endpt = type { i32, i64 }

@SCIF_WINDOW_PEER = common dso_local global i32 0, align 4
@SCIF_SIG_NACK = common dso_local global i32 0, align 4
@SCIF_SIG_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_recv_sig_remote(%struct.scif_dev* %0, %struct.scifmsg* %1) #0 {
  %3 = alloca %struct.scif_dev*, align 8
  %4 = alloca %struct.scifmsg*, align 8
  %5 = alloca %struct.scif_endpt*, align 8
  %6 = alloca i32, align 4
  store %struct.scif_dev* %0, %struct.scif_dev** %3, align 8
  store %struct.scifmsg* %1, %struct.scifmsg** %4, align 8
  %7 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %8 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.scif_endpt*
  store %struct.scif_endpt* %12, %struct.scif_endpt** %5, align 8
  %13 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %14 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %15 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %20 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 2
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @SCIF_WINDOW_PEER, align 4
  %25 = call i32 @scif_prog_signal(%struct.scif_endpt* %13, i64 %18, i64 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* @SCIF_SIG_NACK, align 4
  %30 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %31 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  br label %36

32:                                               ; preds = %2
  %33 = load i32, i32* @SCIF_SIG_ACK, align 4
  %34 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %35 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %38 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %41 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  store i64 %39, i64* %43, align 8
  %44 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %45 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %48 = call i32 @scif_nodeqp_send(i32 %46, %struct.scifmsg* %47)
  ret void
}

declare dso_local i32 @scif_prog_signal(%struct.scif_endpt*, i64, i64, i32) #1

declare dso_local i32 @scif_nodeqp_send(i32, %struct.scifmsg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
