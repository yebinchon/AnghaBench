; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_get_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_get_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i64, i64 }
%struct.be_adapter = type { i32 }

@MAX_PRIVILEGES = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TR_PAGE_A0 = common dso_local global i32 0, align 4
@PAGE_DATA_LEN = common dso_local global i64 0, align 8
@TR_PAGE_A2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @be_get_module_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_get_module_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.be_adapter*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.be_adapter* %11, %struct.be_adapter** %8, align 8
  %12 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %13 = load i32, i32* @MAX_PRIVILEGES, align 4
  %14 = call i32 @check_privilege(%struct.be_adapter* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %68

19:                                               ; preds = %3
  %20 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %21 = load i32, i32* @TR_PAGE_A0, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @be_cmd_read_port_transceiver_data(%struct.be_adapter* %20, i32 %21, i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %65

27:                                               ; preds = %19
  %28 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %29 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %32 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load i64, i64* @PAGE_DATA_LEN, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %27
  %38 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %39 = load i32, i32* @TR_PAGE_A2, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i64, i64* @PAGE_DATA_LEN, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = call i32 @be_cmd_read_port_transceiver_data(%struct.be_adapter* %38, i32 %39, i32* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %65

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %27
  %49 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %50 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %57 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %61 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @memcpy(i32* %54, i32* %59, i64 %62)
  br label %64

64:                                               ; preds = %53, %48
  br label %65

65:                                               ; preds = %64, %46, %26
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @be_cmd_status(i32 %66)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %65, %16
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @check_privilege(%struct.be_adapter*, i32) #1

declare dso_local i32 @be_cmd_read_port_transceiver_data(%struct.be_adapter*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @be_cmd_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
