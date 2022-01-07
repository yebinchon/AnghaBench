; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_main.c_arc_emac_set_address_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_main.c_arc_emac_set_address_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.arc_emac_priv = type { i32 }

@R_ADDRL = common dso_local global i32 0, align 4
@R_ADDRH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @arc_emac_set_address_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_emac_set_address_internal(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.arc_emac_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.arc_emac_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.arc_emac_priv* %7, %struct.arc_emac_priv** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le32_to_cpu(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le16_to_cpu(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %21 = load i32, i32* @R_ADDRL, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @arc_reg_set(%struct.arc_emac_priv* %20, i32 %21, i32 %22)
  %24 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %25 = load i32, i32* @R_ADDRH, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @arc_reg_set(%struct.arc_emac_priv* %24, i32 %25, i32 %26)
  ret void
}

declare dso_local %struct.arc_emac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @arc_reg_set(%struct.arc_emac_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
