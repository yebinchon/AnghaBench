; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_channel_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_channel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_canfd_global = type { %struct.rcar_canfd_channel**, i64, i32, %struct.platform_device* }
%struct.rcar_canfd_channel = type { i64, i32, i32, %struct.rcar_canfd_global*, %struct.TYPE_4__, i32, %struct.net_device* }
%struct.TYPE_4__ = type { i32, i32, i8*, i32*, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.net_device = type { i32, i32* }
%struct.platform_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@RCANFD_FIFO_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"alloc_candev() failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@rcar_canfd_netdev_ops = common dso_local global i32 0, align 4
@IFF_ECHO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"can_clk rate is %u\0A\00", align 1
@rcar_canfd_nom_bittiming_const = common dso_local global i32 0, align 4
@rcar_canfd_data_bittiming_const = common dso_local global i32 0, align 4
@CAN_CTRLMODE_FD = common dso_local global i32 0, align 4
@CAN_CTRLMODE_BERR_REPORTING = common dso_local global i8* null, align 8
@rcar_canfd_bittiming_const = common dso_local global i32 0, align 4
@rcar_canfd_do_set_mode = common dso_local global i32 0, align 4
@rcar_canfd_get_berr_counter = common dso_local global i32 0, align 4
@rcar_canfd_rx_poll = common dso_local global i32 0, align 4
@RCANFD_NAPI_WEIGHT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"register_candev() failed, error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"device registered (channel %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_canfd_global*, i8*, i8*)* @rcar_canfd_channel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_canfd_channel_probe(%struct.rcar_canfd_global* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rcar_canfd_global*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.rcar_canfd_channel*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  store %struct.rcar_canfd_global* %0, %struct.rcar_canfd_global** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %5, align 8
  %13 = getelementptr inbounds %struct.rcar_canfd_global, %struct.rcar_canfd_global* %12, i32 0, i32 3
  %14 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  store %struct.platform_device* %14, %struct.platform_device** %8, align 8
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @RCANFD_FIFO_DEPTH, align 4
  %18 = call %struct.net_device* @alloc_candev(i32 80, i32 %17)
  store %struct.net_device* %18, %struct.net_device** %10, align 8
  %19 = load %struct.net_device*, %struct.net_device** %10, align 8
  %20 = icmp ne %struct.net_device* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 (i32*, i8*, ...) @dev_err(i32* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %11, align 4
  br label %146

27:                                               ; preds = %3
  %28 = load %struct.net_device*, %struct.net_device** %10, align 8
  %29 = call %struct.rcar_canfd_channel* @netdev_priv(%struct.net_device* %28)
  store %struct.rcar_canfd_channel* %29, %struct.rcar_canfd_channel** %9, align 8
  %30 = load %struct.net_device*, %struct.net_device** %10, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 1
  store i32* @rcar_canfd_netdev_ops, i32** %31, align 8
  %32 = load i32, i32* @IFF_ECHO, align 4
  %33 = load %struct.net_device*, %struct.net_device** %10, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.net_device*, %struct.net_device** %10, align 8
  %38 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %9, align 8
  %39 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %38, i32 0, i32 6
  store %struct.net_device* %37, %struct.net_device** %39, align 8
  %40 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %5, align 8
  %41 = getelementptr inbounds %struct.rcar_canfd_global, %struct.rcar_canfd_global* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %9, align 8
  %44 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %9, align 8
  %48 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %9, align 8
  %52 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i64 %50, i64* %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %9, align 8
  %58 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @dev_info(i32* %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  %63 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %5, align 8
  %64 = getelementptr inbounds %struct.rcar_canfd_global, %struct.rcar_canfd_global* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %27
  %68 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %9, align 8
  %69 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  store i32* @rcar_canfd_nom_bittiming_const, i32** %70, align 8
  %71 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %9, align 8
  %72 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  store i32* @rcar_canfd_data_bittiming_const, i32** %73, align 8
  %74 = load %struct.net_device*, %struct.net_device** %10, align 8
  %75 = load i32, i32* @CAN_CTRLMODE_FD, align 4
  %76 = call i32 @can_set_static_ctrlmode(%struct.net_device* %74, i32 %75)
  %77 = load i8*, i8** @CAN_CTRLMODE_BERR_REPORTING, align 8
  %78 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %9, align 8
  %79 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  store i8* %77, i8** %80, align 8
  br label %89

81:                                               ; preds = %27
  %82 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %9, align 8
  %83 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  store i32* @rcar_canfd_bittiming_const, i32** %84, align 8
  %85 = load i8*, i8** @CAN_CTRLMODE_BERR_REPORTING, align 8
  %86 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %9, align 8
  %87 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  store i8* %85, i8** %88, align 8
  br label %89

89:                                               ; preds = %81, %67
  %90 = load i32, i32* @rcar_canfd_do_set_mode, align 4
  %91 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %9, align 8
  %92 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* @rcar_canfd_get_berr_counter, align 4
  %95 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %9, align 8
  %96 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %5, align 8
  %99 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %9, align 8
  %100 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %99, i32 0, i32 3
  store %struct.rcar_canfd_global* %98, %struct.rcar_canfd_global** %100, align 8
  %101 = load %struct.net_device*, %struct.net_device** %10, align 8
  %102 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 @SET_NETDEV_DEV(%struct.net_device* %101, i32* %103)
  %105 = load %struct.net_device*, %struct.net_device** %10, align 8
  %106 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %9, align 8
  %107 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %106, i32 0, i32 1
  %108 = load i32, i32* @rcar_canfd_rx_poll, align 4
  %109 = load i32, i32* @RCANFD_NAPI_WEIGHT, align 4
  %110 = call i32 @netif_napi_add(%struct.net_device* %105, i32* %107, i32 %108, i32 %109)
  %111 = load %struct.net_device*, %struct.net_device** %10, align 8
  %112 = call i32 @register_candev(%struct.net_device* %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %89
  %116 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = load i32, i32* %11, align 4
  %119 = call i32 (i32*, i8*, ...) @dev_err(i32* %117, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  br label %140

120:                                              ; preds = %89
  %121 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %9, align 8
  %122 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %121, i32 0, i32 2
  %123 = call i32 @spin_lock_init(i32* %122)
  %124 = load %struct.net_device*, %struct.net_device** %10, align 8
  %125 = call i32 @devm_can_led_init(%struct.net_device* %124)
  %126 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %9, align 8
  %127 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %5, align 8
  %128 = getelementptr inbounds %struct.rcar_canfd_global, %struct.rcar_canfd_global* %127, i32 0, i32 0
  %129 = load %struct.rcar_canfd_channel**, %struct.rcar_canfd_channel*** %128, align 8
  %130 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %9, align 8
  %131 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %129, i64 %132
  store %struct.rcar_canfd_channel* %126, %struct.rcar_canfd_channel** %133, align 8
  %134 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %9, align 8
  %137 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @dev_info(i32* %135, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %138)
  store i32 0, i32* %4, align 4
  br label %148

140:                                              ; preds = %115
  %141 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %9, align 8
  %142 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %141, i32 0, i32 1
  %143 = call i32 @netif_napi_del(i32* %142)
  %144 = load %struct.net_device*, %struct.net_device** %10, align 8
  %145 = call i32 @free_candev(%struct.net_device* %144)
  br label %146

146:                                              ; preds = %140, %21
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %146, %120
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local %struct.net_device* @alloc_candev(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.rcar_canfd_channel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64) #1

declare dso_local i32 @can_set_static_ctrlmode(%struct.net_device*, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @register_candev(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_can_led_init(%struct.net_device*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @free_candev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
