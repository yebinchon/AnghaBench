; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mvneta_port = type { i32, i64 }

@.str = private unnamed_addr constant [38 x i8] c"Illegal MTU value %d, rounding to %d\0A\00", align 1
@mvneta_percpu_disable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"unable to setup rxqs after MTU change\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"unable to setup txqs after MTU change\0A\00", align 1
@mvneta_percpu_enable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @mvneta_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvneta_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mvneta_port*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.mvneta_port* @netdev_priv(%struct.net_device* %8)
  store %struct.mvneta_port* %9, %struct.mvneta_port** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @MVNETA_RX_PKT_SIZE(i32 %10)
  %12 = call i32 @IS_ALIGNED(i32 %11, i32 8)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @MVNETA_RX_PKT_SIZE(i32 %17)
  %19 = call i32 @ALIGN(i32 %18, i32 8)
  %20 = call i32 @netdev_info(%struct.net_device* %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @MVNETA_RX_PKT_SIZE(i32 %21)
  %23 = call i32 @ALIGN(i32 %22, i32 8)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %14, %2
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = call i32 @netif_running(%struct.net_device* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %24
  %32 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %33 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @mvneta_bm_update_mtu(%struct.mvneta_port* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = call i32 @netdev_update_features(%struct.net_device* %41)
  store i32 0, i32* %3, align 4
  br label %93

43:                                               ; preds = %24
  %44 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %45 = call i32 @mvneta_stop_dev(%struct.mvneta_port* %44)
  %46 = load i32, i32* @mvneta_percpu_disable, align 4
  %47 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %48 = call i32 @on_each_cpu(i32 %46, %struct.mvneta_port* %47, i32 1)
  %49 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %50 = call i32 @mvneta_cleanup_txqs(%struct.mvneta_port* %49)
  %51 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %52 = call i32 @mvneta_cleanup_rxqs(%struct.mvneta_port* %51)
  %53 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %54 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %43
  %58 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @mvneta_bm_update_mtu(%struct.mvneta_port* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %43
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @MVNETA_RX_PKT_SIZE(i32 %64)
  %66 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %67 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %69 = call i32 @mvneta_setup_rxqs(%struct.mvneta_port* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %61
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = call i32 @netdev_err(%struct.net_device* %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %93

76:                                               ; preds = %61
  %77 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %78 = call i32 @mvneta_setup_txqs(%struct.mvneta_port* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = call i32 @netdev_err(%struct.net_device* %82, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %93

85:                                               ; preds = %76
  %86 = load i32, i32* @mvneta_percpu_enable, align 4
  %87 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %88 = call i32 @on_each_cpu(i32 %86, %struct.mvneta_port* %87, i32 1)
  %89 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %90 = call i32 @mvneta_start_dev(%struct.mvneta_port* %89)
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  %92 = call i32 @netdev_update_features(%struct.net_device* %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %85, %81, %72, %40
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.mvneta_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @MVNETA_RX_PKT_SIZE(i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @mvneta_bm_update_mtu(%struct.mvneta_port*, i32) #1

declare dso_local i32 @netdev_update_features(%struct.net_device*) #1

declare dso_local i32 @mvneta_stop_dev(%struct.mvneta_port*) #1

declare dso_local i32 @on_each_cpu(i32, %struct.mvneta_port*, i32) #1

declare dso_local i32 @mvneta_cleanup_txqs(%struct.mvneta_port*) #1

declare dso_local i32 @mvneta_cleanup_rxqs(%struct.mvneta_port*) #1

declare dso_local i32 @mvneta_setup_rxqs(%struct.mvneta_port*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @mvneta_setup_txqs(%struct.mvneta_port*) #1

declare dso_local i32 @mvneta_start_dev(%struct.mvneta_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
