; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_fence.c_scif_recv_mark.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_fence.c_scif_recv_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_dev = type { i32 }
%struct.scifmsg = type { i32*, i32 }
%struct.scif_endpt = type { i32, i32 }

@SCIF_MARK_NACK = common dso_local global i32 0, align 4
@SCIF_MARK_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_recv_mark(%struct.scif_dev* %0, %struct.scifmsg* %1) #0 {
  %3 = alloca %struct.scif_dev*, align 8
  %4 = alloca %struct.scifmsg*, align 8
  %5 = alloca %struct.scif_endpt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scif_dev* %0, %struct.scif_dev** %3, align 8
  store %struct.scifmsg* %1, %struct.scifmsg** %4, align 8
  %8 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %9 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.scif_endpt*
  store %struct.scif_endpt* %14, %struct.scif_endpt** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %16 = call i32 @_scif_fence_mark(%struct.scif_endpt* %15, i32* %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @SCIF_MARK_NACK, align 4
  %21 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %22 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  br label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @SCIF_MARK_ACK, align 4
  %25 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %26 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %29 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %32 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %37 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32 %35, i32* %39, align 4
  %40 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %41 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %44 = call i32 @scif_nodeqp_send(i32 %42, %struct.scifmsg* %43)
  ret void
}

declare dso_local i32 @_scif_fence_mark(%struct.scif_endpt*, i32*) #1

declare dso_local i32 @scif_nodeqp_send(i32, %struct.scifmsg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
