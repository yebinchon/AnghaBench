; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_mac.c_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_mac.c_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_device = type { i32, %struct.mac_priv_s*, %struct.phy_device* }
%struct.mac_priv_s = type { i32 (i32, i32)* }
%struct.phy_device = type { i32 }

@COMM_MODE_RX_AND_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_device*)* @start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start(%struct.mac_device* %0) #0 {
  %2 = alloca %struct.mac_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca %struct.mac_priv_s*, align 8
  store %struct.mac_device* %0, %struct.mac_device** %2, align 8
  %6 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %7 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %6, i32 0, i32 2
  %8 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  store %struct.phy_device* %8, %struct.phy_device** %4, align 8
  %9 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %10 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %9, i32 0, i32 1
  %11 = load %struct.mac_priv_s*, %struct.mac_priv_s** %10, align 8
  store %struct.mac_priv_s* %11, %struct.mac_priv_s** %5, align 8
  %12 = load %struct.mac_priv_s*, %struct.mac_priv_s** %5, align 8
  %13 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %12, i32 0, i32 0
  %14 = load i32 (i32, i32)*, i32 (i32, i32)** %13, align 8
  %15 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %16 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @COMM_MODE_RX_AND_TX, align 4
  %19 = call i32 %14(i32 %17, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %24 = icmp ne %struct.phy_device* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %27 = call i32 @phy_start(%struct.phy_device* %26)
  br label %28

28:                                               ; preds = %25, %22, %1
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @phy_start(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
