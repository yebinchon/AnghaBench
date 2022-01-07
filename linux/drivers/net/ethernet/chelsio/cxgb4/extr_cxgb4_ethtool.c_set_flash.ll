; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_set_flash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_set_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_flash = type { i8* }
%struct.firmware = type { i32, i32 }
%struct.adapter = type { i32, i32, i32, i32 }

@PCIE_FW_MASTER_M = common dso_local global i32 0, align 4
@PCIE_FW_A = common dso_local global i32 0, align 4
@PCIE_FW_MASTER_VLD_F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"cxgb4 driver needs to be loaded as MASTER to support FW flash\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CXGB4_FULL_INIT_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"loaded firmware %s, reload cxgb4 driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_flash*)* @set_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_flash(%struct.net_device* %0, %struct.ethtool_flash* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_flash*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_flash* %1, %struct.ethtool_flash** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.adapter* @netdev2adap(%struct.net_device* %13)
  store %struct.adapter* %14, %struct.adapter** %8, align 8
  %15 = load i32, i32* @PCIE_FW_MASTER_M, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %17 = load %struct.adapter*, %struct.adapter** %8, align 8
  %18 = load i32, i32* @PCIE_FW_A, align 4
  %19 = call i32 @t4_read_reg(%struct.adapter* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @PCIE_FW_MASTER_G(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @PCIE_FW_MASTER_VLD_F, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 1, i32* %12, align 4
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.adapter*, %struct.adapter** %8, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.adapter*, %struct.adapter** %8, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_warn(i32 %39, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %94

43:                                               ; preds = %30, %27
  %44 = load %struct.ethtool_flash*, %struct.ethtool_flash** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_flash, %struct.ethtool_flash* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 7
  store i8 0, i8* %47, align 1
  %48 = load %struct.ethtool_flash*, %struct.ethtool_flash** %5, align 8
  %49 = getelementptr inbounds %struct.ethtool_flash, %struct.ethtool_flash* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.adapter*, %struct.adapter** %8, align 8
  %52 = getelementptr inbounds %struct.adapter, %struct.adapter* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @request_firmware(%struct.firmware** %7, i8* %50, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %94

59:                                               ; preds = %43
  %60 = load %struct.adapter*, %struct.adapter** %8, align 8
  %61 = getelementptr inbounds %struct.adapter, %struct.adapter* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @CXGB4_FULL_INIT_DONE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.adapter*, %struct.adapter** %8, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %66, %59
  %71 = load %struct.adapter*, %struct.adapter** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.firmware*, %struct.firmware** %7, align 8
  %74 = getelementptr inbounds %struct.firmware, %struct.firmware* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.firmware*, %struct.firmware** %7, align 8
  %77 = getelementptr inbounds %struct.firmware, %struct.firmware* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @t4_fw_upgrade(%struct.adapter* %71, i32 %72, i32 %75, i32 %78, i32 1)
  store i32 %79, i32* %6, align 4
  %80 = load %struct.firmware*, %struct.firmware** %7, align 8
  %81 = call i32 @release_firmware(%struct.firmware* %80)
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %70
  %85 = load %struct.adapter*, %struct.adapter** %8, align 8
  %86 = getelementptr inbounds %struct.adapter, %struct.adapter* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ethtool_flash*, %struct.ethtool_flash** %5, align 8
  %89 = getelementptr inbounds %struct.ethtool_flash, %struct.ethtool_flash* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @dev_info(i32 %87, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %84, %70
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %57, %36
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @PCIE_FW_MASTER_G(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @t4_fw_upgrade(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @dev_info(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
