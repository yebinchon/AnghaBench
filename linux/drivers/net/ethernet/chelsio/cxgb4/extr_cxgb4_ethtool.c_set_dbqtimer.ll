; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_set_dbqtimer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_set_dbqtimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port_info = type { i64, i32, %struct.adapter* }
%struct.adapter = type { i32, i32, i32, %struct.sge }
%struct.sge = type { i32*, %struct.sge_eth_txq* }
%struct.sge_eth_txq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CXGB4_SGE_DBQ_TIMER = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@CXGB4_FULL_INIT_DONE = common dso_local global i32 0, align 4
@FW_PARAMS_MNEM_DMAQ = common dso_local global i32 0, align 4
@FW_PARAMS_PARAM_DMAQ_EQ_TIMERIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @set_dbqtimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_dbqtimer(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.port_info*, align 8
  %12 = alloca %struct.adapter*, align 8
  %13 = alloca %struct.sge*, align 8
  %14 = alloca %struct.sge_eth_txq*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call %struct.port_info* @netdev_priv(%struct.net_device* %18)
  store %struct.port_info* %19, %struct.port_info** %11, align 8
  %20 = load %struct.port_info*, %struct.port_info** %11, align 8
  %21 = getelementptr inbounds %struct.port_info, %struct.port_info* %20, i32 0, i32 2
  %22 = load %struct.adapter*, %struct.adapter** %21, align 8
  store %struct.adapter* %22, %struct.adapter** %12, align 8
  %23 = load %struct.adapter*, %struct.adapter** %12, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 3
  store %struct.sge* %24, %struct.sge** %13, align 8
  %25 = load %struct.adapter*, %struct.adapter** %12, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CXGB4_SGE_DBQ_TIMER, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %131

32:                                               ; preds = %2
  %33 = load i32, i32* @INT_MAX, align 4
  store i32 %33, i32* %10, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %64, %32
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.sge*, %struct.sge** %13, align 8
  %37 = getelementptr inbounds %struct.sge, %struct.sge* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @ARRAY_SIZE(i32* %38)
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %34
  %42 = load %struct.sge*, %struct.sge** %13, align 8
  %43 = getelementptr inbounds %struct.sge, %struct.sge* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %48, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %53, %41
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %56
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %34

67:                                               ; preds = %34
  %68 = load %struct.sge*, %struct.sge** %13, align 8
  %69 = getelementptr inbounds %struct.sge, %struct.sge* %68, i32 0, i32 1
  %70 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %69, align 8
  %71 = load %struct.port_info*, %struct.port_info** %11, align 8
  %72 = getelementptr inbounds %struct.port_info, %struct.port_info* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %70, i64 %73
  store %struct.sge_eth_txq* %74, %struct.sge_eth_txq** %14, align 8
  %75 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %14, align 8
  %76 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %131

81:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %125, %81
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.port_info*, %struct.port_info** %11, align 8
  %85 = getelementptr inbounds %struct.port_info, %struct.port_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %130

88:                                               ; preds = %82
  %89 = load %struct.adapter*, %struct.adapter** %12, align 8
  %90 = getelementptr inbounds %struct.adapter, %struct.adapter* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @CXGB4_FULL_INIT_DONE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %121

95:                                               ; preds = %88
  %96 = load i32, i32* @FW_PARAMS_MNEM_DMAQ, align 4
  %97 = call i32 @FW_PARAMS_MNEM_V(i32 %96)
  %98 = load i32, i32* @FW_PARAMS_PARAM_DMAQ_EQ_TIMERIX, align 4
  %99 = call i32 @FW_PARAMS_PARAM_X_V(i32 %98)
  %100 = or i32 %97, %99
  %101 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %14, align 8
  %102 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @FW_PARAMS_PARAM_YZ_V(i32 %104)
  %106 = or i32 %100, %105
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %16, align 4
  %108 = load %struct.adapter*, %struct.adapter** %12, align 8
  %109 = load %struct.adapter*, %struct.adapter** %12, align 8
  %110 = getelementptr inbounds %struct.adapter, %struct.adapter* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.adapter*, %struct.adapter** %12, align 8
  %113 = getelementptr inbounds %struct.adapter, %struct.adapter* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @t4_set_params(%struct.adapter* %108, i32 %111, i32 %114, i32 0, i32 1, i32* %15, i32* %16)
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* %17, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %95
  %119 = load i32, i32* %17, align 4
  store i32 %119, i32* %3, align 4
  br label %131

120:                                              ; preds = %95
  br label %121

121:                                              ; preds = %120, %88
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %14, align 8
  %124 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  %128 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %14, align 8
  %129 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %128, i32 1
  store %struct.sge_eth_txq* %129, %struct.sge_eth_txq** %14, align 8
  br label %82

130:                                              ; preds = %82
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %118, %80, %31
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @FW_PARAMS_MNEM_V(i32) #1

declare dso_local i32 @FW_PARAMS_PARAM_X_V(i32) #1

declare dso_local i32 @FW_PARAMS_PARAM_YZ_V(i32) #1

declare dso_local i32 @t4_set_params(%struct.adapter*, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
