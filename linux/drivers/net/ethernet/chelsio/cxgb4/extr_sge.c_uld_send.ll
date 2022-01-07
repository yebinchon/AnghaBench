; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_uld_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_uld_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.sge_uld_txq_info**, i32* }
%struct.sge_uld_txq_info = type { %struct.sge_uld_txq* }
%struct.sge_uld_txq = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.sk_buff = type { i32 }

@NET_XMIT_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.sk_buff*, i32)* @uld_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uld_send(%struct.adapter* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sge_uld_txq_info*, align 8
  %9 = alloca %struct.sge_uld_txq*, align 8
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call i32 @skb_txq(%struct.sk_buff* %11)
  store i32 %12, i32* %10, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call i32 @is_ctrl_pkt(%struct.sk_buff* %13)
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %3
  %18 = load %struct.adapter*, %struct.adapter** %5, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %23, %17
  %25 = load %struct.adapter*, %struct.adapter** %5, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i32 @ctrl_xmit(i32* %31, %struct.sk_buff* %32)
  store i32 %33, i32* %4, align 4
  br label %62

34:                                               ; preds = %3
  %35 = load %struct.adapter*, %struct.adapter** %5, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.sge_uld_txq_info**, %struct.sge_uld_txq_info*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sge_uld_txq_info*, %struct.sge_uld_txq_info** %38, i64 %40
  %42 = load %struct.sge_uld_txq_info*, %struct.sge_uld_txq_info** %41, align 8
  store %struct.sge_uld_txq_info* %42, %struct.sge_uld_txq_info** %8, align 8
  %43 = load %struct.sge_uld_txq_info*, %struct.sge_uld_txq_info** %8, align 8
  %44 = icmp ne %struct.sge_uld_txq_info* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = call i32 @WARN_ON(i32 1)
  %51 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %51, i32* %4, align 4
  br label %62

52:                                               ; preds = %34
  %53 = load %struct.sge_uld_txq_info*, %struct.sge_uld_txq_info** %8, align 8
  %54 = getelementptr inbounds %struct.sge_uld_txq_info, %struct.sge_uld_txq_info* %53, i32 0, i32 0
  %55 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %55, i64 %57
  store %struct.sge_uld_txq* %58, %struct.sge_uld_txq** %9, align 8
  %59 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %9, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = call i32 @ofld_xmit(%struct.sge_uld_txq* %59, %struct.sk_buff* %60)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %52, %49, %24
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @skb_txq(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_ctrl_pkt(%struct.sk_buff*) #1

declare dso_local i32 @ctrl_xmit(i32*, %struct.sk_buff*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ofld_xmit(%struct.sge_uld_txq*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
