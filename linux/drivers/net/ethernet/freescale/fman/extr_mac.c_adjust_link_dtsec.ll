; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_mac.c_adjust_link_dtsec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_mac.c_adjust_link_dtsec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_device = type { %struct.TYPE_2__*, %struct.fman_mac*, %struct.phy_device* }
%struct.TYPE_2__ = type { i32 }
%struct.fman_mac = type { i32 }
%struct.phy_device = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"fman_set_mac_active_pause() = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mac_device*)* @adjust_link_dtsec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_link_dtsec(%struct.mac_device* %0) #0 {
  %2 = alloca %struct.mac_device*, align 8
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.fman_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mac_device* %0, %struct.mac_device** %2, align 8
  %8 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %9 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %8, i32 0, i32 2
  %10 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  store %struct.phy_device* %10, %struct.phy_device** %3, align 8
  %11 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %12 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %11, i32 0, i32 1
  %13 = load %struct.fman_mac*, %struct.fman_mac** %12, align 8
  store %struct.fman_mac* %13, %struct.fman_mac** %4, align 8
  %14 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %15 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.fman_mac*, %struct.fman_mac** %4, align 8
  %20 = call i32 @dtsec_restart_autoneg(%struct.fman_mac* %19)
  br label %43

21:                                               ; preds = %1
  %22 = load %struct.fman_mac*, %struct.fman_mac** %4, align 8
  %23 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %24 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dtsec_adjust_link(%struct.fman_mac* %22, i32 %25)
  %27 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %28 = call i32 @fman_get_pause_cfg(%struct.mac_device* %27, i32* %5, i32* %6)
  %29 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @fman_set_mac_active_pause(%struct.mac_device* %29, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %21
  %36 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %37 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %18, %35, %21
  ret void
}

declare dso_local i32 @dtsec_restart_autoneg(%struct.fman_mac*) #1

declare dso_local i32 @dtsec_adjust_link(%struct.fman_mac*, i32) #1

declare dso_local i32 @fman_get_pause_cfg(%struct.mac_device*, i32*, i32*) #1

declare dso_local i32 @fman_set_mac_active_pause(%struct.mac_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
