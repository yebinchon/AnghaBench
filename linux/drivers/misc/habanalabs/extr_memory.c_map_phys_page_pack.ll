; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_map_phys_page_pack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_map_phys_page_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_ctx = type { %struct.hl_device* }
%struct.hl_device = type { i32 }
%struct.hl_vm_phys_pg_pack = type { i64, i64*, i32, i64 }

@.str = private unnamed_addr constant [53 x i8] c"map failed for handle %u, npages: %llu, mapped: %llu\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"failed to unmap handle %u, va: 0x%llx, pa: 0x%llx, page size: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_ctx*, i64, %struct.hl_vm_phys_pg_pack*)* @map_phys_page_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_phys_page_pack(%struct.hl_ctx* %0, i64 %1, %struct.hl_vm_phys_pg_pack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_ctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hl_vm_phys_pg_pack*, align 8
  %8 = alloca %struct.hl_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.hl_ctx* %0, %struct.hl_ctx** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.hl_vm_phys_pg_pack* %2, %struct.hl_vm_phys_pg_pack** %7, align 8
  %15 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %15, i32 0, i32 0
  %17 = load %struct.hl_device*, %struct.hl_device** %16, align 8
  store %struct.hl_device* %17, %struct.hl_device** %8, align 8
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %9, align 8
  store i64 0, i64* %11, align 8
  %19 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %7, align 8
  %20 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %12, align 8
  br label %22

22:                                               ; preds = %60, %3
  %23 = load i64, i64* %12, align 8
  %24 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %7, align 8
  %25 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %63

28:                                               ; preds = %22
  %29 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %7, align 8
  %30 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %12, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %10, align 8
  %35 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %13, align 8
  %39 = call i32 @hl_mmu_map(%struct.hl_ctx* %35, i64 %36, i64 %37, i64 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %28
  %43 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %44 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %7, align 8
  %47 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %7, align 8
  %50 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %48, i64 %51, i64 %52)
  br label %64

54:                                               ; preds = %28
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %54
  %61 = load i64, i64* %12, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %12, align 8
  br label %22

63:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %101

64:                                               ; preds = %42
  %65 = load i64, i64* %6, align 8
  store i64 %65, i64* %9, align 8
  store i64 0, i64* %12, align 8
  br label %66

66:                                               ; preds = %96, %64
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %99

70:                                               ; preds = %66
  %71 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %13, align 8
  %74 = call i64 @hl_mmu_unmap(%struct.hl_ctx* %71, i64 %72, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %70
  %77 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %78 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %7, align 8
  %81 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %7, align 8
  %85 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* %12, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %13, align 8
  %91 = call i32 @dev_warn_ratelimited(i32 %79, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %82, i64 %83, i64 %89, i64 %90)
  br label %92

92:                                               ; preds = %76, %70
  %93 = load i64, i64* %13, align 8
  %94 = load i64, i64* %9, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %9, align 8
  br label %96

96:                                               ; preds = %92
  %97 = load i64, i64* %12, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %12, align 8
  br label %66

99:                                               ; preds = %66
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %99, %63
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @hl_mmu_map(%struct.hl_ctx*, i64, i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i64, i64) #1

declare dso_local i64 @hl_mmu_unmap(%struct.hl_ctx*, i64, i64) #1

declare dso_local i32 @dev_warn_ratelimited(i32, i8*, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
