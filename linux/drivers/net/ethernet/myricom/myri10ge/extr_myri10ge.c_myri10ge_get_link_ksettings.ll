; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.myri10ge_priv = type { i8* }

@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Missing product code\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid product code %s\0A\00", align 1
@PORT_FIBRE = common dso_local global i32 0, align 4
@supported = common dso_local global i32 0, align 4
@FIBRE = common dso_local global i32 0, align 4
@advertising = common dso_local global i32 0, align 4
@PORT_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @myri10ge_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myri10ge_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.myri10ge_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.myri10ge_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.myri10ge_priv* %10, %struct.myri10ge_priv** %6, align 8
  %11 = load i32, i32* @AUTONEG_DISABLE, align 4
  %12 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %13 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @SPEED_10000, align 4
  %16 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @DUPLEX_FULL, align 4
  %20 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %6, align 8
  %24 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %94

31:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %47, %31
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 3
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 45)
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %6, align 8
  %43 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  store i32 0, i32* %3, align 4
  br label %94

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %7, align 8
  br label %32

52:                                               ; preds = %32
  %53 = load i8*, i8** %7, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 50
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %7, align 8
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i8*, i8** %7, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 82
  br i1 %64, label %75, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %7, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 81
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load i8*, i8** %7, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 83
  br i1 %74, label %75, label %88

75:                                               ; preds = %70, %65, %60
  %76 = load i32, i32* @PORT_FIBRE, align 4
  %77 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 4
  %80 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %81 = load i32, i32* @supported, align 4
  %82 = load i32, i32* @FIBRE, align 4
  %83 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %80, i32 %81, i32 %82)
  %84 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %85 = load i32, i32* @advertising, align 4
  %86 = load i32, i32* @FIBRE, align 4
  %87 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %84, i32 %85, i32 %86)
  br label %93

88:                                               ; preds = %70
  %89 = load i32, i32* @PORT_OTHER, align 4
  %90 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %91 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %75
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %40, %28
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.myri10ge_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
