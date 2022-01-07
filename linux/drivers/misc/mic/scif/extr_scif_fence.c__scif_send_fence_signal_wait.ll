; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_fence.c__scif_send_fence_signal_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_fence.c__scif_send_fence_signal_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_endpt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.scif_fence_info = type { i64, i32 }

@SCIF_NODE_ALIVE_TIMEOUT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@OP_IN_PROGRESS = common dso_local global i64 0, align 8
@OP_FAILED = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scif_endpt*, %struct.scif_fence_info*)* @_scif_send_fence_signal_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_scif_send_fence_signal_wait(%struct.scif_endpt* %0, %struct.scif_fence_info* %1) #0 {
  %3 = alloca %struct.scif_endpt*, align 8
  %4 = alloca %struct.scif_fence_info*, align 8
  %5 = alloca i32, align 4
  store %struct.scif_endpt* %0, %struct.scif_endpt** %3, align 8
  store %struct.scif_fence_info* %1, %struct.scif_fence_info** %4, align 8
  br label %6

6:                                                ; preds = %17, %2
  %7 = load %struct.scif_fence_info*, %struct.scif_fence_info** %4, align 8
  %8 = getelementptr inbounds %struct.scif_fence_info, %struct.scif_fence_info* %7, i32 0, i32 1
  %9 = load i32, i32* @SCIF_NODE_ALIVE_TIMEOUT, align 4
  %10 = call i32 @wait_for_completion_timeout(i32* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %6
  %14 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %15 = call i64 @scifdev_alive(%struct.scif_endpt* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %6

18:                                               ; preds = %13, %6
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %28
  %32 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %33 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.scif_fence_info*, %struct.scif_fence_info** %4, align 8
  %37 = getelementptr inbounds %struct.scif_fence_info, %struct.scif_fence_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @OP_IN_PROGRESS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load i64, i64* @OP_FAILED, align 8
  %43 = load %struct.scif_fence_info*, %struct.scif_fence_info** %4, align 8
  %44 = getelementptr inbounds %struct.scif_fence_info, %struct.scif_fence_info* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %31
  %46 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %47 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  br label %50

50:                                               ; preds = %45, %28
  %51 = load %struct.scif_fence_info*, %struct.scif_fence_info** %4, align 8
  %52 = getelementptr inbounds %struct.scif_fence_info, %struct.scif_fence_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @OP_FAILED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @ENXIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %59, %56, %50
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i64 @scifdev_alive(%struct.scif_endpt*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
