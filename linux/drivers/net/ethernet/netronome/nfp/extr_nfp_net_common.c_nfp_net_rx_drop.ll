; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rx_drop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rx_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_dp = type { i32 }
%struct.nfp_net_r_vector = type { i32, i32, i32 }
%struct.nfp_net_rx_ring = type { i32 }
%struct.nfp_net_rx_buf = type { i64, i32 }
%struct.sk_buff = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net_dp*, %struct.nfp_net_r_vector*, %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_buf*, %struct.sk_buff*)* @nfp_net_rx_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_rx_drop(%struct.nfp_net_dp* %0, %struct.nfp_net_r_vector* %1, %struct.nfp_net_rx_ring* %2, %struct.nfp_net_rx_buf* %3, %struct.sk_buff* %4) #0 {
  %6 = alloca %struct.nfp_net_dp*, align 8
  %7 = alloca %struct.nfp_net_r_vector*, align 8
  %8 = alloca %struct.nfp_net_rx_ring*, align 8
  %9 = alloca %struct.nfp_net_rx_buf*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.nfp_net_dp* %0, %struct.nfp_net_dp** %6, align 8
  store %struct.nfp_net_r_vector* %1, %struct.nfp_net_r_vector** %7, align 8
  store %struct.nfp_net_rx_ring* %2, %struct.nfp_net_rx_ring** %8, align 8
  store %struct.nfp_net_rx_buf* %3, %struct.nfp_net_rx_buf** %9, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %10, align 8
  %11 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %12 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %11, i32 0, i32 0
  %13 = call i32 @u64_stats_update_begin(i32* %12)
  %14 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %15 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %5
  %21 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %9, align 8
  %22 = icmp ne %struct.nfp_net_rx_buf* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %25 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %23, %20, %5
  %29 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %30 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %29, i32 0, i32 0
  %31 = call i32 @u64_stats_update_end(i32* %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  %35 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %9, align 8
  %36 = icmp ne %struct.nfp_net_rx_buf* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %9, align 8
  %42 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %9, align 8
  %47 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @virt_to_head_page(i64 %48)
  %50 = call i32 @page_ref_inc(i32 %49)
  br label %51

51:                                               ; preds = %45, %37, %34, %28
  %52 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %9, align 8
  %53 = icmp ne %struct.nfp_net_rx_buf* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %56 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %8, align 8
  %57 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %9, align 8
  %58 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %9, align 8
  %61 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @nfp_net_rx_give_one(%struct.nfp_net_dp* %55, %struct.nfp_net_rx_ring* %56, i64 %59, i32 %62)
  br label %64

64:                                               ; preds = %54, %51
  %65 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %66 = icmp ne %struct.sk_buff* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %69 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %68)
  br label %70

70:                                               ; preds = %67, %64
  ret void
}

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @page_ref_inc(i32) #1

declare dso_local i32 @virt_to_head_page(i64) #1

declare dso_local i32 @nfp_net_rx_give_one(%struct.nfp_net_dp*, %struct.nfp_net_rx_ring*, i64, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
