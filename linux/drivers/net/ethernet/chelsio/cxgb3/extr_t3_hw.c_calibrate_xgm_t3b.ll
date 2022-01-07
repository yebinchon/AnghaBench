; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_calibrate_xgm_t3b.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_calibrate_xgm_t3b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@A_XGM_RGMII_IMP = common dso_local global i32 0, align 4
@F_CALRESET = common dso_local global i32 0, align 4
@F_CALUPDATE = common dso_local global i32 0, align 4
@F_XGM_IMPSETUPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @calibrate_xgm_t3b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calibrate_xgm_t3b(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %3 = load %struct.adapter*, %struct.adapter** %2, align 8
  %4 = call i32 @uses_xaui(%struct.adapter* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %37, label %6

6:                                                ; preds = %1
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = load i32, i32* @A_XGM_RGMII_IMP, align 4
  %9 = load i32, i32* @F_CALRESET, align 4
  %10 = load i32, i32* @F_CALUPDATE, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @V_RGMIIIMPPD(i32 2)
  %13 = or i32 %11, %12
  %14 = call i32 @V_RGMIIIMPPU(i32 3)
  %15 = or i32 %13, %14
  %16 = call i32 @t3_write_reg(%struct.adapter* %7, i32 %8, i32 %15)
  %17 = load %struct.adapter*, %struct.adapter** %2, align 8
  %18 = load i32, i32* @A_XGM_RGMII_IMP, align 4
  %19 = load i32, i32* @F_CALRESET, align 4
  %20 = call i32 @t3_set_reg_field(%struct.adapter* %17, i32 %18, i32 %19, i32 0)
  %21 = load %struct.adapter*, %struct.adapter** %2, align 8
  %22 = load i32, i32* @A_XGM_RGMII_IMP, align 4
  %23 = load i32, i32* @F_XGM_IMPSETUPDATE, align 4
  %24 = call i32 @t3_set_reg_field(%struct.adapter* %21, i32 %22, i32 0, i32 %23)
  %25 = load %struct.adapter*, %struct.adapter** %2, align 8
  %26 = load i32, i32* @A_XGM_RGMII_IMP, align 4
  %27 = load i32, i32* @F_XGM_IMPSETUPDATE, align 4
  %28 = call i32 @t3_set_reg_field(%struct.adapter* %25, i32 %26, i32 %27, i32 0)
  %29 = load %struct.adapter*, %struct.adapter** %2, align 8
  %30 = load i32, i32* @A_XGM_RGMII_IMP, align 4
  %31 = load i32, i32* @F_CALUPDATE, align 4
  %32 = call i32 @t3_set_reg_field(%struct.adapter* %29, i32 %30, i32 %31, i32 0)
  %33 = load %struct.adapter*, %struct.adapter** %2, align 8
  %34 = load i32, i32* @A_XGM_RGMII_IMP, align 4
  %35 = load i32, i32* @F_CALUPDATE, align 4
  %36 = call i32 @t3_set_reg_field(%struct.adapter* %33, i32 %34, i32 0, i32 %35)
  br label %37

37:                                               ; preds = %6, %1
  ret void
}

declare dso_local i32 @uses_xaui(%struct.adapter*) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_RGMIIIMPPD(i32) #1

declare dso_local i32 @V_RGMIIIMPPU(i32) #1

declare dso_local i32 @t3_set_reg_field(%struct.adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
