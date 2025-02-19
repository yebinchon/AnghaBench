; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_get_dump_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_get_dump_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_dump = type { i32, i32, i64 }
%struct.qlcnic_adapter = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qlcnic_fw_dump }
%struct.qlcnic_fw_dump = type { i32, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"FW Dump not supported\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@ETH_FW_DUMP_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_dump*)* @qlcnic_get_dump_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_get_dump_flag(%struct.net_device* %0, %struct.ethtool_dump* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_dump*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.qlcnic_fw_dump*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_dump* %1, %struct.ethtool_dump** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.qlcnic_adapter* %9, %struct.qlcnic_adapter** %6, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.qlcnic_fw_dump* %13, %struct.qlcnic_fw_dump** %7, align 8
  %14 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %7, align 8
  %15 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %20 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @netdev_err(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %63

25:                                               ; preds = %2
  %26 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %7, align 8
  %27 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %7, align 8
  %32 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %7, align 8
  %35 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  br label %43

40:                                               ; preds = %25
  %41 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %40, %30
  %44 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %45 = call i32 @qlcnic_check_fw_dump_state(%struct.qlcnic_adapter* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @ETH_FW_DUMP_DISABLE, align 4
  %49 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %57

51:                                               ; preds = %43
  %52 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %7, align 8
  %53 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %51, %47
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %59 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %57, %18
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @qlcnic_check_fw_dump_state(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
