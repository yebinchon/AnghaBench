; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_fault.c_cxl_handle_mm_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_fault.c_cxl_handle_mm_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"copro_handle_mm_fault failed: %#x\0A\00", align 1
@_PAGE_PRESENT = common dso_local global i64 0, align 8
@_PAGE_READ = common dso_local global i64 0, align 8
@CXL_PSL_DSISR_An_S = common dso_local global i32 0, align 4
@_PAGE_WRITE = common dso_local global i64 0, align 8
@USER_REGION_ID = common dso_local global i64 0, align 8
@_PAGE_PRIVILEGED = common dso_local global i64 0, align 8
@DSISR_NOHPTE = common dso_local global i32 0, align 4
@HPTE_NOHPTE_UPDATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_handle_mm_fault(%struct.mm_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %14 = icmp ne %struct.mm_struct* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = call i32 (...) @smp_processor_id()
  %17 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %18 = call i32 @mm_cpumask(%struct.mm_struct* %17)
  %19 = call i32 @cpumask_test_cpu(i32 %16, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = call i32 (...) @smp_processor_id()
  %23 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %24 = call i32 @mm_cpumask(%struct.mm_struct* %23)
  %25 = call i32 @cpumask_set_cpu(i32 %22, i32 %24)
  %26 = call i32 (...) @smp_mb()
  br label %27

27:                                               ; preds = %21, %15, %3
  %28 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @copro_handle_mm_fault(%struct.mm_struct* %28, i32 %29, i32 %30, i32* %8)
  store i32 %31, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @pr_devel(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %84

37:                                               ; preds = %27
  %38 = call i32 (...) @radix_enabled()
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %83, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* @_PAGE_PRESENT, align 8
  %42 = load i64, i64* @_PAGE_READ, align 8
  %43 = or i64 %41, %42
  store i64 %43, i64* %10, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @CXL_PSL_DSISR_An_S, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i64, i64* @_PAGE_WRITE, align 8
  %50 = load i64, i64* %10, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %10, align 8
  br label %52

52:                                               ; preds = %48, %40
  %53 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %54 = icmp ne %struct.mm_struct* %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @get_region_id(i32 %56)
  %58 = load i64, i64* @USER_REGION_ID, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i64, i64* @_PAGE_PRIVILEGED, align 8
  %62 = load i64, i64* %10, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %10, align 8
  br label %64

64:                                               ; preds = %60, %55, %52
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @DSISR_NOHPTE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i64, i64* @HPTE_NOHPTE_UPDATE, align 8
  %71 = load i64, i64* %12, align 8
  %72 = or i64 %71, %70
  store i64 %72, i64* %12, align 8
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @local_irq_save(i64 %74)
  %76 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @hash_page_mm(%struct.mm_struct* %76, i32 %77, i64 %78, i32 768, i64 %79)
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @local_irq_restore(i64 %81)
  br label %83

83:                                               ; preds = %73, %37
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %33
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @copro_handle_mm_fault(%struct.mm_struct*, i32, i32, i32*) #1

declare dso_local i32 @pr_devel(i8*, i32) #1

declare dso_local i32 @radix_enabled(...) #1

declare dso_local i64 @get_region_id(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @hash_page_mm(%struct.mm_struct*, i32, i64, i32, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
