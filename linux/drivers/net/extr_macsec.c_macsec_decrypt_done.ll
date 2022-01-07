; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_decrypt_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_decrypt_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { %struct.sk_buff* }
%struct.sk_buff = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.macsec_dev = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.macsec_rx_sa = type { %struct.macsec_rx_sc* }
%struct.macsec_rx_sc = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.macsec_rx_sa* }
%struct.TYPE_6__ = type { i32 }

@NET_RX_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @macsec_decrypt_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macsec_decrypt_done(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.macsec_dev*, align 8
  %8 = alloca %struct.macsec_rx_sa*, align 8
  %9 = alloca %struct.macsec_rx_sc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %13 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %12, i32 0, i32 0
  %14 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %14, %struct.sk_buff** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call %struct.macsec_dev* @macsec_priv(%struct.net_device* %18)
  store %struct.macsec_dev* %19, %struct.macsec_dev** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call %struct.TYPE_4__* @macsec_skb_cb(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %22, align 8
  store %struct.macsec_rx_sa* %23, %struct.macsec_rx_sa** %8, align 8
  %24 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %8, align 8
  %25 = getelementptr inbounds %struct.macsec_rx_sa, %struct.macsec_rx_sa* %24, i32 0, i32 0
  %26 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %25, align 8
  store %struct.macsec_rx_sc* %26, %struct.macsec_rx_sc** %9, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call %struct.TYPE_4__* @macsec_skb_cb(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @aead_request_free(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %2
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call %struct.TYPE_4__* @macsec_skb_cb(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %34, %2
  %39 = call i32 (...) @rcu_read_lock_bh()
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call %struct.TYPE_6__* @macsec_ethhdr(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ntohl(i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = load %struct.macsec_dev*, %struct.macsec_dev** %7, align 8
  %47 = getelementptr inbounds %struct.macsec_dev, %struct.macsec_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @macsec_post_decrypt(%struct.sk_buff* %45, %struct.TYPE_5__* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %38
  %52 = call i32 (...) @rcu_read_unlock_bh()
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call i32 @kfree_skb(%struct.sk_buff* %53)
  br label %88

55:                                               ; preds = %38
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = load %struct.macsec_dev*, %struct.macsec_dev** %7, align 8
  %58 = getelementptr inbounds %struct.macsec_dev, %struct.macsec_dev* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call %struct.TYPE_4__* @macsec_skb_cb(%struct.sk_buff* %61)
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @macsec_extra_len(i32 %64)
  %66 = call i32 @macsec_finalize_skb(%struct.sk_buff* %56, i32 %60, i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = load %struct.macsec_dev*, %struct.macsec_dev** %7, align 8
  %69 = getelementptr inbounds %struct.macsec_dev, %struct.macsec_dev* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @macsec_reset_skb(%struct.sk_buff* %67, i32 %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %10, align 4
  %76 = load %struct.macsec_dev*, %struct.macsec_dev** %7, align 8
  %77 = getelementptr inbounds %struct.macsec_dev, %struct.macsec_dev* %76, i32 0, i32 0
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call i64 @gro_cells_receive(i32* %77, %struct.sk_buff* %78)
  %80 = load i64, i64* @NET_RX_SUCCESS, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %55
  %83 = load %struct.net_device*, %struct.net_device** %6, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @count_rx(%struct.net_device* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %55
  %87 = call i32 (...) @rcu_read_unlock_bh()
  br label %88

88:                                               ; preds = %86, %51
  %89 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %8, align 8
  %90 = call i32 @macsec_rxsa_put(%struct.macsec_rx_sa* %89)
  %91 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %9, align 8
  %92 = call i32 @macsec_rxsc_put(%struct.macsec_rx_sc* %91)
  %93 = load %struct.net_device*, %struct.net_device** %6, align 8
  %94 = call i32 @dev_put(%struct.net_device* %93)
  ret void
}

declare dso_local %struct.macsec_dev* @macsec_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_4__* @macsec_skb_cb(%struct.sk_buff*) #1

declare dso_local i32 @aead_request_free(i32) #1

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.TYPE_6__* @macsec_ethhdr(%struct.sk_buff*) #1

declare dso_local i32 @macsec_post_decrypt(%struct.sk_buff*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @macsec_finalize_skb(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @macsec_extra_len(i32) #1

declare dso_local i32 @macsec_reset_skb(%struct.sk_buff*, i32) #1

declare dso_local i64 @gro_cells_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @count_rx(%struct.net_device*, i32) #1

declare dso_local i32 @macsec_rxsa_put(%struct.macsec_rx_sa*) #1

declare dso_local i32 @macsec_rxsc_put(%struct.macsec_rx_sc*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
