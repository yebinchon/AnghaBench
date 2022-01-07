; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_get_paddr_from_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_get_paddr_from_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_ctx = type { %struct.hl_device* }
%struct.hl_device = type { i32, %struct.hl_vm }
%struct.hl_vm = type { i32, i32 }
%struct.hl_mem_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hl_vm_phys_pg_pack = type { i32* }

@.str = private unnamed_addr constant [24 x i8] c"no match for handle %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_ctx*, %struct.hl_mem_in*, i32*)* @get_paddr_from_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_paddr_from_handle(%struct.hl_ctx* %0, %struct.hl_mem_in* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_ctx*, align 8
  %6 = alloca %struct.hl_mem_in*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hl_device*, align 8
  %9 = alloca %struct.hl_vm*, align 8
  %10 = alloca %struct.hl_vm_phys_pg_pack*, align 8
  %11 = alloca i32, align 4
  store %struct.hl_ctx* %0, %struct.hl_ctx** %5, align 8
  store %struct.hl_mem_in* %1, %struct.hl_mem_in** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %12, i32 0, i32 0
  %14 = load %struct.hl_device*, %struct.hl_device** %13, align 8
  store %struct.hl_device* %14, %struct.hl_device** %8, align 8
  %15 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %16 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %15, i32 0, i32 1
  store %struct.hl_vm* %16, %struct.hl_vm** %9, align 8
  %17 = load %struct.hl_mem_in*, %struct.hl_mem_in** %6, align 8
  %18 = getelementptr inbounds %struct.hl_mem_in, %struct.hl_mem_in* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @lower_32_bits(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.hl_vm*, %struct.hl_vm** %9, align 8
  %23 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.hl_vm*, %struct.hl_vm** %9, align 8
  %26 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %25, i32 0, i32 1
  %27 = load i32, i32* %11, align 4
  %28 = call %struct.hl_vm_phys_pg_pack* @idr_find(i32* %26, i32 %27)
  store %struct.hl_vm_phys_pg_pack* %28, %struct.hl_vm_phys_pg_pack** %10, align 8
  %29 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %30 = icmp ne %struct.hl_vm_phys_pg_pack* %29, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %3
  %32 = load %struct.hl_vm*, %struct.hl_vm** %9, align 8
  %33 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %36 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %52

42:                                               ; preds = %3
  %43 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %44 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.hl_vm*, %struct.hl_vm** %9, align 8
  %50 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %42, %31
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.hl_vm_phys_pg_pack* @idr_find(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
