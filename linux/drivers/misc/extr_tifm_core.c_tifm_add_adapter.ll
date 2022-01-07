; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_tifm_core.c_tifm_add_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_tifm_core.c_tifm_add_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_adapter = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@tifm_adapter_lock = common dso_local global i32 0, align 4
@tifm_adapter_idr = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"tifm%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tifm_add_adapter(%struct.tifm_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tifm_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.tifm_adapter* %0, %struct.tifm_adapter** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i32 @idr_preload(i32 %5)
  %7 = call i32 @spin_lock(i32* @tifm_adapter_lock)
  %8 = load %struct.tifm_adapter*, %struct.tifm_adapter** %3, align 8
  %9 = load i32, i32* @GFP_NOWAIT, align 4
  %10 = call i32 @idr_alloc(i32* @tifm_adapter_idr, %struct.tifm_adapter* %8, i32 0, i32 0, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.tifm_adapter*, %struct.tifm_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %13, %1
  %18 = call i32 @spin_unlock(i32* @tifm_adapter_lock)
  %19 = call i32 (...) @idr_preload_end()
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %45

24:                                               ; preds = %17
  %25 = load %struct.tifm_adapter*, %struct.tifm_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %25, i32 0, i32 1
  %27 = load %struct.tifm_adapter*, %struct.tifm_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_set_name(i32* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.tifm_adapter*, %struct.tifm_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %31, i32 0, i32 1
  %33 = call i32 @device_add(i32* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %24
  %37 = call i32 @spin_lock(i32* @tifm_adapter_lock)
  %38 = load %struct.tifm_adapter*, %struct.tifm_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @idr_remove(i32* @tifm_adapter_idr, i32 %40)
  %42 = call i32 @spin_unlock(i32* @tifm_adapter_lock)
  br label %43

43:                                               ; preds = %36, %24
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %22
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.tifm_adapter*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i32 @dev_set_name(i32*, i8*, i32) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
