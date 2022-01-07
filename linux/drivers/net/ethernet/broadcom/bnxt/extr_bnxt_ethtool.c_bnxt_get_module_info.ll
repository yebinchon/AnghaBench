; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_module_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_module_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_modinfo = type { i8*, i32 }
%struct.bnxt = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SFF_DIAG_SUPPORT_OFFSET = common dso_local global i32 0, align 4
@PORT_PHY_QCFG_RESP_MODULE_STATUS_WARNINGMSG = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@I2C_DEV_ADDR_A0 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8472 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8472_LEN = common dso_local global i8* null, align 8
@ETH_MODULE_SFF_8436_LEN = common dso_local global i8* null, align 8
@ETH_MODULE_SFF_8436 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8636 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8636_LEN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_modinfo*)* @bnxt_get_module_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_get_module_info(%struct.net_device* %0, %struct.ethtool_modinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_modinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bnxt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_modinfo* %1, %struct.ethtool_modinfo** %5, align 8
  %13 = load i32, i32* @SFF_DIAG_SUPPORT_OFFSET, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call %struct.bnxt* @netdev_priv(%struct.net_device* %18)
  store %struct.bnxt* %19, %struct.bnxt** %8, align 8
  %20 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %21 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PORT_PHY_QCFG_RESP_MODULE_STATUS_WARNINGMSG, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %87

29:                                               ; preds = %2
  %30 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %31 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 66050
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %87

37:                                               ; preds = %29
  %38 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %39 = load i32, i32* @I2C_DEV_ADDR_A0, align 4
  %40 = load i32, i32* @SFF_DIAG_SUPPORT_OFFSET, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32 @bnxt_read_sfp_module_eeprom_info(%struct.bnxt* %38, i32 %39, i32 0, i32 0, i32 %41, i32* %17)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %85, label %45

45:                                               ; preds = %37
  %46 = getelementptr inbounds i32, i32* %17, i64 0
  %47 = load i32, i32* %46, align 16
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* @SFF_DIAG_SUPPORT_OFFSET, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %17, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  switch i32 %52, label %81 [
    i32 128, label %53
    i32 131, label %67
    i32 129, label %67
    i32 130, label %74
  ]

53:                                               ; preds = %45
  %54 = load i32, i32* @ETH_MODULE_SFF_8472, align 4
  %55 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load i8*, i8** @ETH_MODULE_SFF_8472_LEN, align 8
  %58 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %53
  %63 = load i8*, i8** @ETH_MODULE_SFF_8436_LEN, align 8
  %64 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %62, %53
  br label %84

67:                                               ; preds = %45, %45
  %68 = load i32, i32* @ETH_MODULE_SFF_8436, align 4
  %69 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %70 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load i8*, i8** @ETH_MODULE_SFF_8436_LEN, align 8
  %72 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %73 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %84

74:                                               ; preds = %45
  %75 = load i32, i32* @ETH_MODULE_SFF_8636, align 4
  %76 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %77 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load i8*, i8** @ETH_MODULE_SFF_8636_LEN, align 8
  %79 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %80 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  br label %84

81:                                               ; preds = %45
  %82 = load i32, i32* @EOPNOTSUPP, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %81, %74, %67, %66
  br label %85

85:                                               ; preds = %84, %37
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %87

87:                                               ; preds = %85, %34, %26
  %88 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #2

declare dso_local i32 @bnxt_read_sfp_module_eeprom_info(%struct.bnxt*, i32, i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
