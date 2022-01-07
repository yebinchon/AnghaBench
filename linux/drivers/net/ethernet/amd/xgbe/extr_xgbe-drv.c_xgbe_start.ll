; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, i32, i32, i32*, i32, %struct.net_device*, %struct.xgbe_phy_if, %struct.xgbe_hw_if }
%struct.net_device = type { i32 }
%struct.xgbe_phy_if = type { i32 (%struct.xgbe_prv_data.0*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_hw_if = type { i32 (%struct.xgbe_prv_data.1*)*, i32 (%struct.xgbe_prv_data.2*)*, i32 (%struct.xgbe_prv_data.3*)*, i32 (%struct.xgbe_prv_data.4*)* }
%struct.xgbe_prv_data.1 = type opaque
%struct.xgbe_prv_data.2 = type opaque
%struct.xgbe_prv_data.3 = type opaque
%struct.xgbe_prv_data.4 = type opaque

@.str = private unnamed_addr constant [35 x i8] c"error setting real tx queue count\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"error setting real rx queue count\0A\00", align 1
@XGBE_RSS_MAX_TABLE_SIZE = common dso_local global i32 0, align 4
@MAC_RSSDR = common dso_local global i32 0, align 4
@DMCH = common dso_local global i32 0, align 4
@XGBE_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_start(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_hw_if*, align 8
  %5 = alloca %struct.xgbe_phy_if*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %10 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %9, i32 0, i32 8
  store %struct.xgbe_hw_if* %10, %struct.xgbe_hw_if** %4, align 8
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %12 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %11, i32 0, i32 7
  store %struct.xgbe_phy_if* %12, %struct.xgbe_phy_if** %5, align 8
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %14 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %13, i32 0, i32 6
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %6, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %18 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %16, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = call i32 @netdev_err(%struct.net_device* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %2, align 4
  br label %134

27:                                               ; preds = %1
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %30 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %28, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = call i32 @netdev_err(%struct.net_device* %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %2, align 4
  br label %134

39:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %60, %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @XGBE_RSS_MAX_TABLE_SIZE, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %46 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MAC_RSSDR, align 4
  %53 = load i32, i32* @DMCH, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %56 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = urem i32 %54, %57
  %59 = call i32 @XGMAC_SET_BITS(i32 %51, i32 %52, i32 %53, i32 %58)
  br label %60

60:                                               ; preds = %44
  %61 = load i32, i32* %7, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %40

63:                                               ; preds = %40
  %64 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %4, align 8
  %65 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %64, i32 0, i32 0
  %66 = load i32 (%struct.xgbe_prv_data.1*)*, i32 (%struct.xgbe_prv_data.1*)** %65, align 8
  %67 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %68 = bitcast %struct.xgbe_prv_data* %67 to %struct.xgbe_prv_data.1*
  %69 = call i32 %66(%struct.xgbe_prv_data.1* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %2, align 4
  br label %134

74:                                               ; preds = %63
  %75 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %76 = call i32 @xgbe_napi_enable(%struct.xgbe_prv_data* %75, i32 1)
  %77 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %78 = call i32 @xgbe_request_irqs(%struct.xgbe_prv_data* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %124

82:                                               ; preds = %74
  %83 = load %struct.xgbe_phy_if*, %struct.xgbe_phy_if** %5, align 8
  %84 = getelementptr inbounds %struct.xgbe_phy_if, %struct.xgbe_phy_if* %83, i32 0, i32 0
  %85 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %84, align 8
  %86 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %87 = bitcast %struct.xgbe_prv_data* %86 to %struct.xgbe_prv_data.0*
  %88 = call i32 %85(%struct.xgbe_prv_data.0* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %121

92:                                               ; preds = %82
  %93 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %4, align 8
  %94 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %93, i32 0, i32 3
  %95 = load i32 (%struct.xgbe_prv_data.4*)*, i32 (%struct.xgbe_prv_data.4*)** %94, align 8
  %96 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %97 = bitcast %struct.xgbe_prv_data* %96 to %struct.xgbe_prv_data.4*
  %98 = call i32 %95(%struct.xgbe_prv_data.4* %97)
  %99 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %4, align 8
  %100 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %99, i32 0, i32 2
  %101 = load i32 (%struct.xgbe_prv_data.3*)*, i32 (%struct.xgbe_prv_data.3*)** %100, align 8
  %102 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %103 = bitcast %struct.xgbe_prv_data* %102 to %struct.xgbe_prv_data.3*
  %104 = call i32 %101(%struct.xgbe_prv_data.3* %103)
  %105 = load %struct.net_device*, %struct.net_device** %6, align 8
  %106 = call i32 @udp_tunnel_get_rx_info(%struct.net_device* %105)
  %107 = load %struct.net_device*, %struct.net_device** %6, align 8
  %108 = call i32 @netif_tx_start_all_queues(%struct.net_device* %107)
  %109 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %110 = call i32 @xgbe_start_timers(%struct.xgbe_prv_data* %109)
  %111 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %112 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %115 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %114, i32 0, i32 2
  %116 = call i32 @queue_work(i32 %113, i32* %115)
  %117 = load i32, i32* @XGBE_STOPPED, align 4
  %118 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %119 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %118, i32 0, i32 1
  %120 = call i32 @clear_bit(i32 %117, i32* %119)
  store i32 0, i32* %2, align 4
  br label %134

121:                                              ; preds = %91
  %122 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %123 = call i32 @xgbe_free_irqs(%struct.xgbe_prv_data* %122)
  br label %124

124:                                              ; preds = %121, %81
  %125 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %126 = call i32 @xgbe_napi_disable(%struct.xgbe_prv_data* %125, i32 1)
  %127 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %4, align 8
  %128 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %127, i32 0, i32 1
  %129 = load i32 (%struct.xgbe_prv_data.2*)*, i32 (%struct.xgbe_prv_data.2*)** %128, align 8
  %130 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %131 = bitcast %struct.xgbe_prv_data* %130 to %struct.xgbe_prv_data.2*
  %132 = call i32 %129(%struct.xgbe_prv_data.2* %131)
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %124, %92, %72, %35, %23
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @XGMAC_SET_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @xgbe_napi_enable(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @xgbe_request_irqs(%struct.xgbe_prv_data*) #1

declare dso_local i32 @udp_tunnel_get_rx_info(%struct.net_device*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @xgbe_start_timers(%struct.xgbe_prv_data*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @xgbe_free_irqs(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_napi_disable(%struct.xgbe_prv_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
