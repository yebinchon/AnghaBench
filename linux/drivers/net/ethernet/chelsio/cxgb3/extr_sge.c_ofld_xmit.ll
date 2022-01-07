; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_ofld_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_ofld_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_txq = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i64 }

@TX_RECLAIM_CHUNK = common dso_local global i32 0, align 4
@TXQ_OFLD = common dso_local global i32 0, align 4
@NET_XMIT_CN = common dso_local global i32 0, align 4
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.sge_txq*, %struct.sk_buff*)* @ofld_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofld_xmit(%struct.adapter* %0, %struct.sge_txq* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sge_txq*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sge_txq* %1, %struct.sge_txq** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = call i32 @calc_tx_descs_ofld(%struct.sk_buff* %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %15 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %14, i32 0, i32 4
  %16 = call i32 @spin_lock(i32* %15)
  br label %17

17:                                               ; preds = %42, %3
  %18 = load %struct.adapter*, %struct.adapter** %5, align 8
  %19 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %20 = load i32, i32* @TX_RECLAIM_CHUNK, align 4
  %21 = call i32 @reclaim_completed_tx(%struct.adapter* %18, %struct.sge_txq* %19, i32 %20)
  %22 = load %struct.adapter*, %struct.adapter** %5, align 8
  %23 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @TXQ_OFLD, align 4
  %27 = call i32 @check_desc_avail(%struct.adapter* %22, %struct.sge_txq* %23, %struct.sk_buff* %24, i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %17
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %39 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %38, i32 0, i32 4
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load i32, i32* @NET_XMIT_CN, align 4
  store i32 %41, i32* %4, align 4
  br label %118

42:                                               ; preds = %31
  br label %17

43:                                               ; preds = %17
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = call i32 @immediate(%struct.sk_buff* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %43
  %48 = load %struct.adapter*, %struct.adapter** %5, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  %56 = call i64 @map_skb(i32 %50, %struct.sk_buff* %51, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %47
  %59 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %60 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %59, i32 0, i32 4
  %61 = call i32 @spin_unlock(i32* %60)
  %62 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %62, i32* %4, align 4
  br label %118

63:                                               ; preds = %47, %43
  %64 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %65 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %69 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %73 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %77 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = add i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %81 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %84 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp uge i32 %82, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %63
  %88 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %89 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %92 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = sub i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %96 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = xor i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %87, %63
  %100 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %101 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %100, i32 0, i32 4
  %102 = call i32 @spin_unlock(i32* %101)
  %103 = load %struct.adapter*, %struct.adapter** %5, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %105 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i32*
  %113 = call i32 @write_ofld_wr(%struct.adapter* %103, %struct.sk_buff* %104, %struct.sge_txq* %105, i32 %106, i32 %107, i32 %108, i32* %112)
  %114 = load %struct.adapter*, %struct.adapter** %5, align 8
  %115 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %116 = call i32 @check_ring_tx_db(%struct.adapter* %114, %struct.sge_txq* %115)
  %117 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %99, %58, %34
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @calc_tx_descs_ofld(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @reclaim_completed_tx(%struct.adapter*, %struct.sge_txq*, i32) #1

declare dso_local i32 @check_desc_avail(%struct.adapter*, %struct.sge_txq*, %struct.sk_buff*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @immediate(%struct.sk_buff*) #1

declare dso_local i64 @map_skb(i32, %struct.sk_buff*, i32*) #1

declare dso_local i32 @write_ofld_wr(%struct.adapter*, %struct.sk_buff*, %struct.sge_txq*, i32, i32, i32, i32*) #1

declare dso_local i32 @check_ring_tx_db(%struct.adapter*, %struct.sge_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
