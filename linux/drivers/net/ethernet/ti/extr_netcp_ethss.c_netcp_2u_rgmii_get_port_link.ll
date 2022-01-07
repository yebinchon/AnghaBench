; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_netcp_2u_rgmii_get_port_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_netcp_2u_rgmii_get_port_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbe_priv = type { i32 }

@ss_regs = common dso_local global i32 0, align 4
@rgmii_status = common dso_local global i32 0, align 4
@RGMII_REG_STATUS_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gbe_priv*, i32*)* @netcp_2u_rgmii_get_port_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netcp_2u_rgmii_get_port_link(%struct.gbe_priv* %0, i32* %1) #0 {
  %3 = alloca %struct.gbe_priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.gbe_priv* %0, %struct.gbe_priv** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.gbe_priv*, %struct.gbe_priv** %3, align 8
  %7 = load i32, i32* @ss_regs, align 4
  %8 = load i32, i32* @rgmii_status, align 4
  %9 = call i32 @GBE_REG_ADDR(%struct.gbe_priv* %6, i32 %7, i32 %8)
  %10 = call i32 @readl(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @RGMII_REG_STATUS_LINK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load i32*, i32** %4, align 8
  store i32 %17, i32* %18, align 4
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @GBE_REG_ADDR(%struct.gbe_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
