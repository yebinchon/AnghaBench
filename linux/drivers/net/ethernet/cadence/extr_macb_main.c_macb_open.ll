; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32 }
%struct.macb = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__, %struct.macb_queue*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.net_device*)* }
%struct.TYPE_4__ = type { i32 (%struct.macb.0*)* }
%struct.macb.0 = type opaque
%struct.macb_queue = type { i32 }

@ETH_HLEN = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"open\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Unable to allocate DMA memory (error %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @macb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macb_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.macb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.macb_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.macb* @netdev_priv(%struct.net_device* %9)
  store %struct.macb* %10, %struct.macb** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ETH_HLEN, align 8
  %15 = add i64 %13, %14
  %16 = load i64, i64* @ETH_FCS_LEN, align 8
  %17 = add i64 %15, %16
  %18 = load i64, i64* @NET_IP_ALIGN, align 8
  %19 = add i64 %17, %18
  store i64 %19, i64* %5, align 8
  %20 = load %struct.macb*, %struct.macb** %4, align 8
  %21 = getelementptr inbounds %struct.macb, %struct.macb* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @netdev_dbg(i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.macb*, %struct.macb** %4, align 8
  %25 = getelementptr inbounds %struct.macb, %struct.macb* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = call i32 @pm_runtime_get_sync(i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %102

32:                                               ; preds = %1
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @netif_carrier_off(%struct.net_device* %33)
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @EAGAIN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %102

42:                                               ; preds = %32
  %43 = load %struct.macb*, %struct.macb** %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @macb_init_rx_buffer_size(%struct.macb* %43, i64 %44)
  %46 = load %struct.macb*, %struct.macb** %4, align 8
  %47 = call i32 @macb_alloc_consistent(%struct.macb* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @netdev_err(%struct.net_device* %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %102

54:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  %55 = load %struct.macb*, %struct.macb** %4, align 8
  %56 = getelementptr inbounds %struct.macb, %struct.macb* %55, i32 0, i32 4
  %57 = load %struct.macb_queue*, %struct.macb_queue** %56, align 8
  store %struct.macb_queue* %57, %struct.macb_queue** %6, align 8
  br label %58

58:                                               ; preds = %68, %54
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.macb*, %struct.macb** %4, align 8
  %61 = getelementptr inbounds %struct.macb, %struct.macb* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.macb_queue*, %struct.macb_queue** %6, align 8
  %66 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %65, i32 0, i32 0
  %67 = call i32 @napi_enable(i32* %66)
  br label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %7, align 4
  %71 = load %struct.macb_queue*, %struct.macb_queue** %6, align 8
  %72 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %71, i32 1
  store %struct.macb_queue* %72, %struct.macb_queue** %6, align 8
  br label %58

73:                                               ; preds = %58
  %74 = load %struct.macb*, %struct.macb** %4, align 8
  %75 = getelementptr inbounds %struct.macb, %struct.macb* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32 (%struct.macb.0*)*, i32 (%struct.macb.0*)** %76, align 8
  %78 = load %struct.macb*, %struct.macb** %4, align 8
  %79 = bitcast %struct.macb* %78 to %struct.macb.0*
  %80 = call i32 %77(%struct.macb.0* %79)
  %81 = load %struct.macb*, %struct.macb** %4, align 8
  %82 = call i32 @macb_init_hw(%struct.macb* %81)
  %83 = load %struct.net_device*, %struct.net_device** %3, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @phy_start(i32 %85)
  %87 = load %struct.net_device*, %struct.net_device** %3, align 8
  %88 = call i32 @netif_tx_start_all_queues(%struct.net_device* %87)
  %89 = load %struct.macb*, %struct.macb** %4, align 8
  %90 = getelementptr inbounds %struct.macb, %struct.macb* %89, i32 0, i32 2
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = icmp ne %struct.TYPE_5__* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %73
  %94 = load %struct.macb*, %struct.macb** %4, align 8
  %95 = getelementptr inbounds %struct.macb, %struct.macb* %94, i32 0, i32 2
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %97, align 8
  %99 = load %struct.net_device*, %struct.net_device** %3, align 8
  %100 = call i32 %98(%struct.net_device* %99)
  br label %101

101:                                              ; preds = %93, %73
  br label %102

102:                                              ; preds = %101, %50, %39, %31
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load %struct.macb*, %struct.macb** %4, align 8
  %107 = getelementptr inbounds %struct.macb, %struct.macb* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = call i32 @pm_runtime_put_sync(i32* %109)
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %2, align 4
  br label %113

112:                                              ; preds = %102
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %105
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.macb* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @macb_init_rx_buffer_size(%struct.macb*, i64) #1

declare dso_local i32 @macb_alloc_consistent(%struct.macb*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @macb_init_hw(%struct.macb*) #1

declare dso_local i32 @phy_start(i32) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
