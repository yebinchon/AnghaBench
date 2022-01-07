; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_tx_setup_wrb_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_tx_setup_wrb_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_tx_obj = type { i64, i32, i64, %struct.sk_buff**, %struct.be_queue_info }
%struct.be_queue_info = type { i32 }
%struct.be_wrb_params = type { i32 }
%struct.sk_buff = type { i32 }
%struct.be_eth_hdr_wrb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*, %struct.be_tx_obj*, %struct.be_wrb_params*, %struct.sk_buff*, i64)* @be_tx_setup_wrb_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_tx_setup_wrb_hdr(%struct.be_adapter* %0, %struct.be_tx_obj* %1, %struct.be_wrb_params* %2, %struct.sk_buff* %3, i64 %4) #0 {
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca %struct.be_tx_obj*, align 8
  %8 = alloca %struct.be_wrb_params*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.be_queue_info*, align 8
  %13 = alloca %struct.be_eth_hdr_wrb*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %6, align 8
  store %struct.be_tx_obj* %1, %struct.be_tx_obj** %7, align 8
  store %struct.be_wrb_params* %2, %struct.be_wrb_params** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %15 = call i64 @skb_wrb_cnt(%struct.sk_buff* %14)
  store i64 %15, i64* %11, align 8
  %16 = load %struct.be_tx_obj*, %struct.be_tx_obj** %7, align 8
  %17 = getelementptr inbounds %struct.be_tx_obj, %struct.be_tx_obj* %16, i32 0, i32 4
  store %struct.be_queue_info* %17, %struct.be_queue_info** %12, align 8
  %18 = load %struct.be_queue_info*, %struct.be_queue_info** %12, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call %struct.be_eth_hdr_wrb* @queue_index_node(%struct.be_queue_info* %18, i64 %19)
  store %struct.be_eth_hdr_wrb* %20, %struct.be_eth_hdr_wrb** %13, align 8
  %21 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %22 = load %struct.be_eth_hdr_wrb*, %struct.be_eth_hdr_wrb** %13, align 8
  %23 = load %struct.be_wrb_params*, %struct.be_wrb_params** %8, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %25 = call i32 @wrb_fill_hdr(%struct.be_adapter* %21, %struct.be_eth_hdr_wrb* %22, %struct.be_wrb_params* %23, %struct.sk_buff* %24)
  %26 = load %struct.be_eth_hdr_wrb*, %struct.be_eth_hdr_wrb** %13, align 8
  %27 = call i32 @be_dws_cpu_to_le(%struct.be_eth_hdr_wrb* %26, i32 4)
  %28 = load %struct.be_tx_obj*, %struct.be_tx_obj** %7, align 8
  %29 = getelementptr inbounds %struct.be_tx_obj, %struct.be_tx_obj* %28, i32 0, i32 3
  %30 = load %struct.sk_buff**, %struct.sk_buff*** %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %30, i64 %31
  %33 = load %struct.sk_buff*, %struct.sk_buff** %32, align 8
  %34 = call i32 @BUG_ON(%struct.sk_buff* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = load %struct.be_tx_obj*, %struct.be_tx_obj** %7, align 8
  %37 = getelementptr inbounds %struct.be_tx_obj, %struct.be_tx_obj* %36, i32 0, i32 3
  %38 = load %struct.sk_buff**, %struct.sk_buff*** %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %38, i64 %39
  store %struct.sk_buff* %35, %struct.sk_buff** %40, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.be_tx_obj*, %struct.be_tx_obj** %7, align 8
  %43 = getelementptr inbounds %struct.be_tx_obj, %struct.be_tx_obj* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load %struct.be_queue_info*, %struct.be_queue_info** %12, align 8
  %46 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %45, i32 0, i32 0
  %47 = call i32 @atomic_add(i64 %44, i32* %46)
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.be_tx_obj*, %struct.be_tx_obj** %7, align 8
  %50 = getelementptr inbounds %struct.be_tx_obj, %struct.be_tx_obj* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load %struct.be_tx_obj*, %struct.be_tx_obj** %7, align 8
  %53 = getelementptr inbounds %struct.be_tx_obj, %struct.be_tx_obj* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %51
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 8
  ret void
}

declare dso_local i64 @skb_wrb_cnt(%struct.sk_buff*) #1

declare dso_local %struct.be_eth_hdr_wrb* @queue_index_node(%struct.be_queue_info*, i64) #1

declare dso_local i32 @wrb_fill_hdr(%struct.be_adapter*, %struct.be_eth_hdr_wrb*, %struct.be_wrb_params*, %struct.sk_buff*) #1

declare dso_local i32 @be_dws_cpu_to_le(%struct.be_eth_hdr_wrb*, i32) #1

declare dso_local i32 @BUG_ON(%struct.sk_buff*) #1

declare dso_local i32 @atomic_add(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
