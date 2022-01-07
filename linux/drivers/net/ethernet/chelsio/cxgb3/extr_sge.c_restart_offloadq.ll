; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_restart_offloadq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_restart_offloadq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.sge_qset = type { i32, i32, %struct.sge_txq* }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.port_info = type { %struct.adapter* }
%struct.adapter = type { i32 }

@TXQ_OFLD = common dso_local global i64 0, align 8
@TX_RECLAIM_CHUNK = common dso_local global i32 0, align 4
@A_SG_KDOORBELL = common dso_local global i32 0, align 4
@F_SELEGRCNTX = common dso_local global i32 0, align 4
@TXQ_LAST_PKT_DB = common dso_local global i64 0, align 8
@TXQ_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @restart_offloadq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restart_offloadq(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sge_qset*, align 8
  %5 = alloca %struct.sge_txq*, align 8
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = inttoptr i64 %12 to %struct.sge_qset*
  store %struct.sge_qset* %13, %struct.sge_qset** %4, align 8
  %14 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %15 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %14, i32 0, i32 2
  %16 = load %struct.sge_txq*, %struct.sge_txq** %15, align 8
  %17 = load i64, i64* @TXQ_OFLD, align 8
  %18 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %16, i64 %17
  store %struct.sge_txq* %18, %struct.sge_txq** %5, align 8
  %19 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %20 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.port_info* @netdev_priv(i32 %21)
  store %struct.port_info* %22, %struct.port_info** %6, align 8
  %23 = load %struct.port_info*, %struct.port_info** %6, align 8
  %24 = getelementptr inbounds %struct.port_info, %struct.port_info* %23, i32 0, i32 0
  %25 = load %struct.adapter*, %struct.adapter** %24, align 8
  store %struct.adapter* %25, %struct.adapter** %7, align 8
  store i32 0, i32* %8, align 4
  %26 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %27 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %26, i32 0, i32 6
  %28 = call i32 @spin_lock(i32* %27)
  br label %29

29:                                               ; preds = %70, %1
  %30 = load %struct.adapter*, %struct.adapter** %7, align 8
  %31 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %32 = load i32, i32* @TX_RECLAIM_CHUNK, align 4
  %33 = call i32 @reclaim_completed_tx(%struct.adapter* %30, %struct.sge_txq* %31, i32 %32)
  br label %34

34:                                               ; preds = %131, %29
  %35 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %36 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %35, i32 0, i32 7
  %37 = call %struct.sk_buff* @skb_peek(i32* %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %3, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %39, label %153

39:                                               ; preds = %34
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %11, align 4
  %43 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %44 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %47 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub i32 %45, %48
  %50 = load i32, i32* %11, align 4
  %51 = icmp ult i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %39
  %56 = load i64, i64* @TXQ_OFLD, align 8
  %57 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %58 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %57, i32 0, i32 0
  %59 = call i32 @set_bit(i64 %56, i32* %58)
  %60 = call i32 (...) @smp_mb__after_atomic()
  %61 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %62 = call i64 @should_restart_tx(%struct.sge_txq* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %55
  %65 = load i64, i64* @TXQ_OFLD, align 8
  %66 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %67 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %66, i32 0, i32 0
  %68 = call i64 @test_and_clear_bit(i64 %65, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %29

71:                                               ; preds = %64, %55
  %72 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %73 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %153

76:                                               ; preds = %39
  %77 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %78 = call i32 @immediate(%struct.sk_buff* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %76
  %81 = load %struct.adapter*, %struct.adapter** %7, align 8
  %82 = getelementptr inbounds %struct.adapter, %struct.adapter* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i32*
  %89 = call i64 @map_skb(i32 %83, %struct.sk_buff* %84, i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  br label %153

92:                                               ; preds = %80, %76
  %93 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %94 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %98 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %102 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %106 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = add i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %8, align 4
  %111 = add i32 %110, %109
  store i32 %111, i32* %8, align 4
  %112 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %113 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %116 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp uge i32 %114, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %92
  %120 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %121 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %124 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = sub i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %128 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = xor i32 %129, 1
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %119, %92
  %132 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %133 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %134 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %133, i32 0, i32 7
  %135 = call i32 @__skb_unlink(%struct.sk_buff* %132, i32* %134)
  %136 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %137 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %136, i32 0, i32 6
  %138 = call i32 @spin_unlock(i32* %137)
  %139 = load %struct.adapter*, %struct.adapter** %7, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %141 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to i32*
  %149 = call i32 @write_ofld_wr(%struct.adapter* %139, %struct.sk_buff* %140, %struct.sge_txq* %141, i32 %142, i32 %143, i32 %144, i32* %148)
  %150 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %151 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %150, i32 0, i32 6
  %152 = call i32 @spin_lock(i32* %151)
  br label %34

153:                                              ; preds = %91, %71, %34
  %154 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %155 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %154, i32 0, i32 6
  %156 = call i32 @spin_unlock(i32* %155)
  %157 = call i32 (...) @wmb()
  %158 = load i32, i32* %8, align 4
  %159 = call i64 @likely(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %153
  %162 = load %struct.adapter*, %struct.adapter** %7, align 8
  %163 = load i32, i32* @A_SG_KDOORBELL, align 4
  %164 = load i32, i32* @F_SELEGRCNTX, align 4
  %165 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %166 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @V_EGRCNTX(i32 %167)
  %169 = or i32 %164, %168
  %170 = call i32 @t3_write_reg(%struct.adapter* %162, i32 %163, i32 %169)
  br label %171

171:                                              ; preds = %161, %153
  ret void
}

declare dso_local %struct.port_info* @netdev_priv(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @reclaim_completed_tx(%struct.adapter*, %struct.sge_txq*, i32) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @set_bit(i64, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i64 @should_restart_tx(%struct.sge_txq*) #1

declare dso_local i64 @test_and_clear_bit(i64, i32*) #1

declare dso_local i32 @immediate(%struct.sk_buff*) #1

declare dso_local i64 @map_skb(i32, %struct.sk_buff*, i32*) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_ofld_wr(%struct.adapter*, %struct.sk_buff*, %struct.sge_txq*, i32, i32, i32, i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_EGRCNTX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
