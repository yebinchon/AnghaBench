; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_ethtool.c_lbs_ethtool_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_ethtool.c_lbs_ethtool_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i32 }
%struct.ethtool_eeprom = type { i64, i64 }
%struct.cmd_ds_802_11_eeprom_access = type { i32, i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@LBS_EEPROM_LEN = common dso_local global i64 0, align 8
@LBS_EEPROM_READ_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CMD_ACT_GET = common dso_local global i32 0, align 4
@CMD_802_11_EEPROM_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @lbs_ethtool_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_ethtool_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eeprom*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.lbs_private*, align 8
  %8 = alloca %struct.cmd_ds_802_11_eeprom_access, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  store %struct.lbs_private* %12, %struct.lbs_private** %7, align 8
  %13 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %14 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = load i64, i64* @LBS_EEPROM_LEN, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %3
  %23 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @LBS_EEPROM_READ_LEN, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp sgt i64 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22, %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %74

32:                                               ; preds = %22
  %33 = load i32, i32* @LBS_EEPROM_READ_LEN, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 40, %34
  %36 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %35, %38
  %40 = trunc i64 %39 to i32
  %41 = call i8* @cpu_to_le16(i32 %40)
  %42 = getelementptr inbounds %struct.cmd_ds_802_11_eeprom_access, %struct.cmd_ds_802_11_eeprom_access* %8, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @CMD_ACT_GET, align 4
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = getelementptr inbounds %struct.cmd_ds_802_11_eeprom_access, %struct.cmd_ds_802_11_eeprom_access* %8, i32 0, i32 3
  store i8* %45, i8** %46, align 8
  %47 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i8* @cpu_to_le16(i32 %50)
  %52 = getelementptr inbounds %struct.cmd_ds_802_11_eeprom_access, %struct.cmd_ds_802_11_eeprom_access* %8, i32 0, i32 2
  store i8* %51, i8** %52, align 8
  %53 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i8* @cpu_to_le16(i32 %56)
  %58 = getelementptr inbounds %struct.cmd_ds_802_11_eeprom_access, %struct.cmd_ds_802_11_eeprom_access* %8, i32 0, i32 1
  store i8* %57, i8** %58, align 8
  %59 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %60 = load i32, i32* @CMD_802_11_EEPROM_ACCESS, align 4
  %61 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %59, i32 %60, %struct.cmd_ds_802_11_eeprom_access* %8)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %32
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds %struct.cmd_ds_802_11_eeprom_access, %struct.cmd_ds_802_11_eeprom_access* %8, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @memcpy(i32* %65, i32 %67, i32 %71)
  br label %73

73:                                               ; preds = %64, %32
  br label %74

74:                                               ; preds = %73, %29
  %75 = load i32, i32* %9, align 4
  ret i32 %75
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11_eeprom_access*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
