; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_port_vlan_filtering.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_port_vlan_filtering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.gswip_priv* }
%struct.gswip_priv = type { i32 }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { %struct.net_device* }

@EIO = common dso_local global i32 0, align 4
@GSWIP_PCE_VCTRL_VSR = common dso_local global i32 0, align 4
@GSWIP_PCE_VCTRL_UVR = common dso_local global i32 0, align 4
@GSWIP_PCE_VCTRL_VIMR = common dso_local global i32 0, align 4
@GSWIP_PCE_VCTRL_VEMR = common dso_local global i32 0, align 4
@GSWIP_PCE_PCTRL_0_TVM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, i32)* @gswip_port_vlan_filtering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gswip_port_vlan_filtering(%struct.dsa_switch* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gswip_priv*, align 8
  %9 = alloca %struct.net_device*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %11 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %10, i32 0, i32 0
  %12 = load %struct.gswip_priv*, %struct.gswip_priv** %11, align 8
  store %struct.gswip_priv* %12, %struct.gswip_priv** %8, align 8
  %13 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.TYPE_2__* @dsa_to_port(%struct.dsa_switch* %13, i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %9, align 8
  %18 = load %struct.gswip_priv*, %struct.gswip_priv** %8, align 8
  %19 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load %struct.net_device*, %struct.net_device** %9, align 8
  %32 = icmp ne %struct.net_device* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %72

36:                                               ; preds = %30, %3
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load %struct.gswip_priv*, %struct.gswip_priv** %8, align 8
  %41 = load i32, i32* @GSWIP_PCE_VCTRL_VSR, align 4
  %42 = load i32, i32* @GSWIP_PCE_VCTRL_UVR, align 4
  %43 = load i32, i32* @GSWIP_PCE_VCTRL_VIMR, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @GSWIP_PCE_VCTRL_VEMR, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @GSWIP_PCE_VCTRL(i32 %47)
  %49 = call i32 @gswip_switch_mask(%struct.gswip_priv* %40, i32 %41, i32 %46, i32 %48)
  %50 = load %struct.gswip_priv*, %struct.gswip_priv** %8, align 8
  %51 = load i32, i32* @GSWIP_PCE_PCTRL_0_TVM, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @GSWIP_PCE_PCTRL_0p(i32 %52)
  %54 = call i32 @gswip_switch_mask(%struct.gswip_priv* %50, i32 %51, i32 0, i32 %53)
  br label %71

55:                                               ; preds = %36
  %56 = load %struct.gswip_priv*, %struct.gswip_priv** %8, align 8
  %57 = load i32, i32* @GSWIP_PCE_VCTRL_UVR, align 4
  %58 = load i32, i32* @GSWIP_PCE_VCTRL_VIMR, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @GSWIP_PCE_VCTRL_VEMR, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @GSWIP_PCE_VCTRL_VSR, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @GSWIP_PCE_VCTRL(i32 %63)
  %65 = call i32 @gswip_switch_mask(%struct.gswip_priv* %56, i32 %61, i32 %62, i32 %64)
  %66 = load %struct.gswip_priv*, %struct.gswip_priv** %8, align 8
  %67 = load i32, i32* @GSWIP_PCE_PCTRL_0_TVM, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @GSWIP_PCE_PCTRL_0p(i32 %68)
  %70 = call i32 @gswip_switch_mask(%struct.gswip_priv* %66, i32 0, i32 %67, i32 %69)
  br label %71

71:                                               ; preds = %55, %39
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %33
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.TYPE_2__* @dsa_to_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @gswip_switch_mask(%struct.gswip_priv*, i32, i32, i32) #1

declare dso_local i32 @GSWIP_PCE_VCTRL(i32) #1

declare dso_local i32 @GSWIP_PCE_PCTRL_0p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
