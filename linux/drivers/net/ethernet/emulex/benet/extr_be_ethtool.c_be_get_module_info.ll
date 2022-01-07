; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_get_module_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_get_module_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_modinfo = type { i32, i32 }
%struct.be_adapter = type { i32 }

@PAGE_DATA_LEN = common dso_local global i32 0, align 4
@MAX_PRIVILEGES = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TR_PAGE_A0 = common dso_local global i32 0, align 4
@SFP_PLUS_SFF_8472_COMP = common dso_local global i64 0, align 8
@ETH_MODULE_SFF_8079 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8472 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_modinfo*)* @be_get_module_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_get_module_info(%struct.net_device* %0, %struct.ethtool_modinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_modinfo*, align 8
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_modinfo* %1, %struct.ethtool_modinfo** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.be_adapter* %12, %struct.be_adapter** %6, align 8
  %13 = load i32, i32* @PAGE_DATA_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %18 = load i32, i32* @MAX_PRIVILEGES, align 4
  %19 = call i32 @check_privilege(%struct.be_adapter* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %54

24:                                               ; preds = %2
  %25 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %26 = load i32, i32* @TR_PAGE_A0, align 4
  %27 = call i32 @be_cmd_read_port_transceiver_data(%struct.be_adapter* %25, i32 %26, i32* %16)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %24
  %31 = load i64, i64* @SFP_PLUS_SFF_8472_COMP, align 8
  %32 = getelementptr inbounds i32, i32* %16, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ETH_MODULE_SFF_8079, align 4
  %37 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @PAGE_DATA_LEN, align 4
  %40 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %50

42:                                               ; preds = %30
  %43 = load i32, i32* @ETH_MODULE_SFF_8472, align 4
  %44 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @PAGE_DATA_LEN, align 4
  %47 = mul nsw i32 2, %46
  %48 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %49 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %42, %35
  br label %51

51:                                               ; preds = %50, %24
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @be_cmd_status(i32 %52)
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %54

54:                                               ; preds = %51, %21
  %55 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @check_privilege(%struct.be_adapter*, i32) #1

declare dso_local i32 @be_cmd_read_port_transceiver_data(%struct.be_adapter*, i32, i32*) #1

declare dso_local i32 @be_cmd_status(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
