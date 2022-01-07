; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_hl_vm_ctx_init_with_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_hl_vm_ctx_init_with_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_ctx = type { i32, %struct.TYPE_2__, %struct.TYPE_2__, i32, i32, %struct.hl_device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hl_device = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"failed to init context %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to init host vm range\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to init dram vm range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_ctx*, i32, i32, i32, i32)* @hl_vm_ctx_init_with_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hl_vm_ctx_init_with_ranges(%struct.hl_ctx* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hl_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hl_device*, align 8
  %13 = alloca i32, align 4
  store %struct.hl_ctx* %0, %struct.hl_ctx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.hl_ctx*, %struct.hl_ctx** %7, align 8
  %15 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %14, i32 0, i32 5
  %16 = load %struct.hl_device*, %struct.hl_device** %15, align 8
  store %struct.hl_device* %16, %struct.hl_device** %12, align 8
  %17 = load %struct.hl_ctx*, %struct.hl_ctx** %7, align 8
  %18 = call i32 @hl_mmu_ctx_init(%struct.hl_ctx* %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %5
  %22 = load %struct.hl_device*, %struct.hl_device** %12, align 8
  %23 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.hl_ctx*, %struct.hl_ctx** %7, align 8
  %26 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i32, i8*, ...) @dev_err(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %6, align 4
  br label %106

30:                                               ; preds = %5
  %31 = load %struct.hl_ctx*, %struct.hl_ctx** %7, align 8
  %32 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %31, i32 0, i32 0
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.hl_ctx*, %struct.hl_ctx** %7, align 8
  %35 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @hash_init(i32 %36)
  %38 = load %struct.hl_ctx*, %struct.hl_ctx** %7, align 8
  %39 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.hl_device*, %struct.hl_device** %12, align 8
  %43 = load %struct.hl_ctx*, %struct.hl_ctx** %7, align 8
  %44 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %43, i32 0, i32 1
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @hl_va_range_init(%struct.hl_device* %42, %struct.TYPE_2__* %44, i32 %45, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %30
  %51 = load %struct.hl_device*, %struct.hl_device** %12, align 8
  %52 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, ...) @dev_err(i32 %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %95

55:                                               ; preds = %30
  %56 = load %struct.hl_ctx*, %struct.hl_ctx** %7, align 8
  %57 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @mutex_init(i32* %58)
  %60 = load %struct.hl_device*, %struct.hl_device** %12, align 8
  %61 = load %struct.hl_ctx*, %struct.hl_ctx** %7, align 8
  %62 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %61, i32 0, i32 2
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @hl_va_range_init(%struct.hl_device* %60, %struct.TYPE_2__* %62, i32 %63, i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %55
  %69 = load %struct.hl_device*, %struct.hl_device** %12, align 8
  %70 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @dev_err(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %77

73:                                               ; preds = %55
  %74 = load %struct.hl_device*, %struct.hl_device** %12, align 8
  %75 = load %struct.hl_ctx*, %struct.hl_ctx** %7, align 8
  %76 = call i32 @hl_debugfs_add_ctx_mem_hash(%struct.hl_device* %74, %struct.hl_ctx* %75)
  store i32 0, i32* %6, align 4
  br label %106

77:                                               ; preds = %68
  %78 = load %struct.hl_ctx*, %struct.hl_ctx** %7, align 8
  %79 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = call i32 @mutex_destroy(i32* %80)
  %82 = load %struct.hl_ctx*, %struct.hl_ctx** %7, align 8
  %83 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = call i32 @mutex_lock(i32* %84)
  %86 = load %struct.hl_device*, %struct.hl_device** %12, align 8
  %87 = load %struct.hl_ctx*, %struct.hl_ctx** %7, align 8
  %88 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = call i32 @clear_va_list_locked(%struct.hl_device* %86, i32* %89)
  %91 = load %struct.hl_ctx*, %struct.hl_ctx** %7, align 8
  %92 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = call i32 @mutex_unlock(i32* %93)
  br label %95

95:                                               ; preds = %77, %50
  %96 = load %struct.hl_ctx*, %struct.hl_ctx** %7, align 8
  %97 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = call i32 @mutex_destroy(i32* %98)
  %100 = load %struct.hl_ctx*, %struct.hl_ctx** %7, align 8
  %101 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %100, i32 0, i32 0
  %102 = call i32 @mutex_destroy(i32* %101)
  %103 = load %struct.hl_ctx*, %struct.hl_ctx** %7, align 8
  %104 = call i32 @hl_mmu_ctx_fini(%struct.hl_ctx* %103)
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %95, %73, %21
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @hl_mmu_ctx_init(%struct.hl_ctx*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @hash_init(i32) #1

declare dso_local i32 @hl_va_range_init(%struct.hl_device*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @hl_debugfs_add_ctx_mem_hash(%struct.hl_device*, %struct.hl_ctx*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_va_list_locked(%struct.hl_device*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hl_mmu_ctx_fini(%struct.hl_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
