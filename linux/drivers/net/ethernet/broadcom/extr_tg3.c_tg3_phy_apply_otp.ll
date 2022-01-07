; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_apply_otp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_apply_otp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@TG3_OTP_AGCTGT_MASK = common dso_local global i32 0, align 4
@TG3_OTP_AGCTGT_SHIFT = common dso_local global i32 0, align 4
@MII_TG3_DSP_TAP1_AGCTGT_DFLT = common dso_local global i32 0, align 4
@MII_TG3_DSP_TAP1 = common dso_local global i32 0, align 4
@TG3_OTP_HPFFLTR_MASK = common dso_local global i32 0, align 4
@TG3_OTP_HPFFLTR_SHIFT = common dso_local global i32 0, align 4
@TG3_OTP_HPFOVER_MASK = common dso_local global i32 0, align 4
@TG3_OTP_HPFOVER_SHIFT = common dso_local global i32 0, align 4
@MII_TG3_DSP_AADJ1CH0 = common dso_local global i32 0, align 4
@TG3_OTP_LPFDIS_MASK = common dso_local global i32 0, align 4
@TG3_OTP_LPFDIS_SHIFT = common dso_local global i32 0, align 4
@MII_TG3_DSP_AADJ1CH3_ADCCKADJ = common dso_local global i32 0, align 4
@MII_TG3_DSP_AADJ1CH3 = common dso_local global i32 0, align 4
@TG3_OTP_VDAC_MASK = common dso_local global i32 0, align 4
@TG3_OTP_VDAC_SHIFT = common dso_local global i32 0, align 4
@MII_TG3_DSP_EXP75 = common dso_local global i32 0, align 4
@TG3_OTP_10BTAMP_MASK = common dso_local global i32 0, align 4
@TG3_OTP_10BTAMP_SHIFT = common dso_local global i32 0, align 4
@MII_TG3_DSP_EXP96 = common dso_local global i32 0, align 4
@TG3_OTP_ROFF_MASK = common dso_local global i32 0, align 4
@TG3_OTP_ROFF_SHIFT = common dso_local global i32 0, align 4
@TG3_OTP_RCOFF_MASK = common dso_local global i32 0, align 4
@TG3_OTP_RCOFF_SHIFT = common dso_local global i32 0, align 4
@MII_TG3_DSP_EXP97 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_phy_apply_otp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_phy_apply_otp(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %5 = load %struct.tg3*, %struct.tg3** %2, align 8
  %6 = getelementptr inbounds %struct.tg3, %struct.tg3* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %93

10:                                               ; preds = %1
  %11 = load %struct.tg3*, %struct.tg3** %2, align 8
  %12 = getelementptr inbounds %struct.tg3, %struct.tg3* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load %struct.tg3*, %struct.tg3** %2, align 8
  %15 = call i64 @tg3_phy_toggle_auxctl_smdsp(%struct.tg3* %14, i32 1)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %93

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @TG3_OTP_AGCTGT_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @TG3_OTP_AGCTGT_SHIFT, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @MII_TG3_DSP_TAP1_AGCTGT_DFLT, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.tg3*, %struct.tg3** %2, align 8
  %28 = load i32, i32* @MII_TG3_DSP_TAP1, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @tg3_phydsp_write(%struct.tg3* %27, i32 %28, i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @TG3_OTP_HPFFLTR_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @TG3_OTP_HPFFLTR_SHIFT, align 4
  %35 = ashr i32 %33, %34
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @TG3_OTP_HPFOVER_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @TG3_OTP_HPFOVER_SHIFT, align 4
  %40 = ashr i32 %38, %39
  %41 = or i32 %35, %40
  store i32 %41, i32* %4, align 4
  %42 = load %struct.tg3*, %struct.tg3** %2, align 8
  %43 = load i32, i32* @MII_TG3_DSP_AADJ1CH0, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @tg3_phydsp_write(%struct.tg3* %42, i32 %43, i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @TG3_OTP_LPFDIS_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @TG3_OTP_LPFDIS_SHIFT, align 4
  %50 = ashr i32 %48, %49
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @MII_TG3_DSP_AADJ1CH3_ADCCKADJ, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load %struct.tg3*, %struct.tg3** %2, align 8
  %55 = load i32, i32* @MII_TG3_DSP_AADJ1CH3, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @tg3_phydsp_write(%struct.tg3* %54, i32 %55, i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @TG3_OTP_VDAC_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @TG3_OTP_VDAC_SHIFT, align 4
  %62 = ashr i32 %60, %61
  store i32 %62, i32* %4, align 4
  %63 = load %struct.tg3*, %struct.tg3** %2, align 8
  %64 = load i32, i32* @MII_TG3_DSP_EXP75, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @tg3_phydsp_write(%struct.tg3* %63, i32 %64, i32 %65)
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @TG3_OTP_10BTAMP_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @TG3_OTP_10BTAMP_SHIFT, align 4
  %71 = ashr i32 %69, %70
  store i32 %71, i32* %4, align 4
  %72 = load %struct.tg3*, %struct.tg3** %2, align 8
  %73 = load i32, i32* @MII_TG3_DSP_EXP96, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @tg3_phydsp_write(%struct.tg3* %72, i32 %73, i32 %74)
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @TG3_OTP_ROFF_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @TG3_OTP_ROFF_SHIFT, align 4
  %80 = ashr i32 %78, %79
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @TG3_OTP_RCOFF_MASK, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* @TG3_OTP_RCOFF_SHIFT, align 4
  %85 = ashr i32 %83, %84
  %86 = or i32 %80, %85
  store i32 %86, i32* %4, align 4
  %87 = load %struct.tg3*, %struct.tg3** %2, align 8
  %88 = load i32, i32* @MII_TG3_DSP_EXP97, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @tg3_phydsp_write(%struct.tg3* %87, i32 %88, i32 %89)
  %91 = load %struct.tg3*, %struct.tg3** %2, align 8
  %92 = call i64 @tg3_phy_toggle_auxctl_smdsp(%struct.tg3* %91, i32 0)
  br label %93

93:                                               ; preds = %18, %17, %9
  ret void
}

declare dso_local i64 @tg3_phy_toggle_auxctl_smdsp(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_phydsp_write(%struct.tg3*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
