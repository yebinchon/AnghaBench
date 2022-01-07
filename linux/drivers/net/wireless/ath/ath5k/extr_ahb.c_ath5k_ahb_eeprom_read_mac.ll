; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_ahb.c_ath5k_ahb_eeprom_read_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_ahb.c_ath5k_ahb_eeprom_read_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }
%struct.platform_device = type { i64, i32 }
%struct.ar231x_board_config = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, i32*)* @ath5k_ahb_eeprom_read_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_ahb_eeprom_read_mac(%struct.ath5k_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.ar231x_board_config*, align 8
  %7 = alloca i32*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.platform_device* @to_platform_device(i32 %10)
  store %struct.platform_device* %11, %struct.platform_device** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 1
  %14 = call %struct.ar231x_board_config* @dev_get_platdata(i32* %13)
  store %struct.ar231x_board_config* %14, %struct.ar231x_board_config** %6, align 8
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.platform_device* @to_platform_device(i32 %17)
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.ar231x_board_config*, %struct.ar231x_board_config** %6, align 8
  %24 = getelementptr inbounds %struct.ar231x_board_config, %struct.ar231x_board_config* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %7, align 8
  br label %34

28:                                               ; preds = %2
  %29 = load %struct.ar231x_board_config*, %struct.ar231x_board_config** %6, align 8
  %30 = getelementptr inbounds %struct.ar231x_board_config, %struct.ar231x_board_config* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %7, align 8
  br label %34

34:                                               ; preds = %28, %22
  %35 = load i32*, i32** %4, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = call i32 @memcpy(i32* %35, i32* %36, i32 %37)
  ret i32 0
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.ar231x_board_config* @dev_get_platdata(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
