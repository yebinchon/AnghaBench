; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851.c_ks8851_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851.c_ks8851_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i64 }
%struct.ks8851_net = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@KS_EEPROM_MAGIC = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @ks8851_set_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks8851_set_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ks8851_net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.ks8851_net* @netdev_priv(%struct.net_device* %12)
  store %struct.ks8851_net* %13, %struct.ks8851_net** %8, align 8
  %14 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %15 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %18 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %80

25:                                               ; preds = %3
  %26 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %27 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @KS_EEPROM_MAGIC, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %80

34:                                               ; preds = %25
  %35 = load %struct.ks8851_net*, %struct.ks8851_net** %8, align 8
  %36 = call i64 @ks8851_eeprom_claim(%struct.ks8851_net* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @ENOENT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %80

41:                                               ; preds = %34
  %42 = load %struct.ks8851_net*, %struct.ks8851_net** %8, align 8
  %43 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %42, i32 0, i32 0
  %44 = call i32 @eeprom_93cx6_wren(i32* %43, i32 1)
  %45 = load %struct.ks8851_net*, %struct.ks8851_net** %8, align 8
  %46 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %45, i32 0, i32 0
  %47 = load i32, i32* %9, align 4
  %48 = sdiv i32 %47, 2
  %49 = call i32 @eeprom_93cx6_read(i32* %46, i32 %48, i32* %11)
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %41
  %54 = load i32, i32* %11, align 4
  %55 = and i32 %54, 255
  store i32 %55, i32* %11, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 8
  %59 = load i32, i32* %11, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %11, align 4
  br label %68

61:                                               ; preds = %41
  %62 = load i32, i32* %11, align 4
  %63 = and i32 %62, 65280
  store i32 %63, i32* %11, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %11, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %61, %53
  %69 = load %struct.ks8851_net*, %struct.ks8851_net** %8, align 8
  %70 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %69, i32 0, i32 0
  %71 = load i32, i32* %9, align 4
  %72 = sdiv i32 %71, 2
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @eeprom_93cx6_write(i32* %70, i32 %72, i32 %73)
  %75 = load %struct.ks8851_net*, %struct.ks8851_net** %8, align 8
  %76 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %75, i32 0, i32 0
  %77 = call i32 @eeprom_93cx6_wren(i32* %76, i32 0)
  %78 = load %struct.ks8851_net*, %struct.ks8851_net** %8, align 8
  %79 = call i32 @ks8851_eeprom_release(%struct.ks8851_net* %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %68, %38, %31, %22
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.ks8851_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ks8851_eeprom_claim(%struct.ks8851_net*) #1

declare dso_local i32 @eeprom_93cx6_wren(i32*, i32) #1

declare dso_local i32 @eeprom_93cx6_read(i32*, i32, i32*) #1

declare dso_local i32 @eeprom_93cx6_write(i32*, i32, i32) #1

declare dso_local i32 @ks8851_eeprom_release(%struct.ks8851_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
