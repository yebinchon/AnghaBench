; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_enable_aspm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_enable_aspm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_hw = type { i32 }

@ALX_PMCTRL = common dso_local global i32 0, align 4
@ALX_PMCTRL_LCKDET_TIMER = common dso_local global i32 0, align 4
@ALX_PMCTRL_LCKDET_TIMER_DEF = common dso_local global i32 0, align 4
@ALX_PMCTRL_RCVR_WT_1US = common dso_local global i32 0, align 4
@ALX_PMCTRL_L1_CLKSW_EN = common dso_local global i32 0, align 4
@ALX_PMCTRL_L1_SRDSRX_PWD = common dso_local global i32 0, align 4
@ALX_PMCTRL_L1REQ_TO = common dso_local global i32 0, align 4
@ALX_PMCTRL_L1REG_TO_DEF = common dso_local global i32 0, align 4
@ALX_PMCTRL_L1_TIMER = common dso_local global i32 0, align 4
@ALX_PMCTRL_L1_TIMER_16US = common dso_local global i32 0, align 4
@ALX_PMCTRL_L1_SRDS_EN = common dso_local global i32 0, align 4
@ALX_PMCTRL_L1_SRDSPLL_EN = common dso_local global i32 0, align 4
@ALX_PMCTRL_L1_BUFSRX_EN = common dso_local global i32 0, align 4
@ALX_PMCTRL_SADLY_EN = common dso_local global i32 0, align 4
@ALX_PMCTRL_HOTRST_WTEN = common dso_local global i32 0, align 4
@ALX_PMCTRL_L0S_EN = common dso_local global i32 0, align 4
@ALX_PMCTRL_L1_EN = common dso_local global i32 0, align 4
@ALX_PMCTRL_ASPM_FCEN = common dso_local global i32 0, align 4
@ALX_PMCTRL_TXL1_AFTER_L0S = common dso_local global i32 0, align 4
@ALX_PMCTRL_RXL1_AFTER_L0S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alx_enable_aspm(%struct.alx_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.alx_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.alx_hw* %0, %struct.alx_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %10 = call i32 @alx_hw_revision(%struct.alx_hw* %9)
  store i32 %10, i32* %8, align 4
  %11 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %12 = load i32, i32* @ALX_PMCTRL, align 4
  %13 = call i32 @alx_read_mem32(%struct.alx_hw* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @ALX_PMCTRL_LCKDET_TIMER, align 4
  %16 = load i32, i32* @ALX_PMCTRL_LCKDET_TIMER_DEF, align 4
  %17 = call i32 @ALX_SET_FIELD(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @ALX_PMCTRL_RCVR_WT_1US, align 4
  %19 = load i32, i32* @ALX_PMCTRL_L1_CLKSW_EN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @ALX_PMCTRL_L1_SRDSRX_PWD, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @ALX_PMCTRL_L1REQ_TO, align 4
  %27 = load i32, i32* @ALX_PMCTRL_L1REG_TO_DEF, align 4
  %28 = call i32 @ALX_SET_FIELD(i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @ALX_PMCTRL_L1_TIMER, align 4
  %31 = load i32, i32* @ALX_PMCTRL_L1_TIMER_16US, align 4
  %32 = call i32 @ALX_SET_FIELD(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* @ALX_PMCTRL_L1_SRDS_EN, align 4
  %34 = load i32, i32* @ALX_PMCTRL_L1_SRDSPLL_EN, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ALX_PMCTRL_L1_BUFSRX_EN, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @ALX_PMCTRL_SADLY_EN, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @ALX_PMCTRL_HOTRST_WTEN, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @ALX_PMCTRL_L0S_EN, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @ALX_PMCTRL_L1_EN, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @ALX_PMCTRL_ASPM_FCEN, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @ALX_PMCTRL_TXL1_AFTER_L0S, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @ALX_PMCTRL_RXL1_AFTER_L0S, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i64 @alx_is_rev_a(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %3
  %59 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %60 = call i64 @alx_hw_with_cr(%struct.alx_hw* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i32, i32* @ALX_PMCTRL_L1_SRDS_EN, align 4
  %64 = load i32, i32* @ALX_PMCTRL_L1_SRDSPLL_EN, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %62, %58, %3
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32, i32* @ALX_PMCTRL_L0S_EN, align 4
  %73 = load i32, i32* @ALX_PMCTRL_ASPM_FCEN, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %71, %68
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i32, i32* @ALX_PMCTRL_L1_EN, align 4
  %82 = load i32, i32* @ALX_PMCTRL_ASPM_FCEN, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %80, %77
  %87 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %88 = load i32, i32* @ALX_PMCTRL, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @alx_write_mem32(%struct.alx_hw* %87, i32 %88, i32 %89)
  ret void
}

declare dso_local i32 @alx_hw_revision(%struct.alx_hw*) #1

declare dso_local i32 @alx_read_mem32(%struct.alx_hw*, i32) #1

declare dso_local i32 @ALX_SET_FIELD(i32, i32, i32) #1

declare dso_local i64 @alx_is_rev_a(i32) #1

declare dso_local i64 @alx_hw_with_cr(%struct.alx_hw*) #1

declare dso_local i32 @alx_write_mem32(%struct.alx_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
