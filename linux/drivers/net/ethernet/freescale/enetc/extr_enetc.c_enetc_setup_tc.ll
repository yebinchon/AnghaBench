; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_setup_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_setup_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.enetc_ndev_priv = type { i32, %struct.TYPE_2__*, %struct.enetc_bdr** }
%struct.TYPE_2__ = type { i32 }
%struct.enetc_bdr = type { i32 }
%struct.tc_mqprio_qopt = type { i32, i32 }

@TC_SETUP_QDISC_MQPRIO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TC_MQPRIO_HW_OFFLOAD_TCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Max %d traffic classes supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enetc_setup_tc(%struct.net_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.enetc_ndev_priv*, align 8
  %9 = alloca %struct.tc_mqprio_qopt*, align 8
  %10 = alloca %struct.enetc_bdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.enetc_ndev_priv* %14, %struct.enetc_ndev_priv** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.tc_mqprio_qopt*
  store %struct.tc_mqprio_qopt* %16, %struct.tc_mqprio_qopt** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @TC_SETUP_QDISC_MQPRIO, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %125

23:                                               ; preds = %3
  %24 = load i32, i32* @TC_MQPRIO_HW_OFFLOAD_TCS, align 4
  %25 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %9, align 8
  %26 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %9, align 8
  %28 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %66, label %32

32:                                               ; preds = %23
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = call i32 @netdev_reset_tc(%struct.net_device* %33)
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %8, align 8
  %37 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %35, i32 %38)
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %62, %32
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %8, align 8
  %43 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %40
  %47 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %8, align 8
  %48 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %47, i32 0, i32 2
  %49 = load %struct.enetc_bdr**, %struct.enetc_bdr*** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.enetc_bdr*, %struct.enetc_bdr** %49, i64 %51
  %53 = load %struct.enetc_bdr*, %struct.enetc_bdr** %52, align 8
  store %struct.enetc_bdr* %53, %struct.enetc_bdr** %10, align 8
  %54 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %8, align 8
  %55 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load %struct.enetc_bdr*, %struct.enetc_bdr** %10, align 8
  %59 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @enetc_set_bdr_prio(i32* %57, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %46
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %40

65:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %125

66:                                               ; preds = %23
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %8, align 8
  %69 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %67, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %8, align 8
  %75 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @netdev_err(%struct.net_device* %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %125

80:                                               ; preds = %66
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %102, %80
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %105

85:                                               ; preds = %81
  %86 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %8, align 8
  %87 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %86, i32 0, i32 2
  %88 = load %struct.enetc_bdr**, %struct.enetc_bdr*** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.enetc_bdr*, %struct.enetc_bdr** %88, i64 %90
  %92 = load %struct.enetc_bdr*, %struct.enetc_bdr** %91, align 8
  store %struct.enetc_bdr* %92, %struct.enetc_bdr** %10, align 8
  %93 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %8, align 8
  %94 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load %struct.enetc_bdr*, %struct.enetc_bdr** %10, align 8
  %98 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @enetc_set_bdr_prio(i32* %96, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %85
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %81

105:                                              ; preds = %81
  %106 = load %struct.net_device*, %struct.net_device** %5, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %106, i32 %107)
  %109 = load %struct.net_device*, %struct.net_device** %5, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @netdev_set_num_tc(%struct.net_device* %109, i32 %110)
  store i32 0, i32* %12, align 4
  br label %112

112:                                              ; preds = %121, %105
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = load %struct.net_device*, %struct.net_device** %5, align 8
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @netdev_set_tc_queue(%struct.net_device* %117, i32 %118, i32 1, i32 %119)
  br label %121

121:                                              ; preds = %116
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %112

124:                                              ; preds = %112
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %72, %65, %20
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_reset_tc(%struct.net_device*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @enetc_set_bdr_prio(i32*, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @netdev_set_num_tc(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_set_tc_queue(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
