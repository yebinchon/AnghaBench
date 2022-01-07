; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_port_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_port_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32 }
%struct.bcm_sf2_priv = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CORE_DIS_LEARN = common dso_local global i32 0, align 4
@CORE_MEM_PSM_VDD_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32)* @bcm_sf2_port_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sf2_port_disable(%struct.dsa_switch* %0, i32 %1) #0 {
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm_sf2_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %8 = call %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch* %7)
  store %struct.bcm_sf2_priv* %8, %struct.bcm_sf2_priv** %5, align 8
  %9 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %5, align 8
  %10 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = shl i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %5, align 8
  %18 = load i32, i32* @CORE_DIS_LEARN, align 4
  %19 = call i32 @core_readl(%struct.bcm_sf2_priv* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @CORE_DIS_LEARN, align 4
  %27 = call i32 @core_writel(%struct.bcm_sf2_priv* %24, i32 %25, i32 %26)
  br label %70

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %5, align 8
  %31 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %5, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @bcm_sf2_port_intr_disable(%struct.bcm_sf2_priv* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %28
  %39 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %5, align 8
  %40 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = shl i32 1, %42
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %5, align 8
  %48 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %54 = call i32 @bcm_sf2_gphy_enable_set(%struct.dsa_switch* %53, i32 0)
  br label %55

55:                                               ; preds = %52, %46, %38
  %56 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @b53_disable_port(%struct.dsa_switch* %56, i32 %57)
  %59 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %5, align 8
  %60 = load i32, i32* @CORE_MEM_PSM_VDD_CTRL, align 4
  %61 = call i32 @core_readl(%struct.bcm_sf2_priv* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @P_TXQ_PSM_VDD(i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @CORE_MEM_PSM_VDD_CTRL, align 4
  %69 = call i32 @core_writel(%struct.bcm_sf2_priv* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %55, %16
  ret void
}

declare dso_local %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch*) #1

declare dso_local i32 @core_readl(%struct.bcm_sf2_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @core_writel(%struct.bcm_sf2_priv*, i32, i32) #1

declare dso_local i32 @bcm_sf2_port_intr_disable(%struct.bcm_sf2_priv*, i32) #1

declare dso_local i32 @bcm_sf2_gphy_enable_set(%struct.dsa_switch*, i32) #1

declare dso_local i32 @b53_disable_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @P_TXQ_PSM_VDD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
