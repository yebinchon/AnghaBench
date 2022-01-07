; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xgbe_prv_data = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s-pcs\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s-ecc\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s-i2c\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"device workqueue creation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"phy workqueue creation failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"dma clk_prepare_enable failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"ptp clk_prepare_enable failed\0A\00", align 1
@xgbe_service = common dso_local global i32 0, align 4
@xgbe_restart = common dso_local global i32 0, align 4
@xgbe_stopdev = common dso_local global i32 0, align 4
@xgbe_tx_tstamp = common dso_local global i32 0, align 4
@XGBE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @xgbe_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.xgbe_prv_data* @netdev_priv(%struct.net_device* %6)
  store %struct.xgbe_prv_data* %7, %struct.xgbe_prv_data** %4, align 8
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %9 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i8* @netdev_name(%struct.net_device* %11)
  %13 = call i32 @snprintf(i8* %10, i32 7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %15 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i8* @netdev_name(%struct.net_device* %17)
  %19 = call i32 @snprintf(i8* %16, i32 7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %21 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i8* @netdev_name(%struct.net_device* %23)
  %25 = call i32 @snprintf(i8* %22, i32 7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i8* @netdev_name(%struct.net_device* %26)
  %28 = call i8* @create_singlethread_workqueue(i8* %27)
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %30 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %32 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %31, i32 0, i32 3
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %1
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @netdev_err(%struct.net_device* %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %139

40:                                               ; preds = %1
  %41 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %42 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @create_singlethread_workqueue(i8* %43)
  %45 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %46 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %48 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %47, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %40
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = call i32 @netdev_err(%struct.net_device* %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %133

56:                                               ; preds = %40
  %57 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %58 = call i32 @xgbe_phy_reset(%struct.xgbe_prv_data* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %128

62:                                               ; preds = %56
  %63 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %64 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @clk_prepare_enable(i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load %struct.net_device*, %struct.net_device** %3, align 8
  %71 = call i32 @netdev_alert(%struct.net_device* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %128

72:                                               ; preds = %62
  %73 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %74 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @clk_prepare_enable(i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = call i32 @netdev_alert(%struct.net_device* %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %123

82:                                               ; preds = %72
  %83 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %84 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %83, i32 0, i32 11
  %85 = load i32, i32* @xgbe_service, align 4
  %86 = call i32 @INIT_WORK(i32* %84, i32 %85)
  %87 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %88 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %87, i32 0, i32 10
  %89 = load i32, i32* @xgbe_restart, align 4
  %90 = call i32 @INIT_WORK(i32* %88, i32 %89)
  %91 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %92 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %91, i32 0, i32 9
  %93 = load i32, i32* @xgbe_stopdev, align 4
  %94 = call i32 @INIT_WORK(i32* %92, i32 %93)
  %95 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %96 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %95, i32 0, i32 8
  %97 = load i32, i32* @xgbe_tx_tstamp, align 4
  %98 = call i32 @INIT_WORK(i32* %96, i32 %97)
  %99 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %100 = call i32 @xgbe_alloc_memory(%struct.xgbe_prv_data* %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %82
  br label %118

104:                                              ; preds = %82
  %105 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %106 = call i32 @xgbe_start(%struct.xgbe_prv_data* %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %115

110:                                              ; preds = %104
  %111 = load i32, i32* @XGBE_DOWN, align 4
  %112 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %113 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %112, i32 0, i32 7
  %114 = call i32 @clear_bit(i32 %111, i32* %113)
  store i32 0, i32* %2, align 4
  br label %139

115:                                              ; preds = %109
  %116 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %117 = call i32 @xgbe_free_memory(%struct.xgbe_prv_data* %116)
  br label %118

118:                                              ; preds = %115, %103
  %119 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %120 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @clk_disable_unprepare(i32 %121)
  br label %123

123:                                              ; preds = %118, %79
  %124 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %125 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @clk_disable_unprepare(i32 %126)
  br label %128

128:                                              ; preds = %123, %69, %61
  %129 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %130 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %129, i32 0, i32 4
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @destroy_workqueue(i8* %131)
  br label %133

133:                                              ; preds = %128, %51
  %134 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %135 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %134, i32 0, i32 3
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @destroy_workqueue(i8* %136)
  %138 = load i32, i32* %5, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %133, %110, %35
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.xgbe_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @netdev_name(%struct.net_device*) #1

declare dso_local i8* @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @xgbe_phy_reset(%struct.xgbe_prv_data*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @netdev_alert(%struct.net_device*, i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @xgbe_alloc_memory(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_start(%struct.xgbe_prv_data*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @xgbe_free_memory(%struct.xgbe_prv_data*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @destroy_workqueue(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
