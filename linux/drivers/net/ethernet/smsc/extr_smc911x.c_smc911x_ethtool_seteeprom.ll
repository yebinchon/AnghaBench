; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc911x.c_smc911x_ethtool_seteeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc911x.c_smc911x_ethtool_seteeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32 }

@E2P_CMD_EPC_CMD_EWEN_ = common dso_local global i32 0, align 4
@E2P_CMD_EPC_CMD_ERASE_ = common dso_local global i32 0, align 4
@E2P_CMD_EPC_CMD_WRITE_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @smc911x_ethtool_seteeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc911x_ethtool_seteeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = load i32, i32* @E2P_CMD_EPC_CMD_EWEN_, align 4
  %12 = call i32 @smc911x_ethtool_write_eeprom_cmd(%struct.net_device* %10, i32 %11, i32 0)
  store i32 %12, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %4, align 4
  br label %59

16:                                               ; preds = %3
  %17 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %18 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %55, %16
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %23 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %26 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  %29 = icmp slt i32 %21, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %20
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = load i32, i32* @E2P_CMD_EPC_CMD_ERASE_, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @smc911x_ethtool_write_eeprom_cmd(%struct.net_device* %31, i32 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %59

38:                                               ; preds = %30
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @smc911x_ethtool_write_eeprom_byte(%struct.net_device* %39, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %59

46:                                               ; preds = %38
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = load i32, i32* @E2P_CMD_EPC_CMD_WRITE_, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @smc911x_ethtool_write_eeprom_cmd(%struct.net_device* %47, i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %59

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %20

58:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %52, %44, %36, %14
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @smc911x_ethtool_write_eeprom_cmd(%struct.net_device*, i32, i32) #1

declare dso_local i32 @smc911x_ethtool_write_eeprom_byte(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
