; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_fw_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_fw_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnxt = type { %struct.bnxt_link_info }
%struct.bnxt_link_info = type { i32 }

@BNXT_LINK_SPEED_MSK_100MB = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_100MB = common dso_local global i32 0, align 4
@BNXT_LINK_SPEED_MSK_1GB = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_1GB = common dso_local global i32 0, align 4
@BNXT_LINK_SPEED_MSK_2_5GB = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_2_5GB = common dso_local global i32 0, align 4
@BNXT_LINK_SPEED_MSK_10GB = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_10GB = common dso_local global i32 0, align 4
@BNXT_LINK_SPEED_MSK_20GB = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_20GB = common dso_local global i32 0, align 4
@BNXT_LINK_SPEED_MSK_25GB = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_25GB = common dso_local global i32 0, align 4
@BNXT_LINK_SPEED_MSK_40GB = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_40GB = common dso_local global i32 0, align 4
@BNXT_LINK_SPEED_MSK_50GB = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_50GB = common dso_local global i32 0, align 4
@BNXT_LINK_SPEED_MSK_100GB = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_100GB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unsupported speed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @bnxt_get_fw_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_get_fw_speed(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt*, align 8
  %6 = alloca %struct.bnxt_link_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.bnxt* @netdev_priv(%struct.net_device* %9)
  store %struct.bnxt* %10, %struct.bnxt** %5, align 8
  %11 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 0
  store %struct.bnxt_link_info* %12, %struct.bnxt_link_info** %6, align 8
  %13 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %6, align 8
  %14 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %89 [
    i32 136, label %17
    i32 135, label %25
    i32 131, label %33
    i32 134, label %41
    i32 132, label %49
    i32 130, label %57
    i32 129, label %65
    i32 128, label %73
    i32 133, label %81
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @BNXT_LINK_SPEED_MSK_100MB, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_100MB, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %22, %17
  br label %92

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @BNXT_LINK_SPEED_MSK_1GB, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_1GB, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %30, %25
  br label %92

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @BNXT_LINK_SPEED_MSK_2_5GB, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_2_5GB, align 4
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %38, %33
  br label %92

41:                                               ; preds = %2
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @BNXT_LINK_SPEED_MSK_10GB, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_10GB, align 4
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %46, %41
  br label %92

49:                                               ; preds = %2
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @BNXT_LINK_SPEED_MSK_20GB, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_20GB, align 4
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %54, %49
  br label %92

57:                                               ; preds = %2
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @BNXT_LINK_SPEED_MSK_25GB, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_25GB, align 4
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %62, %57
  br label %92

65:                                               ; preds = %2
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @BNXT_LINK_SPEED_MSK_40GB, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_40GB, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %70, %65
  br label %92

73:                                               ; preds = %2
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @BNXT_LINK_SPEED_MSK_50GB, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_50GB, align 4
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %78, %73
  br label %92

81:                                               ; preds = %2
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @BNXT_LINK_SPEED_MSK_100GB, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_100GB, align 4
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %86, %81
  br label %92

89:                                               ; preds = %2
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = call i32 @netdev_err(%struct.net_device* %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %88, %80, %72, %64, %56, %48, %40, %32, %24
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
