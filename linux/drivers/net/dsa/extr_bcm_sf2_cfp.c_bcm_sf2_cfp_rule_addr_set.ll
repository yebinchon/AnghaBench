; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_rule_addr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_rule_addr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sf2_priv = type { i32 }

@CORE_CFP_ACC = common dso_local global i32 0, align 4
@XCESS_ADDR_MASK = common dso_local global i32 0, align 4
@XCESS_ADDR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_sf2_priv*, i32)* @bcm_sf2_cfp_rule_addr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sf2_cfp_rule_addr_set(%struct.bcm_sf2_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm_sf2_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcm_sf2_priv* %0, %struct.bcm_sf2_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %3, align 8
  %8 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp uge i32 %6, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %3, align 8
  %14 = load i32, i32* @CORE_CFP_ACC, align 4
  %15 = call i32 @core_readl(%struct.bcm_sf2_priv* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @XCESS_ADDR_MASK, align 4
  %17 = load i32, i32* @XCESS_ADDR_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @XCESS_ADDR_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @CORE_CFP_ACC, align 4
  %30 = call i32 @core_writel(%struct.bcm_sf2_priv* %27, i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @core_readl(%struct.bcm_sf2_priv*, i32) #1

declare dso_local i32 @core_writel(%struct.bcm_sf2_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
