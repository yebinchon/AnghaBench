; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/cosm/extr_cosm_main.c_cosm_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/cosm/extr_cosm_main.c_cosm_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cosm_device = type { i64, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.cosm_device*, i64)*, i32 (%struct.cosm_device*, i32)* }

@MIC_READY = common dso_local global i64 0, align 8
@MIC_RESETTING = common dso_local global i64 0, align 8
@MIC_RESET_FAILED = common dso_local global i64 0, align 8
@MIC_NOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cosm_stop(%struct.cosm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.cosm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.cosm_device* %0, %struct.cosm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %8 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %7, i32 0, i32 4
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %11 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MIC_READY, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %95

18:                                               ; preds = %15, %2
  %19 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %20 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MIC_RESETTING, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %26 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  br label %32

28:                                               ; preds = %18
  %29 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %30 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i64 [ %27, %24 ], [ %31, %28 ]
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @MIC_RESET_FAILED, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @MIC_READY, align 8
  %40 = icmp ne i64 %38, %39
  br label %41

41:                                               ; preds = %37, %32
  %42 = phi i1 [ false, %32 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %6, align 4
  %44 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %45 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MIC_RESETTING, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %51 = load i64, i64* @MIC_RESETTING, align 8
  %52 = call i32 @cosm_set_state(%struct.cosm_device* %50, i64 %51)
  br label %53

53:                                               ; preds = %49, %41
  %54 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %55 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %60 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %59, i32 0, i32 5
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32 (%struct.cosm_device*, i32)*, i32 (%struct.cosm_device*, i32)** %62, align 8
  %64 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 %63(%struct.cosm_device* %64, i32 %65)
  br label %67

67:                                               ; preds = %58, %53
  %68 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @cosm_hw_reset(%struct.cosm_device* %68, i32 %69)
  %71 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %72 = load i32, i32* @MIC_NOP, align 4
  %73 = call i32 @cosm_set_shutdown_status(%struct.cosm_device* %71, i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %67
  %77 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %78 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %77, i32 0, i32 5
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (%struct.cosm_device*, i64)*, i32 (%struct.cosm_device*, i64)** %80, align 8
  %82 = icmp ne i32 (%struct.cosm_device*, i64)* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %76
  %84 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %85 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %84, i32 0, i32 5
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32 (%struct.cosm_device*, i64)*, i32 (%struct.cosm_device*, i64)** %87, align 8
  %89 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %90 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %91 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 %88(%struct.cosm_device* %89, i64 %92)
  br label %94

94:                                               ; preds = %83, %76, %67
  br label %95

95:                                               ; preds = %94, %15
  %96 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %97 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %96, i32 0, i32 4
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %100 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %99, i32 0, i32 3
  %101 = call i32 @flush_work(i32* %100)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cosm_set_state(%struct.cosm_device*, i64) #1

declare dso_local i32 @cosm_hw_reset(%struct.cosm_device*, i32) #1

declare dso_local i32 @cosm_set_shutdown_status(%struct.cosm_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
