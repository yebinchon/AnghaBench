; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_hl_vm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_hl_vm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i32, %struct.hl_vm, %struct.asic_fixed_properties }
%struct.hl_vm = type { i32, i32, i32, i32, i32 }
%struct.asic_fixed_properties = type { i64, i64, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to create dram page pool\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to add memory to dram page pool %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_vm_init(%struct.hl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.asic_fixed_properties*, align 8
  %5 = alloca %struct.hl_vm*, align 8
  %6 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  %7 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %8 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %7, i32 0, i32 3
  store %struct.asic_fixed_properties* %8, %struct.asic_fixed_properties** %4, align 8
  %9 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %10 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %9, i32 0, i32 2
  store %struct.hl_vm* %10, %struct.hl_vm** %5, align 8
  %11 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %12 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @__ffs(i32 %13)
  %15 = call i32 @gen_pool_create(i32 %14, i32 -1)
  %16 = load %struct.hl_vm*, %struct.hl_vm** %5, align 8
  %17 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.hl_vm*, %struct.hl_vm** %5, align 8
  %19 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %24 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %73

29:                                               ; preds = %1
  %30 = load %struct.hl_vm*, %struct.hl_vm** %5, align 8
  %31 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %30, i32 0, i32 4
  %32 = call i32 @kref_init(i32* %31)
  %33 = load %struct.hl_vm*, %struct.hl_vm** %5, align 8
  %34 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %37 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %40 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %43 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = call i32 @gen_pool_add(i32 %35, i64 %38, i64 %45, i32 -1)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %29
  %50 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %51 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 (i32, i8*, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %67

55:                                               ; preds = %29
  %56 = load %struct.hl_vm*, %struct.hl_vm** %5, align 8
  %57 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %56, i32 0, i32 3
  %58 = call i32 @spin_lock_init(i32* %57)
  %59 = load %struct.hl_vm*, %struct.hl_vm** %5, align 8
  %60 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %59, i32 0, i32 2
  %61 = call i32 @idr_init(i32* %60)
  %62 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %63 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %62, i32 0, i32 0
  %64 = call i32 @atomic64_set(i32* %63, i32 0)
  %65 = load %struct.hl_vm*, %struct.hl_vm** %5, align 8
  %66 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  store i32 0, i32* %2, align 4
  br label %73

67:                                               ; preds = %49
  %68 = load %struct.hl_vm*, %struct.hl_vm** %5, align 8
  %69 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @gen_pool_destroy(i32 %70)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %67, %55, %22
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @gen_pool_create(i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @gen_pool_add(i32, i64, i64, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @gen_pool_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
