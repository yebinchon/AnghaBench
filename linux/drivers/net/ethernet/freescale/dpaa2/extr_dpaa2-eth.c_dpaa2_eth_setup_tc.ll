; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_setup_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_setup_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dpaa2_eth_priv = type { i32 }
%struct.tc_mqprio_qopt = type { i32, i32 }

@TC_SETUP_QDISC_MQPRIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TC_MQPRIO_HW_OFFLOAD_TCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Max %d traffic classes supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i8*)* @dpaa2_eth_setup_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa2_eth_setup_tc(%struct.net_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dpaa2_eth_priv*, align 8
  %9 = alloca %struct.tc_mqprio_qopt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.dpaa2_eth_priv* %14, %struct.dpaa2_eth_priv** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.tc_mqprio_qopt*
  store %struct.tc_mqprio_qopt* %16, %struct.tc_mqprio_qopt** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @TC_SETUP_QDISC_MQPRIO, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %87

23:                                               ; preds = %3
  %24 = load i32, i32* @TC_MQPRIO_HW_OFFLOAD_TCS, align 4
  %25 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %9, align 8
  %26 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %28 = call i32 @dpaa2_eth_queue_count(%struct.dpaa2_eth_priv* %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %9, align 8
  %30 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %87

38:                                               ; preds = %23
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %41 = call i32 @dpaa2_eth_tc_count(%struct.dpaa2_eth_priv* %40)
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %46 = call i32 @dpaa2_eth_tc_count(%struct.dpaa2_eth_priv* %45)
  %47 = call i32 @netdev_err(%struct.net_device* %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %87

50:                                               ; preds = %38
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load %struct.net_device*, %struct.net_device** %5, align 8
  %55 = call i32 @netdev_reset_tc(%struct.net_device* %54)
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %56, i32 %57)
  br label %84

59:                                               ; preds = %50
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @netdev_set_num_tc(%struct.net_device* %60, i32 %61)
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = mul nsw i32 %64, %65
  %67 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %63, i32 %66)
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %80, %59
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %11, align 4
  %78 = mul nsw i32 %76, %77
  %79 = call i32 @netdev_set_tc_queue(%struct.net_device* %73, i32 %74, i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %68

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %83, %53
  %85 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %86 = call i32 @update_xps(%struct.dpaa2_eth_priv* %85)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %84, %43, %37, %20
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dpaa2_eth_queue_count(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @dpaa2_eth_tc_count(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @netdev_reset_tc(%struct.net_device*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_set_num_tc(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_set_tc_queue(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @update_xps(%struct.dpaa2_eth_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
