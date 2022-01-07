; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi.c_hfi_core_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi.c_hfi_core_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { i64, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.venus_core*)* }

@CORE_UNINIT = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi_core_deinit(%struct.venus_core* %0, i32 %1) #0 {
  %3 = alloca %struct.venus_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.venus_core* %0, %struct.venus_core** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %8 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %11 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CORE_UNINIT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %62

16:                                               ; preds = %2
  %17 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %18 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %17, i32 0, i32 4
  %19 = call i32 @list_empty(i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %62

28:                                               ; preds = %22, %16
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %28
  %32 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %33 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %36 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %35, i32 0, i32 3
  %37 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %38 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %37, i32 0, i32 3
  %39 = call i32 @atomic_read(i32* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @wait_var_event(i32* %36, i32 %42)
  %44 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %45 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %44, i32 0, i32 1
  %46 = call i32 @mutex_lock(i32* %45)
  br label %47

47:                                               ; preds = %31, %28
  %48 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %49 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.venus_core*)*, i32 (%struct.venus_core*)** %51, align 8
  %53 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %54 = call i32 %52(%struct.venus_core* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %47
  %58 = load i64, i64* @CORE_UNINIT, align 8
  %59 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %60 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %57, %47
  br label %62

62:                                               ; preds = %61, %25, %15
  %63 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %64 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %63, i32 0, i32 1
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_var_event(i32*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
