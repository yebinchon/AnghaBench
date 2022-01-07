; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_setup_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_setup_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dpaa_priv = type { i32 }
%struct.tc_mqprio_qopt = type { i32, i32 }

@TC_SETUP_QDISC_MQPRIO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TC_MQPRIO_HW_OFFLOAD_TCS = common dso_local global i32 0, align 4
@DPAA_TC_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Too many traffic classes: max %d supported.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DPAA_TC_TXQ_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i8*)* @dpaa_setup_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa_setup_tc(%struct.net_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dpaa_priv*, align 8
  %9 = alloca %struct.tc_mqprio_qopt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.dpaa_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.dpaa_priv* %13, %struct.dpaa_priv** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.tc_mqprio_qopt*
  store %struct.tc_mqprio_qopt* %15, %struct.tc_mqprio_qopt** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @TC_SETUP_QDISC_MQPRIO, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %87

22:                                               ; preds = %3
  %23 = load i32, i32* @TC_MQPRIO_HW_OFFLOAD_TCS, align 4
  %24 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %9, align 8
  %25 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %9, align 8
  %27 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.dpaa_priv*, %struct.dpaa_priv** %8, align 8
  %31 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %87

35:                                               ; preds = %22
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = call i32 @netdev_reset_tc(%struct.net_device* %39)
  br label %71

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @DPAA_TC_NUM, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = load i32, i32* @DPAA_TC_NUM, align 4
  %48 = call i32 @netdev_err(%struct.net_device* %46, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %87

51:                                               ; preds = %41
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @netdev_set_num_tc(%struct.net_device* %52, i32 %53)
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %67, %51
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @DPAA_TC_TXQ_NUM, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @DPAA_TC_TXQ_NUM, align 4
  %65 = mul nsw i32 %63, %64
  %66 = call i32 @netdev_set_tc_queue(%struct.net_device* %60, i32 %61, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %55

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %38
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %76

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75, %74
  %77 = phi i32 [ %72, %74 ], [ 1, %75 ]
  %78 = load %struct.dpaa_priv*, %struct.dpaa_priv** %8, align 8
  %79 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.net_device*, %struct.net_device** %5, align 8
  %81 = load %struct.dpaa_priv*, %struct.dpaa_priv** %8, align 8
  %82 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @DPAA_TC_TXQ_NUM, align 4
  %85 = mul nsw i32 %83, %84
  %86 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %80, i32 %85)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %76, %45, %34, %19
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.dpaa_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_reset_tc(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @netdev_set_num_tc(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_set_tc_queue(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
