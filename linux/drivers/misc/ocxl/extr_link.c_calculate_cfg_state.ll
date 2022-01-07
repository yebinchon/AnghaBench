; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_link.c_calculate_cfg_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_link.c_calculate_cfg_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPA_CFG_DR = common dso_local global i32 0, align 4
@SPRN_LPCR = common dso_local global i32 0, align 4
@LPCR_TC = common dso_local global i32 0, align 4
@SPA_CFG_TC = common dso_local global i32 0, align 4
@SPA_CFG_XLAT_ror = common dso_local global i32 0, align 4
@SPA_CFG_XLAT_hpt = common dso_local global i32 0, align 4
@SPA_CFG_HV = common dso_local global i32 0, align 4
@MSR_SF = common dso_local global i32 0, align 4
@SPA_CFG_SF = common dso_local global i32 0, align 4
@SPA_CFG_PR = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TIF_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @calculate_cfg_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_cfg_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @SPA_CFG_DR, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @SPRN_LPCR, align 4
  %6 = call i32 @mfspr(i32 %5)
  %7 = load i32, i32* @LPCR_TC, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @SPA_CFG_TC, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = call i64 (...) @radix_enabled()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* @SPA_CFG_XLAT_ror, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %25

21:                                               ; preds = %14
  %22 = load i32, i32* @SPA_CFG_XLAT_hpt, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32, i32* @SPA_CFG_HV, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = call i32 (...) @mfmsr()
  %33 = load i32, i32* @MSR_SF, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @SPA_CFG_SF, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %31
  br label %54

41:                                               ; preds = %25
  %42 = load i32, i32* @SPA_CFG_PR, align 4
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @current, align 4
  %46 = load i32, i32* @TIF_32BIT, align 4
  %47 = call i32 @test_tsk_thread_flag(i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* @SPA_CFG_SF, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %41
  br label %54

54:                                               ; preds = %53, %40
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i64 @radix_enabled(...) #1

declare dso_local i32 @mfmsr(...) #1

declare dso_local i32 @test_tsk_thread_flag(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
