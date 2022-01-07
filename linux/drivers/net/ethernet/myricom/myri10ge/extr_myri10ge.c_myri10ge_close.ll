; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.myri10ge_priv = type { i64, i32, i64, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.myri10ge_cmd = type { i32 }

@MYRI10GE_ETH_RUNNING = common dso_local global i64 0, align 8
@MYRI10GE_ETH_STOPPING = common dso_local global i64 0, align 8
@MXGEFW_CMD_ETHERNET_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Couldn't bring down link\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"never got down irq\0A\00", align 1
@MYRI10GE_ETH_STOPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @myri10ge_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myri10ge_close(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.myri10ge_priv*, align 8
  %5 = alloca %struct.myri10ge_cmd, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.myri10ge_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.myri10ge_priv* %10, %struct.myri10ge_priv** %4, align 8
  %11 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %12 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MYRI10GE_ETH_RUNNING, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %121

17:                                               ; preds = %1
  %18 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %19 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %18, i32 0, i32 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %121

27:                                               ; preds = %17
  %28 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %29 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %28, i32 0, i32 6
  %30 = call i32 @del_timer_sync(i32* %29)
  %31 = load i64, i64* @MYRI10GE_ETH_STOPPING, align 8
  %32 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %33 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %49, %27
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %37 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %34
  %41 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %42 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %41, i32 0, i32 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @napi_disable(i32* %47)
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %34

52:                                               ; preds = %34
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = call i32 @netif_carrier_off(%struct.net_device* %53)
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %55)
  %57 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %58 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %95

61:                                               ; preds = %52
  %62 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %63 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %7, align 4
  %65 = call i32 (...) @mb()
  %66 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %67 = load i32, i32* @MXGEFW_CMD_ETHERNET_DOWN, align 4
  %68 = call i32 @myri10ge_send_cmd(%struct.myri10ge_priv* %66, i32 %67, %struct.myri10ge_cmd* %5, i32 0)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load %struct.net_device*, %struct.net_device** %3, align 8
  %73 = call i32 @netdev_err(%struct.net_device* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %61
  %75 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %76 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %80 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %78, %81
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* @HZ, align 4
  %85 = call i32 @wait_event_timeout(i32 %77, i32 %83, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %88 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %86, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %74
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = call i32 @netdev_err(%struct.net_device* %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %74
  br label %95

95:                                               ; preds = %94, %52
  %96 = load %struct.net_device*, %struct.net_device** %3, align 8
  %97 = call i32 @netif_tx_disable(%struct.net_device* %96)
  %98 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %99 = call i32 @myri10ge_free_irq(%struct.myri10ge_priv* %98)
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %114, %95
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %103 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %100
  %107 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %108 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %107, i32 0, i32 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %111
  %113 = call i32 @myri10ge_free_rings(%struct.TYPE_4__* %112)
  br label %114

114:                                              ; preds = %106
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %100

117:                                              ; preds = %100
  %118 = load i64, i64* @MYRI10GE_ETH_STOPPED, align 8
  %119 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %120 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %117, %26, %16
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.myri10ge_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @myri10ge_send_cmd(%struct.myri10ge_priv*, i32, %struct.myri10ge_cmd*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @myri10ge_free_irq(%struct.myri10ge_priv*) #1

declare dso_local i32 @myri10ge_free_rings(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
