; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_act_pol_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_act_pol_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sf2_priv = type { i32 }

@CHANGE_FWRD_MAP_IB_REP_ARL = common dso_local global i32 0, align 4
@DST_MAP_IB_SHIFT = common dso_local global i64 0, align 8
@CHANGE_TC = common dso_local global i32 0, align 4
@NEW_TC_SHIFT = common dso_local global i32 0, align 4
@LOOP_BK_EN = common dso_local global i32 0, align 4
@CORE_ACT_POL_DATA0 = common dso_local global i32 0, align 4
@CHAIN_ID_SHIFT = common dso_local global i32 0, align 4
@CORE_ACT_POL_DATA1 = common dso_local global i32 0, align 4
@CORE_ACT_POL_DATA2 = common dso_local global i32 0, align 4
@OP_SEL_WRITE = common dso_local global i32 0, align 4
@ACT_POL_RAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Policer entry at %d failed\0A\00", align 1
@POLICER_MODE_DISABLE = common dso_local global i32 0, align 4
@CORE_RATE_METER0 = common dso_local global i32 0, align 4
@RATE_METER_RAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Meter entry at %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_sf2_priv*, i32, i32, i32, i32, i32)* @bcm_sf2_cfp_act_pol_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sf2_cfp_act_pol_set(%struct.bcm_sf2_priv* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bcm_sf2_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bcm_sf2_priv* %0, %struct.bcm_sf2_priv** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %6
  %19 = load i32, i32* @CHANGE_FWRD_MAP_IB_REP_ARL, align 4
  %20 = load i32, i32* %11, align 4
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* @DST_MAP_IB_SHIFT, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @BIT(i64 %23)
  %25 = or i32 %19, %24
  %26 = load i32, i32* @CHANGE_TC, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @NEW_TC_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %27, %30
  store i32 %31, i32* %15, align 4
  br label %33

32:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %32, %18
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @LOOP_BK_EN, align 4
  %39 = load i32, i32* %15, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %8, align 8
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* @CORE_ACT_POL_DATA0, align 4
  %45 = call i32 @core_writel(%struct.bcm_sf2_priv* %42, i32 %43, i32 %44)
  %46 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @CHAIN_ID_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* @CORE_ACT_POL_DATA1, align 4
  %51 = call i32 @core_writel(%struct.bcm_sf2_priv* %46, i32 %49, i32 %50)
  %52 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %8, align 8
  %53 = load i32, i32* @CORE_ACT_POL_DATA2, align 4
  %54 = call i32 @core_writel(%struct.bcm_sf2_priv* %52, i32 0, i32 %53)
  %55 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %8, align 8
  %56 = load i32, i32* @OP_SEL_WRITE, align 4
  %57 = load i32, i32* @ACT_POL_RAM, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @bcm_sf2_cfp_op(%struct.bcm_sf2_priv* %55, i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %41
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %7, align 4
  br label %83

66:                                               ; preds = %41
  %67 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %8, align 8
  %68 = load i32, i32* @POLICER_MODE_DISABLE, align 4
  %69 = load i32, i32* @CORE_RATE_METER0, align 4
  %70 = call i32 @core_writel(%struct.bcm_sf2_priv* %67, i32 %68, i32 %69)
  %71 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %8, align 8
  %72 = load i32, i32* @OP_SEL_WRITE, align 4
  %73 = load i32, i32* @RATE_METER_RAM, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @bcm_sf2_cfp_op(%struct.bcm_sf2_priv* %71, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %66
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %7, align 4
  br label %83

82:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %82, %78, %62
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @core_writel(%struct.bcm_sf2_priv*, i32, i32) #1

declare dso_local i32 @bcm_sf2_cfp_op(%struct.bcm_sf2_priv*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
