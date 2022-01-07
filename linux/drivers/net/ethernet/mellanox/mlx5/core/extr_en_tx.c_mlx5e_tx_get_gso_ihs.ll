; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tx.c_mlx5e_tx_get_gso_ihs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tx.c_mlx5e_tx_get_gso_ihs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_txqsq = type { %struct.mlx5e_sq_stats* }
%struct.mlx5e_sq_stats = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }

@SKB_GSO_UDP_L4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mlx5e_txqsq*, %struct.sk_buff*)* @mlx5e_tx_get_gso_ihs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mlx5e_tx_get_gso_ihs(%struct.mlx5e_txqsq* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.mlx5e_txqsq*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.mlx5e_sq_stats*, align 8
  %6 = alloca i64, align 8
  store %struct.mlx5e_txqsq* %0, %struct.mlx5e_txqsq** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %7, i32 0, i32 0
  %9 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %8, align 8
  store %struct.mlx5e_sq_stats* %9, %struct.mlx5e_sq_stats** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i64 @skb_inner_transport_offset(%struct.sk_buff* %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i64 @inner_tcp_hdrlen(%struct.sk_buff* %17)
  %19 = add nsw i64 %16, %18
  store i64 %19, i64* %6, align 8
  %20 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %5, align 8
  %21 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = sub nsw i64 %26, %27
  %29 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %5, align 8
  %30 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 4
  br label %69

35:                                               ; preds = %2
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SKB_GSO_UDP_L4, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i64 @skb_transport_offset(%struct.sk_buff* %44)
  %46 = add i64 %45, 4
  store i64 %46, i64* %6, align 8
  br label %53

47:                                               ; preds = %35
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call i64 @skb_transport_offset(%struct.sk_buff* %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i64 @tcp_hdrlen(%struct.sk_buff* %50)
  %52 = add nsw i64 %49, %51
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %47, %43
  %54 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %5, align 8
  %55 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = sub nsw i64 %60, %61
  %63 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %5, align 8
  %64 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 4
  br label %69

69:                                               ; preds = %53, %14
  %70 = load i64, i64* %6, align 8
  ret i64 %70
}

declare dso_local i64 @skb_inner_transport_offset(%struct.sk_buff*) #1

declare dso_local i64 @inner_tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i64 @tcp_hdrlen(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
