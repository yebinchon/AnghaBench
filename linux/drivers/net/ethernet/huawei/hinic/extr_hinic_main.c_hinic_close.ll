; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_hinic_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_hinic_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hinic_dev = type { i32, i32, i32, i32 }

@HINIC_INTF_UP = common dso_local global i32 0, align 4
@HINIC_FUNC_PORT_DISABLE = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to set func port state\0A\00", align 1
@HINIC_PORT_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to set port state\0A\00", align 1
@HINIC_RSS_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"HINIC_INTF is DOWN\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hinic_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hinic_close(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hinic_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.hinic_dev* @netdev_priv(%struct.net_device* %7)
  store %struct.hinic_dev* %8, %struct.hinic_dev** %4, align 8
  %9 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %10 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %9, i32 0, i32 3
  %11 = call i32 @down(i32* %10)
  %12 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %13 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @HINIC_INTF_UP, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %18 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @netif_carrier_off(%struct.net_device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 @netif_tx_disable(%struct.net_device* %23)
  %25 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %26 = call i32 @update_nic_stats(%struct.hinic_dev* %25)
  %27 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %28 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %27, i32 0, i32 3
  %29 = call i32 @up(i32* %28)
  %30 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %31 = load i32, i32* @HINIC_FUNC_PORT_DISABLE, align 4
  %32 = call i32 @hinic_port_set_func_state(%struct.hinic_dev* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %1
  %36 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %37 = load i32, i32* @drv, align 4
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = call i32 @netif_err(%struct.hinic_dev* %36, i32 %37, %struct.net_device* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @HINIC_INTF_UP, align 4
  %42 = and i32 %40, %41
  %43 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %44 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %101

48:                                               ; preds = %1
  %49 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %50 = load i32, i32* @HINIC_PORT_DISABLE, align 4
  %51 = call i32 @hinic_port_set_state(%struct.hinic_dev* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %48
  %55 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %56 = load i32, i32* @drv, align 4
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = call i32 @netif_err(%struct.hinic_dev* %55, i32 %56, %struct.net_device* %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @HINIC_INTF_UP, align 4
  %61 = and i32 %59, %60
  %62 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %63 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %101

67:                                               ; preds = %48
  %68 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %69 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @HINIC_RSS_ENABLE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %67
  %75 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %76 = call i32 @hinic_rss_deinit(%struct.hinic_dev* %75)
  %77 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %78 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %79 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @hinic_rss_template_free(%struct.hinic_dev* %77, i32 %80)
  br label %82

82:                                               ; preds = %74, %67
  %83 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %84 = call i32 @free_rxqs(%struct.hinic_dev* %83)
  %85 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %86 = call i32 @free_txqs(%struct.hinic_dev* %85)
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @HINIC_INTF_UP, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %82
  %92 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %93 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @hinic_hwdev_ifdown(i32 %94)
  br label %96

96:                                               ; preds = %91, %82
  %97 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %98 = load i32, i32* @drv, align 4
  %99 = load %struct.net_device*, %struct.net_device** %3, align 8
  %100 = call i32 @netif_info(%struct.hinic_dev* %97, i32 %98, %struct.net_device* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %96, %54, %35
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.hinic_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @update_nic_stats(%struct.hinic_dev*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @hinic_port_set_func_state(%struct.hinic_dev*, i32) #1

declare dso_local i32 @netif_err(%struct.hinic_dev*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @hinic_port_set_state(%struct.hinic_dev*, i32) #1

declare dso_local i32 @hinic_rss_deinit(%struct.hinic_dev*) #1

declare dso_local i32 @hinic_rss_template_free(%struct.hinic_dev*, i32) #1

declare dso_local i32 @free_rxqs(%struct.hinic_dev*) #1

declare dso_local i32 @free_txqs(%struct.hinic_dev*) #1

declare dso_local i32 @hinic_hwdev_ifdown(i32) #1

declare dso_local i32 @netif_info(%struct.hinic_dev*, i32, %struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
