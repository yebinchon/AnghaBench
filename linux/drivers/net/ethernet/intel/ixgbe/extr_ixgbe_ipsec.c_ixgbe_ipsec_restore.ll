; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ipsec.c_ixgbe_ipsec_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ipsec.c_ixgbe_ipsec_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.ixgbe_hw, %struct.ixgbe_ipsec* }
%struct.ixgbe_hw = type { i32 }
%struct.ixgbe_ipsec = type { %struct.rx_ip_sa*, %struct.tx_sa*, %struct.rx_sa* }
%struct.rx_ip_sa = type { i32, i64 }
%struct.tx_sa = type { i32, i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rx_sa = type { i32, i32, i32, i32, %struct.TYPE_4__*, i64 }

@IXGBE_FLAG2_IPSEC_ENABLED = common dso_local global i32 0, align 4
@IXGBE_IPSEC_MAX_SA_COUNT = common dso_local global i32 0, align 4
@IXGBE_RXTXMOD_VF = common dso_local global i32 0, align 4
@IXGBE_IPSEC_MAX_RX_IP_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_ipsec_restore(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_ipsec*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rx_sa*, align 8
  %7 = alloca %struct.tx_sa*, align 8
  %8 = alloca %struct.rx_ip_sa*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %9, i32 0, i32 2
  %11 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %10, align 8
  store %struct.ixgbe_ipsec* %11, %struct.ixgbe_ipsec** %3, align 8
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 1
  store %struct.ixgbe_hw* %13, %struct.ixgbe_hw** %4, align 8
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IXGBE_FLAG2_IPSEC_ENABLED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %143

21:                                               ; preds = %1
  %22 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %23 = call i32 @ixgbe_ipsec_stop_engine(%struct.ixgbe_adapter* %22)
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %25 = call i32 @ixgbe_ipsec_clear_hw_tables(%struct.ixgbe_adapter* %24)
  %26 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %27 = call i32 @ixgbe_ipsec_start_engine(%struct.ixgbe_adapter* %26)
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %113, %21
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @IXGBE_IPSEC_MAX_SA_COUNT, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %116

32:                                               ; preds = %28
  %33 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %3, align 8
  %34 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %33, i32 0, i32 2
  %35 = load %struct.rx_sa*, %struct.rx_sa** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.rx_sa, %struct.rx_sa* %35, i64 %37
  store %struct.rx_sa* %38, %struct.rx_sa** %6, align 8
  %39 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %3, align 8
  %40 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %39, i32 0, i32 1
  %41 = load %struct.tx_sa*, %struct.tx_sa** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.tx_sa, %struct.tx_sa* %41, i64 %43
  store %struct.tx_sa* %44, %struct.tx_sa** %7, align 8
  %45 = load %struct.rx_sa*, %struct.rx_sa** %6, align 8
  %46 = getelementptr inbounds %struct.rx_sa, %struct.rx_sa* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %84

49:                                               ; preds = %32
  %50 = load %struct.rx_sa*, %struct.rx_sa** %6, align 8
  %51 = getelementptr inbounds %struct.rx_sa, %struct.rx_sa* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IXGBE_RXTXMOD_VF, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.rx_sa*, %struct.rx_sa** %6, align 8
  %58 = getelementptr inbounds %struct.rx_sa, %struct.rx_sa* %57, i32 0, i32 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = call i32 @ixgbe_ipsec_del_sa(%struct.TYPE_4__* %59)
  br label %83

61:                                               ; preds = %49
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.rx_sa*, %struct.rx_sa** %6, align 8
  %65 = getelementptr inbounds %struct.rx_sa, %struct.rx_sa* %64, i32 0, i32 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.rx_sa*, %struct.rx_sa** %6, align 8
  %71 = getelementptr inbounds %struct.rx_sa, %struct.rx_sa* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.rx_sa*, %struct.rx_sa** %6, align 8
  %74 = getelementptr inbounds %struct.rx_sa, %struct.rx_sa* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.rx_sa*, %struct.rx_sa** %6, align 8
  %77 = getelementptr inbounds %struct.rx_sa, %struct.rx_sa* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.rx_sa*, %struct.rx_sa** %6, align 8
  %80 = getelementptr inbounds %struct.rx_sa, %struct.rx_sa* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ixgbe_ipsec_set_rx_sa(%struct.ixgbe_hw* %62, i32 %63, i32 %69, i32 %72, i32 %75, i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %61, %56
  br label %84

84:                                               ; preds = %83, %32
  %85 = load %struct.tx_sa*, %struct.tx_sa** %7, align 8
  %86 = getelementptr inbounds %struct.tx_sa, %struct.tx_sa* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %112

89:                                               ; preds = %84
  %90 = load %struct.tx_sa*, %struct.tx_sa** %7, align 8
  %91 = getelementptr inbounds %struct.tx_sa, %struct.tx_sa* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @IXGBE_RXTXMOD_VF, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load %struct.tx_sa*, %struct.tx_sa** %7, align 8
  %98 = getelementptr inbounds %struct.tx_sa, %struct.tx_sa* %97, i32 0, i32 3
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = call i32 @ixgbe_ipsec_del_sa(%struct.TYPE_4__* %99)
  br label %111

101:                                              ; preds = %89
  %102 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.tx_sa*, %struct.tx_sa** %7, align 8
  %105 = getelementptr inbounds %struct.tx_sa, %struct.tx_sa* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.tx_sa*, %struct.tx_sa** %7, align 8
  %108 = getelementptr inbounds %struct.tx_sa, %struct.tx_sa* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ixgbe_ipsec_set_tx_sa(%struct.ixgbe_hw* %102, i32 %103, i32 %106, i32 %109)
  br label %111

111:                                              ; preds = %101, %96
  br label %112

112:                                              ; preds = %111, %84
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %28

116:                                              ; preds = %28
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %140, %116
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @IXGBE_IPSEC_MAX_RX_IP_COUNT, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %143

121:                                              ; preds = %117
  %122 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %3, align 8
  %123 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %122, i32 0, i32 0
  %124 = load %struct.rx_ip_sa*, %struct.rx_ip_sa** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.rx_ip_sa, %struct.rx_ip_sa* %124, i64 %126
  store %struct.rx_ip_sa* %127, %struct.rx_ip_sa** %8, align 8
  %128 = load %struct.rx_ip_sa*, %struct.rx_ip_sa** %8, align 8
  %129 = getelementptr inbounds %struct.rx_ip_sa, %struct.rx_ip_sa* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %121
  %133 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load %struct.rx_ip_sa*, %struct.rx_ip_sa** %8, align 8
  %136 = getelementptr inbounds %struct.rx_ip_sa, %struct.rx_ip_sa* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @ixgbe_ipsec_set_rx_ip(%struct.ixgbe_hw* %133, i32 %134, i32 %137)
  br label %139

139:                                              ; preds = %132, %121
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %117

143:                                              ; preds = %20, %117
  ret void
}

declare dso_local i32 @ixgbe_ipsec_stop_engine(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_ipsec_clear_hw_tables(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_ipsec_start_engine(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_ipsec_del_sa(%struct.TYPE_4__*) #1

declare dso_local i32 @ixgbe_ipsec_set_rx_sa(%struct.ixgbe_hw*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ixgbe_ipsec_set_tx_sa(%struct.ixgbe_hw*, i32, i32, i32) #1

declare dso_local i32 @ixgbe_ipsec_set_rx_ip(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
