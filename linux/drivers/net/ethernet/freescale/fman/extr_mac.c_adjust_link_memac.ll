; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_mac.c_adjust_link_memac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_mac.c_adjust_link_memac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_device = type { %struct.TYPE_2__*, %struct.fman_mac*, %struct.phy_device* }
%struct.TYPE_2__ = type { i32 }
%struct.fman_mac = type { i32 }
%struct.phy_device = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"fman_set_mac_active_pause() = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mac_device*)* @adjust_link_memac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_link_memac(%struct.mac_device* %0) #0 {
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
  %14 = load %struct.fman_mac*, %struct.fman_mac** %4, align 8
  %15 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %16 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @memac_adjust_link(%struct.fman_mac* %14, i32 %17)
  %19 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %20 = call i32 @fman_get_pause_cfg(%struct.mac_device* %19, i32* %5, i32* %6)
  %21 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @fman_set_mac_active_pause(%struct.mac_device* %21, i32 %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %29 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32 @memac_adjust_link(%struct.fman_mac*, i32) #1

declare dso_local i32 @fman_get_pause_cfg(%struct.mac_device*, i32*, i32*) #1

declare dso_local i32 @fman_set_mac_active_pause(%struct.mac_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
