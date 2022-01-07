; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_selftest.c_mlx4_en_test_loopback_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_selftest.c_mlx4_en_test_loopback_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ethhdr = type { i32, i32, i32 }

@MLX4_LOOPBACK_TEST_PAYLOAD = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*)* @mlx4_en_test_loopback_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_test_loopback_xmit(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ethhdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  %10 = load i32, i32* @MLX4_LOOPBACK_TEST_PAYLOAD, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load i32, i32* @MLX4_LOOPBACK_TEST_PAYLOAD, align 4
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* @ETH_HLEN, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i64, i64* @NET_IP_ALIGN, align 8
  %19 = add nsw i64 %17, %18
  %20 = call %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_3__* %13, i64 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %4, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %78

26:                                               ; preds = %1
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = load i64, i64* @NET_IP_ALIGN, align 8
  %29 = call i32 @skb_reserve(%struct.sk_buff* %27, i64 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i8* @skb_put(%struct.sk_buff* %30, i32 12)
  %32 = bitcast i8* %31 to %struct.ethhdr*
  store %struct.ethhdr* %32, %struct.ethhdr** %5, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i8* @skb_put(%struct.sk_buff* %33, i32 %34)
  store i8* %35, i8** %6, align 8
  %36 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %37 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ETH_ALEN, align 4
  %45 = call i32 @memcpy(i32 %38, i32 %43, i32 %44)
  %46 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %47 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @eth_zero_addr(i32 %48)
  %50 = load i32, i32* @ETH_P_ARP, align 4
  %51 = call i32 @htons(i32 %50)
  %52 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %53 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @skb_reset_mac_header(%struct.sk_buff* %54)
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %68, %26
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, 255
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  store i8 %63, i8* %67, align 1
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %8, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %56

71:                                               ; preds = %56
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %74 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = call i32 @mlx4_en_xmit(%struct.sk_buff* %72, %struct.TYPE_3__* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %71, %23
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @mlx4_en_xmit(%struct.sk_buff*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
