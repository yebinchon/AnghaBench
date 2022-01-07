; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_device_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netvsc_device = type { i32, %struct.netvsc_channel* }
%struct.netvsc_channel = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.netvsc_device*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hv_device = type { i32 }
%struct.netvsc_device_info = type { i32 }
%struct.net_device = type { i32 }
%struct.net_device_context = type { i32, i64* }

@ENOMEM = common dso_local global i32 0, align 4
@VRSS_SEND_TAB_SIZE = common dso_local global i32 0, align 4
@HV_CALL_ISR = common dso_local global i32 0, align 4
@VRSS_CHANNEL_MAX = common dso_local global i32 0, align 4
@netvsc_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@netvsc_ring_bytes = common dso_local global i32 0, align 4
@netvsc_channel_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unable to open channel: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"hv_netvsc channel opened successfully\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"unable to connect to NetVSP - %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.netvsc_device* @netvsc_device_add(%struct.hv_device* %0, %struct.netvsc_device_info* %1) #0 {
  %3 = alloca %struct.netvsc_device*, align 8
  %4 = alloca %struct.hv_device*, align 8
  %5 = alloca %struct.netvsc_device_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.netvsc_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device_context*, align 8
  %11 = alloca %struct.netvsc_channel*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %4, align 8
  store %struct.netvsc_device_info* %1, %struct.netvsc_device_info** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %13 = call %struct.net_device* @hv_get_drvdata(%struct.hv_device* %12)
  store %struct.net_device* %13, %struct.net_device** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %9, align 8
  %15 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %14)
  store %struct.net_device_context* %15, %struct.net_device_context** %10, align 8
  %16 = call %struct.netvsc_device* (...) @alloc_net_device()
  store %struct.netvsc_device* %16, %struct.netvsc_device** %8, align 8
  %17 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %18 = icmp ne %struct.netvsc_device* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.netvsc_device* @ERR_PTR(i32 %21)
  store %struct.netvsc_device* %22, %struct.netvsc_device** %3, align 8
  br label %153

23:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %35, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @VRSS_SEND_TAB_SIZE, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load %struct.net_device_context*, %struct.net_device_context** %10, align 8
  %30 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %24

38:                                               ; preds = %24
  %39 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %40 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HV_CALL_ISR, align 4
  %43 = call i32 @set_channel_read_mode(i32 %41, i32 %42)
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %71, %38
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @VRSS_CHANNEL_MAX, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %44
  %49 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %50 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %49, i32 0, i32 1
  %51 = load %struct.netvsc_channel*, %struct.netvsc_channel** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %51, i64 %53
  store %struct.netvsc_channel* %54, %struct.netvsc_channel** %11, align 8
  %55 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %56 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.netvsc_channel*, %struct.netvsc_channel** %11, align 8
  %59 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %61 = load %struct.netvsc_channel*, %struct.netvsc_channel** %11, align 8
  %62 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %61, i32 0, i32 3
  store %struct.netvsc_device* %60, %struct.netvsc_device** %62, align 8
  %63 = load %struct.netvsc_channel*, %struct.netvsc_channel** %11, align 8
  %64 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = call i32 @u64_stats_init(i32* %65)
  %67 = load %struct.netvsc_channel*, %struct.netvsc_channel** %11, align 8
  %68 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = call i32 @u64_stats_init(i32* %69)
  br label %71

71:                                               ; preds = %48
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %44

74:                                               ; preds = %44
  %75 = load %struct.net_device*, %struct.net_device** %9, align 8
  %76 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %77 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %76, i32 0, i32 1
  %78 = load %struct.netvsc_channel*, %struct.netvsc_channel** %77, align 8
  %79 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %78, i64 0
  %80 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %79, i32 0, i32 0
  %81 = load i32, i32* @netvsc_poll, align 4
  %82 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %83 = call i32 @netif_napi_add(%struct.net_device* %75, i32* %80, i32 %81, i32 %82)
  %84 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %85 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @netvsc_ring_bytes, align 4
  %88 = load i32, i32* @netvsc_ring_bytes, align 4
  %89 = load i32, i32* @netvsc_channel_cb, align 4
  %90 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %91 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %90, i32 0, i32 1
  %92 = load %struct.netvsc_channel*, %struct.netvsc_channel** %91, align 8
  %93 = call i32 @vmbus_open(i32 %86, i32 %87, i32 %88, i32* null, i32 0, i32 %89, %struct.netvsc_channel* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %74
  %97 = load %struct.net_device*, %struct.net_device** %9, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @netdev_err(%struct.net_device* %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %141

100:                                              ; preds = %74
  %101 = load %struct.net_device*, %struct.net_device** %9, align 8
  %102 = call i32 @netdev_dbg(%struct.net_device* %101, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %103 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %104 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %103, i32 0, i32 1
  %105 = load %struct.netvsc_channel*, %struct.netvsc_channel** %104, align 8
  %106 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %105, i64 0
  %107 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %106, i32 0, i32 0
  %108 = call i32 @napi_enable(i32* %107)
  %109 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %110 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %111 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %5, align 8
  %112 = call i32 @netvsc_connect_vsp(%struct.hv_device* %109, %struct.netvsc_device* %110, %struct.netvsc_device_info* %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %100
  %116 = load %struct.net_device*, %struct.net_device** %9, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @netdev_err(%struct.net_device* %116, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  br label %126

119:                                              ; preds = %100
  %120 = load %struct.net_device_context*, %struct.net_device_context** %10, align 8
  %121 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %124 = call i32 @rcu_assign_pointer(i32 %122, %struct.netvsc_device* %123)
  %125 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  store %struct.netvsc_device* %125, %struct.netvsc_device** %3, align 8
  br label %153

126:                                              ; preds = %115
  %127 = load %struct.net_device_context*, %struct.net_device_context** %10, align 8
  %128 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @RCU_INIT_POINTER(i32 %129, i32* null)
  %131 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %132 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %131, i32 0, i32 1
  %133 = load %struct.netvsc_channel*, %struct.netvsc_channel** %132, align 8
  %134 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %133, i64 0
  %135 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %134, i32 0, i32 0
  %136 = call i32 @napi_disable(i32* %135)
  %137 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %138 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @vmbus_close(i32 %139)
  br label %141

141:                                              ; preds = %126, %96
  %142 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %143 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %142, i32 0, i32 1
  %144 = load %struct.netvsc_channel*, %struct.netvsc_channel** %143, align 8
  %145 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %144, i64 0
  %146 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %145, i32 0, i32 0
  %147 = call i32 @netif_napi_del(i32* %146)
  %148 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %149 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %148, i32 0, i32 0
  %150 = call i32 @free_netvsc_device(i32* %149)
  %151 = load i32, i32* %7, align 4
  %152 = call %struct.netvsc_device* @ERR_PTR(i32 %151)
  store %struct.netvsc_device* %152, %struct.netvsc_device** %3, align 8
  br label %153

153:                                              ; preds = %141, %119, %19
  %154 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  ret %struct.netvsc_device* %154
}

declare dso_local %struct.net_device* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netvsc_device* @alloc_net_device(...) #1

declare dso_local %struct.netvsc_device* @ERR_PTR(i32) #1

declare dso_local i32 @set_channel_read_mode(i32, i32) #1

declare dso_local i32 @u64_stats_init(i32*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @vmbus_open(i32, i32, i32, i32*, i32, i32, %struct.netvsc_channel*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netvsc_connect_vsp(%struct.hv_device*, %struct.netvsc_device*, %struct.netvsc_device_info*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.netvsc_device*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @vmbus_close(i32) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @free_netvsc_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
