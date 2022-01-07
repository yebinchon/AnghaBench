; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_ethtool.c_ef4_ethtool_get_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_ethtool.c_ef4_ethtool_get_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32, i32, i32, i32 }
%struct.ef4_nic = type { i32 }

@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@EF4_REV_FALCON_B0 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@RX_CLS_LOC_SPECIAL = common dso_local global i32 0, align 4
@EF4_FILTER_PRI_MANUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32*)* @ef4_ethtool_get_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_ethtool_get_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_rxnfc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ef4_nic*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.ef4_nic* @netdev_priv(%struct.net_device* %11)
  store %struct.ef4_nic* %12, %struct.ef4_nic** %8, align 8
  %13 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %14 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %120 [
    i32 132, label %16
    i32 133, label %22
    i32 135, label %55
    i32 134, label %79
    i32 136, label %91
  ]

16:                                               ; preds = %3
  %17 = load %struct.ef4_nic*, %struct.ef4_nic** %8, align 8
  %18 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %21 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  store i32 0, i32* %4, align 4
  br label %123

22:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %23 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %24 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %26 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %45 [
    i32 129, label %28
    i32 128, label %36
    i32 130, label %36
    i32 137, label %36
    i32 131, label %36
  ]

28:                                               ; preds = %22
  %29 = load i32, i32* @RXH_L4_B_0_1, align 4
  %30 = load i32, i32* @RXH_L4_B_2_3, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %33 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %22, %22, %22, %22, %28
  %37 = load i32, i32* @RXH_IP_SRC, align 4
  %38 = load i32, i32* @RXH_IP_DST, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %41 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @EF4_REV_FALCON_B0, align 4
  store i32 %44, i32* %9, align 4
  br label %46

45:                                               ; preds = %22
  br label %46

46:                                               ; preds = %45, %36
  %47 = load %struct.ef4_nic*, %struct.ef4_nic** %8, align 8
  %48 = call i32 @ef4_nic_rev(%struct.ef4_nic* %47)
  %49 = load i32, i32* %9, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %53 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %46
  store i32 0, i32* %4, align 4
  br label %123

55:                                               ; preds = %3
  %56 = load %struct.ef4_nic*, %struct.ef4_nic** %8, align 8
  %57 = call i8* @ef4_filter_get_rx_id_limit(%struct.ef4_nic* %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %60 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %62 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i32, i32* @EOPNOTSUPP, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %123

68:                                               ; preds = %55
  %69 = load i32, i32* @RX_CLS_LOC_SPECIAL, align 4
  %70 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %71 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.ef4_nic*, %struct.ef4_nic** %8, align 8
  %75 = load i32, i32* @EF4_FILTER_PRI_MANUAL, align 4
  %76 = call i32 @ef4_filter_count_rx_used(%struct.ef4_nic* %74, i32 %75)
  %77 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %78 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  store i32 0, i32* %4, align 4
  br label %123

79:                                               ; preds = %3
  %80 = load %struct.ef4_nic*, %struct.ef4_nic** %8, align 8
  %81 = call i8* @ef4_filter_get_rx_id_limit(%struct.ef4_nic* %80)
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* @EOPNOTSUPP, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %123

86:                                               ; preds = %79
  %87 = load %struct.ef4_nic*, %struct.ef4_nic** %8, align 8
  %88 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %89 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %88, i32 0, i32 3
  %90 = call i32 @ef4_ethtool_get_class_rule(%struct.ef4_nic* %87, i32* %89)
  store i32 %90, i32* %4, align 4
  br label %123

91:                                               ; preds = %3
  %92 = load %struct.ef4_nic*, %struct.ef4_nic** %8, align 8
  %93 = call i8* @ef4_filter_get_rx_id_limit(%struct.ef4_nic* %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %96 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %98 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %91
  %102 = load i32, i32* @EOPNOTSUPP, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %123

104:                                              ; preds = %91
  %105 = load %struct.ef4_nic*, %struct.ef4_nic** %8, align 8
  %106 = load i32, i32* @EF4_FILTER_PRI_MANUAL, align 4
  %107 = load i32*, i32** %7, align 8
  %108 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %109 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ef4_filter_get_rx_ids(%struct.ef4_nic* %105, i32 %106, i32* %107, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %104
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %4, align 4
  br label %123

116:                                              ; preds = %104
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %119 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  store i32 0, i32* %4, align 4
  br label %123

120:                                              ; preds = %3
  %121 = load i32, i32* @EOPNOTSUPP, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %120, %116, %114, %101, %86, %83, %68, %65, %54, %16
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.ef4_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ef4_nic_rev(%struct.ef4_nic*) #1

declare dso_local i8* @ef4_filter_get_rx_id_limit(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_filter_count_rx_used(%struct.ef4_nic*, i32) #1

declare dso_local i32 @ef4_ethtool_get_class_rule(%struct.ef4_nic*, i32*) #1

declare dso_local i32 @ef4_filter_get_rx_ids(%struct.ef4_nic*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
