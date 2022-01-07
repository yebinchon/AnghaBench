; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_epd.c_scif_cnctgnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_epd.c_scif_cnctgnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_dev = type { i32 }
%struct.scifmsg = type { i64*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.scif_endpt = type { i64, i32, i32, i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@SCIFEP_CONNECTING = common dso_local global i64 0, align 8
@SCIFEP_MAPPING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_cnctgnt(%struct.scif_dev* %0, %struct.scifmsg* %1) #0 {
  %3 = alloca %struct.scif_dev*, align 8
  %4 = alloca %struct.scifmsg*, align 8
  %5 = alloca %struct.scif_endpt*, align 8
  store %struct.scif_dev* %0, %struct.scif_dev** %3, align 8
  store %struct.scifmsg* %1, %struct.scifmsg** %4, align 8
  %6 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %7 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.scif_endpt*
  store %struct.scif_endpt* %11, %struct.scif_endpt** %5, align 8
  %12 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %13 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load i64, i64* @SCIFEP_CONNECTING, align 8
  %16 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %17 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %2
  %21 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %22 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %26 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %29 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %33 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %36 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %41 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  %43 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %44 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %49 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %48, i32 0, i32 3
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* @SCIFEP_MAPPING, align 8
  %51 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %52 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %54 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %53, i32 0, i32 2
  %55 = call i32 @wake_up(i32* %54)
  br label %56

56:                                               ; preds = %20, %2
  %57 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %58 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %57, i32 0, i32 1
  %59 = call i32 @spin_unlock(i32* %58)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
