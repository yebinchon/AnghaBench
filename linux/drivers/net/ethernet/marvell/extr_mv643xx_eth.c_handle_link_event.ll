; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_handle_link_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_handle_link_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_private = type { i32, %struct.tx_queue*, %struct.net_device* }
%struct.tx_queue = type { i32 }
%struct.net_device = type { i32 }

@PORT_STATUS = common dso_local global i32 0, align 4
@LINK_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"link down\0A\00", align 1
@PORT_SPEED_MASK = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i32 0, align 4
@FLOW_CONTROL_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"link up, %d Mb/s, %s duplex, flow control %sabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv643xx_eth_private*)* @handle_link_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_link_event(%struct.mv643xx_eth_private* %0) #0 {
  %2 = alloca %struct.mv643xx_eth_private*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tx_queue*, align 8
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %2, align 8
  %10 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %11 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %10, i32 0, i32 2
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %3, align 8
  %13 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %14 = load i32, i32* @PORT_STATUS, align 4
  %15 = call i32 @rdlp(%struct.mv643xx_eth_private* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @LINK_UP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %54, label %20

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i64 @netif_carrier_ok(%struct.net_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %20
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @netif_carrier_off(%struct.net_device* %27)
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %49, %24
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %32 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %37 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %36, i32 0, i32 1
  %38 = load %struct.tx_queue*, %struct.tx_queue** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %38, i64 %40
  store %struct.tx_queue* %41, %struct.tx_queue** %9, align 8
  %42 = load %struct.tx_queue*, %struct.tx_queue** %9, align 8
  %43 = load %struct.tx_queue*, %struct.tx_queue** %9, align 8
  %44 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @txq_reclaim(%struct.tx_queue* %42, i32 %45, i32 1)
  %47 = load %struct.tx_queue*, %struct.tx_queue** %9, align 8
  %48 = call i32 @txq_reset_hw_ptr(%struct.tx_queue* %47)
  br label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %29

52:                                               ; preds = %29
  br label %53

53:                                               ; preds = %52, %20
  br label %92

54:                                               ; preds = %1
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @PORT_SPEED_MASK, align 4
  %57 = and i32 %55, %56
  switch i32 %57, label %61 [
    i32 130, label %58
    i32 129, label %59
    i32 128, label %60
  ]

58:                                               ; preds = %54
  store i32 10, i32* %5, align 4
  br label %62

59:                                               ; preds = %54
  store i32 100, i32* %5, align 4
  br label %62

60:                                               ; preds = %54
  store i32 1000, i32* %5, align 4
  br label %62

61:                                               ; preds = %54
  store i32 -1, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %60, %59, %58
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @FULL_DUPLEX, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @FLOW_CONTROL_ENABLED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 1, i32 0
  store i32 %74, i32* %7, align 4
  %75 = load %struct.net_device*, %struct.net_device** %3, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %85 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %75, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %76, i8* %80, i8* %84)
  %86 = load %struct.net_device*, %struct.net_device** %3, align 8
  %87 = call i64 @netif_carrier_ok(%struct.net_device* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %62
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = call i32 @netif_carrier_on(%struct.net_device* %90)
  br label %92

92:                                               ; preds = %53, %89, %62
  ret void
}

declare dso_local i32 @rdlp(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @txq_reclaim(%struct.tx_queue*, i32, i32) #1

declare dso_local i32 @txq_reset_hw_ptr(%struct.tx_queue*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
