; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i64, i32, i32 }
%struct.sky2_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCI_CAP_ID_VPD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SKY2_EEPROM_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @sky2_set_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_set_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sky2_port*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %10)
  store %struct.sky2_port* %11, %struct.sky2_port** %8, align 8
  %12 = load %struct.sky2_port*, %struct.sky2_port** %8, align 8
  %13 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PCI_CAP_ID_VPD, align 4
  %18 = call i32 @pci_find_capability(i32 %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %61

24:                                               ; preds = %3
  %25 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %26 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SKY2_EEPROM_MAGIC, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %61

33:                                               ; preds = %24
  %34 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %35 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 3
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %41 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 3
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39, %33
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %61

48:                                               ; preds = %39
  %49 = load %struct.sky2_port*, %struct.sky2_port** %8, align 8
  %50 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %55 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %58 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @sky2_vpd_write(%struct.TYPE_2__* %51, i32 %52, i32* %53, i32 %56, i32 %59)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %48, %45, %30, %21
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pci_find_capability(i32, i32) #1

declare dso_local i32 @sky2_vpd_write(%struct.TYPE_2__*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
