; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-main.c_xgbe_alloc_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-main.c_xgbe_alloc_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.device*, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.device = type { i32 }

@XGBE_MAX_DMA_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"alloc_etherdev_mq failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@default_msg_level = common dso_local global i32 0, align 4
@XGBE_DOWN = common dso_local global i32 0, align 4
@XGBE_STOPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xgbe_prv_data* @xgbe_alloc_pdata(%struct.device* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load i32, i32* @XGBE_MAX_DMA_CHANNELS, align 4
  %7 = call %struct.net_device* @alloc_etherdev_mq(i32 56, i32 %6)
  store %struct.net_device* %7, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = icmp ne %struct.net_device* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call i32 @dev_err(%struct.device* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.xgbe_prv_data* @ERR_PTR(i32 %14)
  store %struct.xgbe_prv_data* %15, %struct.xgbe_prv_data** %2, align 8
  br label %66

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = call i32 @SET_NETDEV_DEV(%struct.net_device* %17, %struct.device* %18)
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call %struct.xgbe_prv_data* @netdev_priv(%struct.net_device* %20)
  store %struct.xgbe_prv_data* %21, %struct.xgbe_prv_data** %4, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %24 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %23, i32 0, i32 11
  store %struct.net_device* %22, %struct.net_device** %24, align 8
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %27 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %26, i32 0, i32 10
  store %struct.device* %25, %struct.device** %27, align 8
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %29 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %28, i32 0, i32 9
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %32 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %31, i32 0, i32 8
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %35 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %34, i32 0, i32 7
  %36 = call i32 @mutex_init(i32* %35)
  %37 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %38 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %37, i32 0, i32 6
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %41 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %40, i32 0, i32 5
  %42 = call i32 @mutex_init(i32* %41)
  %43 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %44 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %43, i32 0, i32 4
  %45 = call i32 @init_completion(i32* %44)
  %46 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %47 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %46, i32 0, i32 3
  %48 = call i32 @init_completion(i32* %47)
  %49 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %50 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %49, i32 0, i32 2
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load i32, i32* @debug, align 4
  %53 = load i32, i32* @default_msg_level, align 4
  %54 = call i32 @netif_msg_init(i32 %52, i32 %53)
  %55 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %56 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @XGBE_DOWN, align 4
  %58 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %59 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %58, i32 0, i32 0
  %60 = call i32 @set_bit(i32 %57, i32* %59)
  %61 = load i32, i32* @XGBE_STOPPED, align 4
  %62 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %63 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %62, i32 0, i32 0
  %64 = call i32 @set_bit(i32 %61, i32* %63)
  %65 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  store %struct.xgbe_prv_data* %65, %struct.xgbe_prv_data** %2, align 8
  br label %66

66:                                               ; preds = %16, %10
  %67 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  ret %struct.xgbe_prv_data* %67
}

declare dso_local %struct.net_device* @alloc_etherdev_mq(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.xgbe_prv_data* @ERR_PTR(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #1

declare dso_local %struct.xgbe_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @netif_msg_init(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
