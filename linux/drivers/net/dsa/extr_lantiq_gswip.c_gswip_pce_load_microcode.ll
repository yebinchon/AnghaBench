; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_pce_load_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_pce_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.gswip_priv = type { i32 }

@GSWIP_PCE_TBL_CTRL_ADDR_MASK = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_CTRL_OPMOD_MASK = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_CTRL_OPMOD_ADWR = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_CTRL = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_MASK = common dso_local global i32 0, align 4
@gswip_pce_microcode = common dso_local global %struct.TYPE_3__* null, align 8
@GSWIP_PCE_TBL_ADDR = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_CTRL_BAS = common dso_local global i32 0, align 4
@GSWIP_PCE_GCTRL_0_MC_VALID = common dso_local global i32 0, align 4
@GSWIP_PCE_GCTRL_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gswip_priv*)* @gswip_pce_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gswip_pce_load_microcode(%struct.gswip_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gswip_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gswip_priv* %0, %struct.gswip_priv** %3, align 8
  %6 = load %struct.gswip_priv*, %struct.gswip_priv** %3, align 8
  %7 = load i32, i32* @GSWIP_PCE_TBL_CTRL_ADDR_MASK, align 4
  %8 = load i32, i32* @GSWIP_PCE_TBL_CTRL_OPMOD_MASK, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @GSWIP_PCE_TBL_CTRL_OPMOD_ADWR, align 4
  %11 = load i32, i32* @GSWIP_PCE_TBL_CTRL, align 4
  %12 = call i32 @gswip_switch_mask(%struct.gswip_priv* %6, i32 %9, i32 %10, i32 %11)
  %13 = load %struct.gswip_priv*, %struct.gswip_priv** %3, align 8
  %14 = load i32, i32* @GSWIP_PCE_TBL_MASK, align 4
  %15 = call i32 @gswip_switch_w(%struct.gswip_priv* %13, i32 0, i32 %14)
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %75, %1
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gswip_pce_microcode, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %78

21:                                               ; preds = %16
  %22 = load %struct.gswip_priv*, %struct.gswip_priv** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @GSWIP_PCE_TBL_ADDR, align 4
  %25 = call i32 @gswip_switch_w(%struct.gswip_priv* %22, i32 %23, i32 %24)
  %26 = load %struct.gswip_priv*, %struct.gswip_priv** %3, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gswip_pce_microcode, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @GSWIP_PCE_TBL_VAL(i32 0)
  %34 = call i32 @gswip_switch_w(%struct.gswip_priv* %26, i32 %32, i32 %33)
  %35 = load %struct.gswip_priv*, %struct.gswip_priv** %3, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gswip_pce_microcode, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @GSWIP_PCE_TBL_VAL(i32 1)
  %43 = call i32 @gswip_switch_w(%struct.gswip_priv* %35, i32 %41, i32 %42)
  %44 = load %struct.gswip_priv*, %struct.gswip_priv** %3, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gswip_pce_microcode, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @GSWIP_PCE_TBL_VAL(i32 2)
  %52 = call i32 @gswip_switch_w(%struct.gswip_priv* %44, i32 %50, i32 %51)
  %53 = load %struct.gswip_priv*, %struct.gswip_priv** %3, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gswip_pce_microcode, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @GSWIP_PCE_TBL_VAL(i32 3)
  %61 = call i32 @gswip_switch_w(%struct.gswip_priv* %53, i32 %59, i32 %60)
  %62 = load %struct.gswip_priv*, %struct.gswip_priv** %3, align 8
  %63 = load i32, i32* @GSWIP_PCE_TBL_CTRL_BAS, align 4
  %64 = load i32, i32* @GSWIP_PCE_TBL_CTRL, align 4
  %65 = call i32 @gswip_switch_mask(%struct.gswip_priv* %62, i32 0, i32 %63, i32 %64)
  %66 = load %struct.gswip_priv*, %struct.gswip_priv** %3, align 8
  %67 = load i32, i32* @GSWIP_PCE_TBL_CTRL, align 4
  %68 = load i32, i32* @GSWIP_PCE_TBL_CTRL_BAS, align 4
  %69 = call i32 @gswip_switch_r_timeout(%struct.gswip_priv* %66, i32 %67, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %21
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %83

74:                                               ; preds = %21
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %16

78:                                               ; preds = %16
  %79 = load %struct.gswip_priv*, %struct.gswip_priv** %3, align 8
  %80 = load i32, i32* @GSWIP_PCE_GCTRL_0_MC_VALID, align 4
  %81 = load i32, i32* @GSWIP_PCE_GCTRL_0, align 4
  %82 = call i32 @gswip_switch_mask(%struct.gswip_priv* %79, i32 0, i32 %80, i32 %81)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %78, %72
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @gswip_switch_mask(%struct.gswip_priv*, i32, i32, i32) #1

declare dso_local i32 @gswip_switch_w(%struct.gswip_priv*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @GSWIP_PCE_TBL_VAL(i32) #1

declare dso_local i32 @gswip_switch_r_timeout(%struct.gswip_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
