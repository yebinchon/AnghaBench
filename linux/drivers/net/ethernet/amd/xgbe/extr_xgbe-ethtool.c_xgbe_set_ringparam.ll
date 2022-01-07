; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-ethtool.c_xgbe_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-ethtool.c_xgbe_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i64, i64 }
%struct.xgbe_prv_data = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"unsupported ring parameter\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@XGBE_RX_DESC_CNT_MIN = common dso_local global i32 0, align 4
@XGBE_RX_DESC_CNT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"rx ring parameter must be between %u and %u\0A\00", align 1
@XGBE_TX_DESC_CNT_MIN = common dso_local global i32 0, align 4
@XGBE_TX_DESC_CNT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"tx ring parameter must be between %u and %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"rx ring parameter rounded to power of two: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"tx ring parameter rounded to power of two: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @xgbe_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.xgbe_prv_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.xgbe_prv_data* @netdev_priv(%struct.net_device* %9)
  store %struct.xgbe_prv_data* %10, %struct.xgbe_prv_data** %6, align 8
  %11 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15, %2
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %114

25:                                               ; preds = %15
  %26 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @XGBE_RX_DESC_CNT_MIN, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @XGBE_RX_DESC_CNT_MAX, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31, %25
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = load i32, i32* @XGBE_RX_DESC_CNT_MIN, align 4
  %40 = load i32, i32* @XGBE_RX_DESC_CNT_MAX, align 4
  %41 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %114

44:                                               ; preds = %31
  %45 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @XGBE_TX_DESC_CNT_MIN, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @XGBE_TX_DESC_CNT_MAX, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50, %44
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = load i32, i32* @XGBE_TX_DESC_CNT_MIN, align 4
  %59 = load i32, i32* @XGBE_TX_DESC_CNT_MAX, align 4
  %60 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %57, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %114

63:                                               ; preds = %50
  %64 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @__rounddown_pow_of_two(i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %70 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %63
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @netdev_notice(%struct.net_device* %74, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %73, %63
  %78 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %79 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @__rounddown_pow_of_two(i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %84 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %82, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %77
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @netdev_notice(%struct.net_device* %88, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %87, %77
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %94 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %100 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %98, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %113

104:                                              ; preds = %97, %91
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %107 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %110 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %112 = call i32 @xgbe_restart_dev(%struct.xgbe_prv_data* %111)
  br label %113

113:                                              ; preds = %104, %103
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %56, %37, %20
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.xgbe_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @__rounddown_pow_of_two(i32) #1

declare dso_local i32 @netdev_notice(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @xgbe_restart_dev(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
