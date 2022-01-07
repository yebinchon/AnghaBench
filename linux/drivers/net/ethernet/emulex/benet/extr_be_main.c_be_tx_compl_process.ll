; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_tx_compl_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_tx_compl_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.be_tx_obj = type { %struct.be_queue_info, %struct.sk_buff** }
%struct.be_queue_info = type { i64 }
%struct.sk_buff = type { i32 }
%struct.be_eth_wrb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.be_adapter*, %struct.be_tx_obj*, i64)* @be_tx_compl_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @be_tx_compl_process(%struct.be_adapter* %0, %struct.be_tx_obj* %1, i64 %2) #0 {
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca %struct.be_tx_obj*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca %struct.be_queue_info*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.be_eth_wrb*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store %struct.be_tx_obj* %1, %struct.be_tx_obj** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.be_tx_obj*, %struct.be_tx_obj** %5, align 8
  %15 = getelementptr inbounds %struct.be_tx_obj, %struct.be_tx_obj* %14, i32 0, i32 1
  %16 = load %struct.sk_buff**, %struct.sk_buff*** %15, align 8
  store %struct.sk_buff** %16, %struct.sk_buff*** %7, align 8
  %17 = load %struct.be_tx_obj*, %struct.be_tx_obj** %5, align 8
  %18 = getelementptr inbounds %struct.be_tx_obj, %struct.be_tx_obj* %17, i32 0, i32 0
  store %struct.be_queue_info* %18, %struct.be_queue_info** %8, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %12, align 8
  br label %19

19:                                               ; preds = %74, %3
  %20 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %21 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %22 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %20, i64 %23
  %25 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %27, label %49

27:                                               ; preds = %19
  %28 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %32 = call i32 @dev_consume_skb_any(%struct.sk_buff* %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %35 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %36 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %34, i64 %37
  %39 = load %struct.sk_buff*, %struct.sk_buff** %38, align 8
  store %struct.sk_buff* %39, %struct.sk_buff** %9, align 8
  %40 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %41 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %42 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %40, i64 %43
  store %struct.sk_buff* null, %struct.sk_buff** %44, align 8
  %45 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %46 = call i32 @queue_tail_inc(%struct.be_queue_info* %45)
  %47 = load i64, i64* %12, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %12, align 8
  store i32 1, i32* %10, align 4
  br label %49

49:                                               ; preds = %33, %19
  %50 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %51 = call %struct.be_eth_wrb* @queue_tail_node(%struct.be_queue_info* %50)
  store %struct.be_eth_wrb* %51, %struct.be_eth_wrb** %11, align 8
  %52 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %53 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %13, align 8
  %55 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %56 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.be_eth_wrb*, %struct.be_eth_wrb** %11, align 8
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %49
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = call i64 @skb_headlen(%struct.sk_buff* %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %62, %49
  %67 = phi i1 [ false, %49 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @unmap_tx_frag(i32* %58, %struct.be_eth_wrb* %59, i32 %68)
  store i32 0, i32* %10, align 4
  %70 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %71 = call i32 @queue_tail_inc(%struct.be_queue_info* %70)
  %72 = load i64, i64* %12, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %12, align 8
  br label %74

74:                                               ; preds = %66
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* %6, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %19, label %78

78:                                               ; preds = %74
  %79 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %80 = call i32 @dev_consume_skb_any(%struct.sk_buff* %79)
  %81 = load i64, i64* %12, align 8
  ret i64 %81
}

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @queue_tail_inc(%struct.be_queue_info*) #1

declare dso_local %struct.be_eth_wrb* @queue_tail_node(%struct.be_queue_info*) #1

declare dso_local i32 @unmap_tx_frag(i32*, %struct.be_eth_wrb*, i32) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
