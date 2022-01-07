; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_ethtool.c_ehea_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_ethtool.c_ehea_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.ehea_port = type { i32, i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@EHEA_SPEED_AUTONEG = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@H_SPEED_10M_F = common dso_local global i32 0, align 4
@H_SPEED_10M_H = common dso_local global i32 0, align 4
@H_SPEED_100M_F = common dso_local global i32 0, align 4
@H_SPEED_100M_H = common dso_local global i32 0, align 4
@H_SPEED_1G_F = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@H_SPEED_10G_F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Port speed successfully set: %dMbps %s Duplex\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @ehea_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.ehea_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ehea_port* @netdev_priv(%struct.net_device* %8)
  store %struct.ehea_port* %9, %struct.ehea_port** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AUTONEG_ENABLE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @EHEA_SPEED_AUTONEG, align 4
  store i32 %17, i32* %7, align 4
  br label %81

18:                                               ; preds = %2
  %19 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %73 [
    i32 131, label %23
    i32 130, label %35
    i32 129, label %47
    i32 128, label %60
  ]

23:                                               ; preds = %18
  %24 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DUPLEX_FULL, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @H_SPEED_10M_F, align 4
  store i32 %31, i32* %7, align 4
  br label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @H_SPEED_10M_H, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %30
  br label %76

35:                                               ; preds = %18
  %36 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %37 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DUPLEX_FULL, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @H_SPEED_100M_F, align 4
  store i32 %43, i32* %7, align 4
  br label %46

44:                                               ; preds = %35
  %45 = load i32, i32* @H_SPEED_100M_H, align 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %44, %42
  br label %76

47:                                               ; preds = %18
  %48 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DUPLEX_FULL, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @H_SPEED_1G_F, align 4
  store i32 %55, i32* %7, align 4
  br label %59

56:                                               ; preds = %47
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %56, %54
  br label %76

60:                                               ; preds = %18
  %61 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %62 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DUPLEX_FULL, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @H_SPEED_10G_F, align 4
  store i32 %68, i32* %7, align 4
  br label %72

69:                                               ; preds = %60
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %69, %67
  br label %76

73:                                               ; preds = %18
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %73, %72, %59, %46, %34
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %100

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80, %16
  %82 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @ehea_set_portspeed(%struct.ehea_port* %82, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %81
  %88 = load %struct.net_device*, %struct.net_device** %3, align 8
  %89 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %90 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %93 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 1
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %98 = call i32 @netdev_info(%struct.net_device* %88, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %91, i8* %97)
  br label %99

99:                                               ; preds = %87, %81
  br label %100

100:                                              ; preds = %99, %79
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local %struct.ehea_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ehea_set_portspeed(%struct.ehea_port*, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
