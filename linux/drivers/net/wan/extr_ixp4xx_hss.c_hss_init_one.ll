; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_ixp4xx_hss.c_hss_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_ixp4xx_hss.c_hss_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.port = type { i32*, i32, i32, %struct.TYPE_5__*, i32, i32, i64, i32, %struct.net_device* }
%struct.net_device = type { i32, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@hss_hdlc_attach = common dso_local global i32 0, align 4
@hss_hdlc_xmit = common dso_local global i32 0, align 4
@hss_hdlc_ops = common dso_local global i32 0, align 4
@CLOCK_EXT = common dso_local global i32 0, align 4
@CLK42X_SPEED_2048KHZ = common dso_local global i32 0, align 4
@hss_hdlc_poll = common dso_local global i32 0, align 4
@NAPI_WEIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hss_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hss_init_one(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.port*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.port* @kzalloc(i32 56, i32 %8)
  store %struct.port* %9, %struct.port** %4, align 8
  %10 = icmp eq %struct.port* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %99

14:                                               ; preds = %1
  %15 = call i32* @npe_request(i32 0)
  %16 = load %struct.port*, %struct.port** %4, align 8
  %17 = getelementptr inbounds %struct.port, %struct.port* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  %18 = icmp eq i32* %15, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %95

22:                                               ; preds = %14
  %23 = load %struct.port*, %struct.port** %4, align 8
  %24 = call %struct.net_device* @alloc_hdlcdev(%struct.port* %23)
  store %struct.net_device* %24, %struct.net_device** %5, align 8
  %25 = load %struct.port*, %struct.port** %4, align 8
  %26 = getelementptr inbounds %struct.port, %struct.port* %25, i32 0, i32 8
  store %struct.net_device* %24, %struct.net_device** %26, align 8
  %27 = icmp eq %struct.net_device* %24, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %90

31:                                               ; preds = %22
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @SET_NETDEV_DEV(%struct.net_device* %32, %struct.TYPE_5__* %34)
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = call %struct.TYPE_4__* @dev_to_hdlc(%struct.net_device* %36)
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %6, align 8
  %38 = load i32, i32* @hss_hdlc_attach, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @hss_hdlc_xmit, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  store i32* @hss_hdlc_ops, i32** %45, align 8
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  store i32 100, i32* %47, align 8
  %48 = load i32, i32* @CLOCK_EXT, align 4
  %49 = load %struct.port*, %struct.port** %4, align 8
  %50 = getelementptr inbounds %struct.port, %struct.port* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 8
  %51 = load %struct.port*, %struct.port** %4, align 8
  %52 = getelementptr inbounds %struct.port, %struct.port* %51, i32 0, i32 6
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* @CLK42X_SPEED_2048KHZ, align 4
  %54 = load %struct.port*, %struct.port** %4, align 8
  %55 = getelementptr inbounds %struct.port, %struct.port* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.port*, %struct.port** %4, align 8
  %60 = getelementptr inbounds %struct.port, %struct.port* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.port*, %struct.port** %4, align 8
  %64 = getelementptr inbounds %struct.port, %struct.port* %63, i32 0, i32 3
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.port*, %struct.port** %4, align 8
  %70 = getelementptr inbounds %struct.port, %struct.port* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.net_device*, %struct.net_device** %5, align 8
  %72 = load %struct.port*, %struct.port** %4, align 8
  %73 = getelementptr inbounds %struct.port, %struct.port* %72, i32 0, i32 1
  %74 = load i32, i32* @hss_hdlc_poll, align 4
  %75 = load i32, i32* @NAPI_WEIGHT, align 4
  %76 = call i32 @netif_napi_add(%struct.net_device* %71, i32* %73, i32 %74, i32 %75)
  %77 = load %struct.net_device*, %struct.net_device** %5, align 8
  %78 = call i32 @register_hdlc_device(%struct.net_device* %77)
  store i32 %78, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %31
  br label %87

81:                                               ; preds = %31
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = load %struct.port*, %struct.port** %4, align 8
  %84 = call i32 @platform_set_drvdata(%struct.platform_device* %82, %struct.port* %83)
  %85 = load %struct.net_device*, %struct.net_device** %5, align 8
  %86 = call i32 @netdev_info(%struct.net_device* %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %99

87:                                               ; preds = %80
  %88 = load %struct.net_device*, %struct.net_device** %5, align 8
  %89 = call i32 @free_netdev(%struct.net_device* %88)
  br label %90

90:                                               ; preds = %87, %28
  %91 = load %struct.port*, %struct.port** %4, align 8
  %92 = getelementptr inbounds %struct.port, %struct.port* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @npe_release(i32* %93)
  br label %95

95:                                               ; preds = %90, %19
  %96 = load %struct.port*, %struct.port** %4, align 8
  %97 = call i32 @kfree(%struct.port* %96)
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %95, %81, %11
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.port* @kzalloc(i32, i32) #1

declare dso_local i32* @npe_request(i32) #1

declare dso_local %struct.net_device* @alloc_hdlcdev(%struct.port*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_4__* @dev_to_hdlc(%struct.net_device*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @register_hdlc_device(%struct.net_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.port*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @npe_release(i32*) #1

declare dso_local i32 @kfree(%struct.port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
