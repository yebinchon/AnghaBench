; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851.c_ks8851_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851.c_ks8851_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.ks8851_net = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@KS_EEPROM_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @ks8851_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks8851_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ks8851_net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.ks8851_net* @netdev_priv(%struct.net_device* %11)
  store %struct.ks8851_net* %12, %struct.ks8851_net** %8, align 8
  %13 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %14 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %17 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %50

29:                                               ; preds = %22
  %30 = load %struct.ks8851_net*, %struct.ks8851_net** %8, align 8
  %31 = call i64 @ks8851_eeprom_claim(%struct.ks8851_net* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %50

36:                                               ; preds = %29
  %37 = load i32, i32* @KS_EEPROM_MAGIC, align 4
  %38 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %39 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ks8851_net*, %struct.ks8851_net** %8, align 8
  %41 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %40, i32 0, i32 0
  %42 = load i32, i32* %9, align 4
  %43 = sdiv i32 %42, 2
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sdiv i32 %45, 2
  %47 = call i32 @eeprom_93cx6_multiread(i32* %41, i32 %43, i32* %44, i32 %46)
  %48 = load %struct.ks8851_net*, %struct.ks8851_net** %8, align 8
  %49 = call i32 @ks8851_eeprom_release(%struct.ks8851_net* %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %36, %33, %26
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.ks8851_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ks8851_eeprom_claim(%struct.ks8851_net*) #1

declare dso_local i32 @eeprom_93cx6_multiread(i32*, i32, i32*, i32) #1

declare dso_local i32 @ks8851_eeprom_release(%struct.ks8851_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
