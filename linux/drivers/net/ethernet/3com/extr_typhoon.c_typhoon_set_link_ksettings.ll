; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.typhoon = type { i32, i32, i8* }
%struct.cmd_desc = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@TYPHOON_XCVR_AUTONEG = common dso_local global i8* null, align 8
@DUPLEX_HALF = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@TYPHOON_XCVR_10HALF = common dso_local global i8* null, align 8
@SPEED_100 = common dso_local global i32 0, align 4
@TYPHOON_XCVR_100HALF = common dso_local global i8* null, align 8
@DUPLEX_FULL = common dso_local global i32 0, align 4
@TYPHOON_XCVR_10FULL = common dso_local global i8* null, align 8
@TYPHOON_XCVR_100FULL = common dso_local global i8* null, align 8
@TYPHOON_CMD_XCVR_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @typhoon_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typhoon_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.typhoon*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmd_desc, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.typhoon* @netdev_priv(%struct.net_device* %10)
  store %struct.typhoon* %11, %struct.typhoon** %5, align 8
  %12 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AUTONEG_ENABLE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i8*, i8** @TYPHOON_XCVR_AUTONEG, align 8
  store i8* %25, i8** %8, align 8
  br label %73

26:                                               ; preds = %2
  %27 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DUPLEX_HALF, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @SPEED_10, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i8*, i8** @TYPHOON_XCVR_10HALF, align 8
  store i8* %38, i8** %8, align 8
  br label %47

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SPEED_100, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i8*, i8** @TYPHOON_XCVR_100HALF, align 8
  store i8* %44, i8** %8, align 8
  br label %46

45:                                               ; preds = %39
  br label %109

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %46, %37
  br label %72

48:                                               ; preds = %26
  %49 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %50 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @DUPLEX_FULL, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %48
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @SPEED_10, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i8*, i8** @TYPHOON_XCVR_10FULL, align 8
  store i8* %60, i8** %8, align 8
  br label %69

61:                                               ; preds = %55
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @SPEED_100, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i8*, i8** @TYPHOON_XCVR_100FULL, align 8
  store i8* %66, i8** %8, align 8
  br label %68

67:                                               ; preds = %61
  br label %109

68:                                               ; preds = %65
  br label %69

69:                                               ; preds = %68, %59
  br label %71

70:                                               ; preds = %48
  br label %109

71:                                               ; preds = %69
  br label %72

72:                                               ; preds = %71, %47
  br label %73

73:                                               ; preds = %72, %24
  %74 = load i32, i32* @TYPHOON_CMD_XCVR_SELECT, align 4
  %75 = call i32 @INIT_COMMAND_NO_RESPONSE(%struct.cmd_desc* %7, i32 %74)
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds %struct.cmd_desc, %struct.cmd_desc* %7, i32 0, i32 0
  store i8* %76, i8** %77, align 8
  %78 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %79 = call i32 @typhoon_issue_command(%struct.typhoon* %78, i32 1, %struct.cmd_desc* %7, i32 0, i32* null)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %109

83:                                               ; preds = %73
  %84 = load i8*, i8** %8, align 8
  %85 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %86 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %88 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @AUTONEG_ENABLE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %83
  %94 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %95 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %94, i32 0, i32 0
  store i32 255, i32* %95, align 8
  %96 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %97 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %96, i32 0, i32 1
  store i32 255, i32* %97, align 4
  br label %108

98:                                               ; preds = %83
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %101 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %103 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %107 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %98, %93
  br label %109

109:                                              ; preds = %108, %82, %70, %67, %45
  %110 = load i32, i32* %9, align 4
  ret i32 %110
}

declare dso_local %struct.typhoon* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @INIT_COMMAND_NO_RESPONSE(%struct.cmd_desc*, i32) #1

declare dso_local i32 @typhoon_issue_command(%struct.typhoon*, i32, %struct.cmd_desc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
