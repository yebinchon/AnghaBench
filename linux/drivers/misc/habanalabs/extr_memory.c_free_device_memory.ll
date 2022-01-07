; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_free_device_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_free_device_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_ctx = type { i32, %struct.hl_device* }
%struct.hl_device = type { i32, i32, %struct.hl_vm }
%struct.hl_vm = type { i32, i32 }
%struct.hl_vm_phys_pg_pack = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"handle %u is mapped, cannot free\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"free device memory failed, no match for handle %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_ctx*, i32)* @free_device_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_device_memory(%struct.hl_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hl_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hl_device*, align 8
  %7 = alloca %struct.hl_vm*, align 8
  %8 = alloca %struct.hl_vm_phys_pg_pack*, align 8
  store %struct.hl_ctx* %0, %struct.hl_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %9, i32 0, i32 1
  %11 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  store %struct.hl_device* %11, %struct.hl_device** %6, align 8
  %12 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %13 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %12, i32 0, i32 2
  store %struct.hl_vm* %13, %struct.hl_vm** %7, align 8
  %14 = load %struct.hl_vm*, %struct.hl_vm** %7, align 8
  %15 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.hl_vm*, %struct.hl_vm** %7, align 8
  %18 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %17, i32 0, i32 1
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.hl_vm_phys_pg_pack* @idr_find(i32* %18, i32 %19)
  store %struct.hl_vm_phys_pg_pack* %20, %struct.hl_vm_phys_pg_pack** %8, align 8
  %21 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %8, align 8
  %22 = icmp ne %struct.hl_vm_phys_pg_pack* %21, null
  br i1 %22, label %23, label %62

23:                                               ; preds = %2
  %24 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %8, align 8
  %25 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %24, i32 0, i32 1
  %26 = call i64 @atomic_read(i32* %25)
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %30 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.hl_vm*, %struct.hl_vm** %7, align 8
  %35 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %74

39:                                               ; preds = %23
  %40 = load %struct.hl_vm*, %struct.hl_vm** %7, align 8
  %41 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %40, i32 0, i32 1
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @idr_remove(i32* %41, i32 %42)
  %44 = load %struct.hl_vm*, %struct.hl_vm** %7, align 8
  %45 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %8, align 8
  %48 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %50, i32 0, i32 0
  %52 = call i32 @atomic64_sub(i32 %49, i32* %51)
  %53 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %8, align 8
  %54 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %57 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %56, i32 0, i32 1
  %58 = call i32 @atomic64_sub(i32 %55, i32* %57)
  %59 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %60 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %8, align 8
  %61 = call i32 @free_phys_pg_pack(%struct.hl_device* %59, %struct.hl_vm_phys_pg_pack* %60)
  br label %73

62:                                               ; preds = %2
  %63 = load %struct.hl_vm*, %struct.hl_vm** %7, align 8
  %64 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock(i32* %64)
  %66 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %67 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %74

73:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %62, %28
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.hl_vm_phys_pg_pack* @idr_find(i32*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @atomic64_sub(i32, i32*) #1

declare dso_local i32 @free_phys_pg_pack(%struct.hl_device*, %struct.hl_vm_phys_pg_pack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
