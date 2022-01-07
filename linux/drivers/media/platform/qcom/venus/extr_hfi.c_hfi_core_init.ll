; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi.c_hfi_core_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi.c_hfi_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@CORE_INIT = common dso_local global i64 0, align 8
@TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@HFI_ERR_NONE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi_core_init(%struct.venus_core* %0) #0 {
  %2 = alloca %struct.venus_core*, align 8
  %3 = alloca i32, align 4
  store %struct.venus_core* %0, %struct.venus_core** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.venus_core*, %struct.venus_core** %2, align 8
  %5 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %4, i32 0, i32 2
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.venus_core*, %struct.venus_core** %2, align 8
  %8 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CORE_INIT, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %51

13:                                               ; preds = %1
  %14 = load %struct.venus_core*, %struct.venus_core** %2, align 8
  %15 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %14, i32 0, i32 3
  %16 = call i32 @reinit_completion(i32* %15)
  %17 = load %struct.venus_core*, %struct.venus_core** %2, align 8
  %18 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.venus_core*)**
  %22 = load i32 (%struct.venus_core*)*, i32 (%struct.venus_core*)** %21, align 8
  %23 = load %struct.venus_core*, %struct.venus_core** %2, align 8
  %24 = call i32 %22(%struct.venus_core* %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  br label %51

28:                                               ; preds = %13
  %29 = load %struct.venus_core*, %struct.venus_core** %2, align 8
  %30 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %29, i32 0, i32 3
  %31 = load i32, i32* @TIMEOUT, align 4
  %32 = call i32 @wait_for_completion_timeout(i32* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ETIMEDOUT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %51

38:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  %39 = load %struct.venus_core*, %struct.venus_core** %2, align 8
  %40 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @HFI_ERR_NONE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %51

47:                                               ; preds = %38
  %48 = load i64, i64* @CORE_INIT, align 8
  %49 = load %struct.venus_core*, %struct.venus_core** %2, align 8
  %50 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %44, %35, %27, %12
  %52 = load %struct.venus_core*, %struct.venus_core** %2, align 8
  %53 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %52, i32 0, i32 2
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
