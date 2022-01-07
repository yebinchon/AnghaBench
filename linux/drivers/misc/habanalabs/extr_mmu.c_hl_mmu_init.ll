; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_mmu.c_hl_mmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_mmu.c_hl_mmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i32, i32, i32, %struct.asic_fixed_properties }
%struct.asic_fixed_properties = type { i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"Failed to create page gen pool\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to add memory to page gen pool\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_mmu_init(%struct.hl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.asic_fixed_properties*, align 8
  %5 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  %6 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %7 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %6, i32 0, i32 4
  store %struct.asic_fixed_properties* %7, %struct.asic_fixed_properties** %4, align 8
  %8 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %9 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

13:                                               ; preds = %1
  %14 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %15 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @__ffs(i32 %16)
  %18 = call i32 @gen_pool_create(i32 %17, i32 -1)
  %19 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %20 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %22 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %13
  %26 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %27 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %85

32:                                               ; preds = %13
  %33 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %34 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %37 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %40 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %44 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %47 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  %50 = call i32 @gen_pool_add(i32 %35, i64 %42, i64 %49, i32 -1)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %32
  %54 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %55 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %79

58:                                               ; preds = %32
  %59 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %60 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %63 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = load i32, i32* @__GFP_ZERO, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @kvmalloc_array(i32 %61, i32 %64, i32 %67)
  %69 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %70 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %72 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %58
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %79

78:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %85

79:                                               ; preds = %75, %53
  %80 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %81 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @gen_pool_destroy(i32 %82)
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %79, %78, %25, %12
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @gen_pool_create(i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @gen_pool_add(i32, i64, i64, i32) #1

declare dso_local i32 @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @gen_pool_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
