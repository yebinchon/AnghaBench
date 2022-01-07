; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_calculate_sr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_calculate_sr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CXL_PSL_SR_An_MP = common dso_local global i32 0, align 4
@SPRN_LPCR = common dso_local global i32 0, align 4
@LPCR_TC = common dso_local global i32 0, align 4
@CXL_PSL_SR_An_TC = common dso_local global i32 0, align 4
@CXL_PSL_SR_An_R = common dso_local global i32 0, align 4
@MSR_SF = common dso_local global i32 0, align 4
@CXL_PSL_SR_An_HV = common dso_local global i32 0, align 4
@CXL_PSL_SR_An_PR = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TIF_32BIT = common dso_local global i32 0, align 4
@CXL_PSL_SR_An_SF = common dso_local global i32 0, align 4
@CXL_PSL_SR_An_XLAT_ror = common dso_local global i32 0, align 4
@CXL_PSL_SR_An_XLAT_hpt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_calculate_sr(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @set_endian(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32, i32* @CXL_PSL_SR_An_MP, align 4
  %16 = load i32, i32* %9, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %14, %4
  %19 = load i32, i32* @SPRN_LPCR, align 4
  %20 = call i32 @mfspr(i32 %19)
  %21 = load i32, i32* @LPCR_TC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @CXL_PSL_SR_An_TC, align 4
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %24, %18
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @CXL_PSL_SR_An_R, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %34, %31
  %39 = call i32 (...) @mfmsr()
  %40 = load i32, i32* @MSR_SF, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @CXL_PSL_SR_An_HV, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  br label %73

46:                                               ; preds = %28
  %47 = load i32, i32* @CXL_PSL_SR_An_PR, align 4
  %48 = load i32, i32* @CXL_PSL_SR_An_R, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = call i64 (...) @radix_enabled()
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i32, i32* @CXL_PSL_SR_An_HV, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %63

58:                                               ; preds = %46
  %59 = load i32, i32* @CXL_PSL_SR_An_HV, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %58, %54
  %64 = load i32, i32* @current, align 4
  %65 = load i32, i32* @TIF_32BIT, align 4
  %66 = call i32 @test_tsk_thread_flag(i32 %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @CXL_PSL_SR_An_SF, align 4
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %68, %63
  br label %73

73:                                               ; preds = %72, %38
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = call i64 (...) @radix_enabled()
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* @CXL_PSL_SR_An_XLAT_ror, align 4
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %87

83:                                               ; preds = %76
  %84 = load i32, i32* @CXL_PSL_SR_An_XLAT_hpt, align 4
  %85 = load i32, i32* %9, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %83, %79
  br label %88

88:                                               ; preds = %87, %73
  %89 = load i32, i32* %9, align 4
  ret i32 %89
}

declare dso_local i32 @set_endian(i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mfmsr(...) #1

declare dso_local i64 @radix_enabled(...) #1

declare dso_local i32 @test_tsk_thread_flag(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
