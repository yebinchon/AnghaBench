; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_sge_tx_timer_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_sge_tx_timer_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.adapter = type { i32, %struct.TYPE_5__, %struct.sge }
%struct.TYPE_5__ = type { i32 }
%struct.sge = type { i64*, i32, i32, i32, i32*, %struct.sge_eth_txq, %struct.sge_uld_txq**, i32 }
%struct.sge_eth_txq = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.sge_uld_txq = type { i32 }
%struct.timer_list = type { i32 }

@sge = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@MAX_TIMER_TX_RECLAIM = common dso_local global i32 0, align 4
@TX_QCHECK_PERIOD = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@adap = common dso_local global %struct.adapter* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @sge_tx_timer_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sge_tx_timer_cb(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.sge_uld_txq*, align 8
  %11 = alloca %struct.sge_eth_txq*, align 8
  %12 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = ptrtoint %struct.adapter* %13 to i32
  %15 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sge, i32 0, i32 0), align 4
  %17 = call %struct.adapter* @from_timer(i32 %14, %struct.timer_list* %15, i32 %16)
  store %struct.adapter* %17, %struct.adapter** %3, align 8
  %18 = load %struct.adapter*, %struct.adapter** %3, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 2
  store %struct.sge* %19, %struct.sge** %4, align 8
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %66, %1
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.sge*, %struct.sge** %4, align 8
  %23 = getelementptr inbounds %struct.sge, %struct.sge* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @BITS_TO_LONGS(i32 %24)
  %26 = icmp ult i32 %21, %25
  br i1 %26, label %27, label %69

27:                                               ; preds = %20
  %28 = load %struct.sge*, %struct.sge** %4, align 8
  %29 = getelementptr inbounds %struct.sge, %struct.sge* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %60, %27
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %35
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @__ffs(i64 %39)
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @BITS_PER_LONG, align 4
  %43 = mul i32 %41, %42
  %44 = add i32 %40, %43
  %45 = zext i32 %44 to i64
  store i64 %45, i64* %9, align 8
  %46 = load %struct.sge*, %struct.sge** %4, align 8
  %47 = getelementptr inbounds %struct.sge, %struct.sge* %46, i32 0, i32 6
  %48 = load %struct.sge_uld_txq**, %struct.sge_uld_txq*** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.sge_uld_txq*, %struct.sge_uld_txq** %48, i64 %49
  %51 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %50, align 8
  store %struct.sge_uld_txq* %51, %struct.sge_uld_txq** %10, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.sge*, %struct.sge** %4, align 8
  %54 = getelementptr inbounds %struct.sge, %struct.sge* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = call i32 @clear_bit(i64 %52, i64* %55)
  %57 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %10, align 8
  %58 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %57, i32 0, i32 0
  %59 = call i32 @tasklet_schedule(i32* %58)
  br label %60

60:                                               ; preds = %38
  %61 = load i64, i64* %5, align 8
  %62 = sub i64 %61, 1
  %63 = load i64, i64* %5, align 8
  %64 = and i64 %63, %62
  store i64 %64, i64* %5, align 8
  br label %35

65:                                               ; preds = %35
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %20

69:                                               ; preds = %20
  %70 = load %struct.adapter*, %struct.adapter** %3, align 8
  %71 = getelementptr inbounds %struct.adapter, %struct.adapter* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @is_t4(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %103, label %76

76:                                               ; preds = %69
  %77 = load %struct.sge*, %struct.sge** %4, align 8
  %78 = getelementptr inbounds %struct.sge, %struct.sge* %77, i32 0, i32 5
  store %struct.sge_eth_txq* %78, %struct.sge_eth_txq** %11, align 8
  %79 = load %struct.adapter*, %struct.adapter** %3, align 8
  %80 = getelementptr inbounds %struct.adapter, %struct.adapter* %79, i32 0, i32 0
  %81 = call i32 @spin_lock(i32* %80)
  %82 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %11, align 8
  %83 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %82, i32 0, i32 0
  %84 = call i32 @reclaimable(%struct.TYPE_7__* %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %76
  %88 = load %struct.adapter*, %struct.adapter** %3, align 8
  %89 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %11, align 8
  %90 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %89, i32 0, i32 0
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @free_tx_desc(%struct.adapter* %88, %struct.TYPE_7__* %90, i32 %91, i32 0)
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %11, align 8
  %95 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, %93
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %87, %76
  %100 = load %struct.adapter*, %struct.adapter** %3, align 8
  %101 = getelementptr inbounds %struct.adapter, %struct.adapter* %100, i32 0, i32 0
  %102 = call i32 @spin_unlock(i32* %101)
  br label %103

103:                                              ; preds = %99, %69
  %104 = load i32, i32* @MAX_TIMER_TX_RECLAIM, align 4
  store i32 %104, i32* %8, align 4
  %105 = load %struct.sge*, %struct.sge** %4, align 8
  %106 = getelementptr inbounds %struct.sge, %struct.sge* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %134, %103
  %109 = load %struct.adapter*, %struct.adapter** %3, align 8
  %110 = load %struct.sge*, %struct.sge** %4, align 8
  %111 = getelementptr inbounds %struct.sge, %struct.sge* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %8, align 4
  %117 = call i64 @t4_sge_eth_txq_egress_update(%struct.adapter* %109, i32* %115, i32 %116)
  %118 = load i32, i32* %8, align 4
  %119 = zext i32 %118 to i64
  %120 = sub nsw i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %108
  br label %140

125:                                              ; preds = %108
  %126 = load i32, i32* %7, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %7, align 4
  %128 = load %struct.sge*, %struct.sge** %4, align 8
  %129 = getelementptr inbounds %struct.sge, %struct.sge* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = icmp uge i32 %127, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %132, %125
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.sge*, %struct.sge** %4, align 8
  %137 = getelementptr inbounds %struct.sge, %struct.sge* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %135, %138
  br i1 %139, label %108, label %140

140:                                              ; preds = %134, %124
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.sge*, %struct.sge** %4, align 8
  %143 = getelementptr inbounds %struct.sge, %struct.sge* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 8
  %144 = load i32, i32* %8, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  store i64 2, i64* %6, align 8
  br label %149

147:                                              ; preds = %140
  %148 = load i64, i64* @TX_QCHECK_PERIOD, align 8
  store i64 %148, i64* %6, align 8
  br label %149

149:                                              ; preds = %147, %146
  %150 = load %struct.sge*, %struct.sge** %4, align 8
  %151 = getelementptr inbounds %struct.sge, %struct.sge* %150, i32 0, i32 3
  %152 = load i64, i64* @jiffies, align 8
  %153 = load i64, i64* %6, align 8
  %154 = add i64 %152, %153
  %155 = call i32 @mod_timer(i32* %151, i64 %154)
  ret void
}

declare dso_local %struct.adapter* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32 @clear_bit(i64, i64*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @is_t4(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @reclaimable(%struct.TYPE_7__*) #1

declare dso_local i32 @free_tx_desc(%struct.adapter*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @t4_sge_eth_txq_egress_update(%struct.adapter*, i32*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
