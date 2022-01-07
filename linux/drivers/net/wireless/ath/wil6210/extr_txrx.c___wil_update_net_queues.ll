; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c___wil_update_net_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c___wil_update_net_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { %struct.wil_ring*, %struct.wil_ring_tx_data*, i32 }
%struct.wil_ring_tx_data = type { i64, i32 }
%struct.wil6210_vif = type { i64, i32 }
%struct.wil_ring = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"vring %d, mid %d, check_stop=%d, stopped=%d\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"check_stop=%d, mid=%d, stopped=%d\00", align 1
@drop_if_ring_full = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"netif_tx_stop called\0A\00", align 1
@wil_status_suspending = common dso_local global i32 0, align 4
@wil_status_suspended = common dso_local global i32 0, align 4
@WIL6210_MAX_TX_RINGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"ring %d full, can't wake\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"calling netif_tx_wake\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_priv*, %struct.wil6210_vif*, %struct.wil_ring*, i32)* @__wil_update_net_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__wil_update_net_queues(%struct.wil6210_priv* %0, %struct.wil6210_vif* %1, %struct.wil_ring* %2, i32 %3) #0 {
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca %struct.wil6210_vif*, align 8
  %7 = alloca %struct.wil_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wil_ring*, align 8
  %12 = alloca %struct.wil_ring_tx_data*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %5, align 8
  store %struct.wil6210_vif* %1, %struct.wil6210_vif** %6, align 8
  store %struct.wil_ring* %2, %struct.wil_ring** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %14 = call i32 @wil_get_min_tx_ring_id(%struct.wil6210_priv* %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %16 = icmp ne %struct.wil6210_vif* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %179

22:                                               ; preds = %4
  %23 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %24 = icmp ne %struct.wil_ring* %23, null
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  %26 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %27 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %28 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %29 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %28, i32 0, i32 0
  %30 = load %struct.wil_ring*, %struct.wil_ring** %29, align 8
  %31 = ptrtoint %struct.wil_ring* %27 to i64
  %32 = ptrtoint %struct.wil_ring* %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %37 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %41 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_txrx(%struct.wil6210_priv* %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %35, i64 %38, i32 %39, i32 %42)
  br label %54

44:                                               ; preds = %22
  %45 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %48 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %51 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_txrx(%struct.wil6210_priv* %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %46, i64 %49, i32 %52)
  br label %54

54:                                               ; preds = %44, %25
  %55 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %56 = icmp ne %struct.wil_ring* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i64, i64* @drop_if_ring_full, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %179

61:                                               ; preds = %57, %54
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %64 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %179

68:                                               ; preds = %61
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %68
  %72 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %73 = icmp ne %struct.wil_ring* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %76 = call i32 @wil_ring_avail_low(%struct.wil_ring* %75)
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74, %71
  %80 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %81 = call i32 @vif_to_ndev(%struct.wil6210_vif* %80)
  %82 = call i32 @netif_tx_stop_all_queues(i32 %81)
  %83 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %84 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %83, i32 0, i32 1
  store i32 1, i32* %84, align 8
  %85 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %86 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_txrx(%struct.wil6210_priv* %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %87

87:                                               ; preds = %79, %74
  br label %179

88:                                               ; preds = %68
  %89 = load i32, i32* @wil_status_suspending, align 4
  %90 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %91 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @test_bit(i32 %89, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* @wil_status_suspended, align 4
  %97 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %98 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @test_bit(i32 %96, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95, %88
  br label %179

103:                                              ; preds = %95
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %161, %103
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @WIL6210_MAX_TX_RINGS, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %164

109:                                              ; preds = %105
  %110 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %111 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %110, i32 0, i32 0
  %112 = load %struct.wil_ring*, %struct.wil_ring** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %112, i64 %114
  store %struct.wil_ring* %115, %struct.wil_ring** %11, align 8
  %116 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %117 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %116, i32 0, i32 1
  %118 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %118, i64 %120
  store %struct.wil_ring_tx_data* %121, %struct.wil_ring_tx_data** %12, align 8
  %122 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %12, align 8
  %123 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %126 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %124, %127
  br i1 %128, label %143, label %129

129:                                              ; preds = %109
  %130 = load %struct.wil_ring*, %struct.wil_ring** %11, align 8
  %131 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %129
  %135 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %12, align 8
  %136 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load %struct.wil_ring*, %struct.wil_ring** %11, align 8
  %141 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %142 = icmp eq %struct.wil_ring* %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %139, %134, %129, %109
  br label %161

144:                                              ; preds = %139
  %145 = load %struct.wil_ring*, %struct.wil_ring** %11, align 8
  %146 = call i32 @wil_ring_avail_low(%struct.wil_ring* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %144
  %149 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %150 = load %struct.wil_ring*, %struct.wil_ring** %11, align 8
  %151 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %152 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %151, i32 0, i32 0
  %153 = load %struct.wil_ring*, %struct.wil_ring** %152, align 8
  %154 = ptrtoint %struct.wil_ring* %150 to i64
  %155 = ptrtoint %struct.wil_ring* %153 to i64
  %156 = sub i64 %154, %155
  %157 = sdiv exact i64 %156, 4
  %158 = trunc i64 %157 to i32
  %159 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_txrx(%struct.wil6210_priv* %149, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %158)
  br label %179

160:                                              ; preds = %144
  br label %161

161:                                              ; preds = %160, %143
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %105

164:                                              ; preds = %105
  %165 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %166 = icmp ne %struct.wil_ring* %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %169 = call i64 @wil_ring_avail_high(%struct.wil_ring* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %167, %164
  %172 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %173 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_txrx(%struct.wil6210_priv* %172, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %174 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %175 = call i32 @vif_to_ndev(%struct.wil6210_vif* %174)
  %176 = call i32 @netif_tx_wake_all_queues(i32 %175)
  %177 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %178 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %177, i32 0, i32 1
  store i32 0, i32* %178, align 8
  br label %179

179:                                              ; preds = %21, %60, %67, %87, %102, %148, %171, %167
  ret void
}

declare dso_local i32 @wil_get_min_tx_ring_id(%struct.wil6210_priv*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wil_dbg_txrx(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i32 @wil_ring_avail_low(%struct.wil_ring*) #1

declare dso_local i32 @netif_tx_stop_all_queues(i32) #1

declare dso_local i32 @vif_to_ndev(%struct.wil6210_vif*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @wil_ring_avail_high(%struct.wil_ring*) #1

declare dso_local i32 @netif_tx_wake_all_queues(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
