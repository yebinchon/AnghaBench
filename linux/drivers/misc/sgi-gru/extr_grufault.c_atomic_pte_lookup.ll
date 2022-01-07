; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grufault.c_atomic_pte_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grufault.c_atomic_pte_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@HPAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, i32, i64*, i32*)* @atomic_pte_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atomic_pte_lookup(%struct.vm_area_struct* %0, i64 %1, i32 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %8, align 8
  %21 = call i32* @pgd_offset(i32 %19, i64 %20)
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pgd_none(i32 %23)
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  br label %97

28:                                               ; preds = %5
  %29 = load i32*, i32** %12, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32* @p4d_offset(i32* %29, i64 %30)
  store i32* %31, i32** %13, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @p4d_none(i32 %33)
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %97

38:                                               ; preds = %28
  %39 = load i32*, i32** %13, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32* @pud_offset(i32* %39, i64 %40)
  store i32* %41, i32** %14, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pud_none(i32 %43)
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %97

48:                                               ; preds = %38
  %49 = load i32*, i32** %14, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32* @pmd_offset(i32* %49, i64 %50)
  store i32* %51, i32** %15, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pmd_none(i32 %53)
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %97

58:                                               ; preds = %48
  %59 = load i32*, i32** %15, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i32* @pte_offset_kernel(i32* %59, i64 %60)
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @pte_present(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %58
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load i32, i32* %16, align 4
  %71 = call i32 @pte_write(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @pte_dirty(i32 %74)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  br label %78

78:                                               ; preds = %73, %69
  %79 = phi i1 [ true, %69 ], [ %77, %73 ]
  br label %80

80:                                               ; preds = %78, %66
  %81 = phi i1 [ false, %66 ], [ %79, %78 ]
  br label %82

82:                                               ; preds = %80, %58
  %83 = phi i1 [ true, %58 ], [ %81, %80 ]
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 1, i32* %6, align 4
  br label %98

88:                                               ; preds = %82
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @pte_pfn(i32 %89)
  %91 = load i32, i32* @PAGE_SHIFT, align 4
  %92 = shl i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = load i64*, i64** %10, align 8
  store i64 %93, i64* %94, align 8
  %95 = load i32, i32* @PAGE_SHIFT, align 4
  %96 = load i32*, i32** %11, align 8
  store i32 %95, i32* %96, align 4
  store i32 0, i32* %6, align 4
  br label %98

97:                                               ; preds = %57, %47, %37, %27
  store i32 1, i32* %6, align 4
  br label %98

98:                                               ; preds = %97, %88, %87
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32* @pgd_offset(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pgd_none(i32) #1

declare dso_local i32* @p4d_offset(i32*, i64) #1

declare dso_local i32 @p4d_none(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32 @pud_none(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i32 @pte_write(i32) #1

declare dso_local i32 @pte_dirty(i32) #1

declare dso_local i32 @pte_pfn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
