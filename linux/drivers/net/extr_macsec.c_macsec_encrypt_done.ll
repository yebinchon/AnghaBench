; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_encrypt_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_encrypt_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { %struct.sk_buff* }
%struct.sk_buff = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.macsec_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.macsec_tx_sa = type { i32 }
%struct.TYPE_4__ = type { %struct.macsec_tx_sa*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @macsec_encrypt_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macsec_encrypt_done(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.macsec_dev*, align 8
  %8 = alloca %struct.macsec_tx_sa*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %12 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %11, i32 0, i32 0
  %13 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %13, %struct.sk_buff** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %6, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call %struct.macsec_dev* @macsec_priv(%struct.net_device* %17)
  store %struct.macsec_dev* %18, %struct.macsec_dev** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call %struct.TYPE_4__* @macsec_skb_cb(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %21, align 8
  store %struct.macsec_tx_sa* %22, %struct.macsec_tx_sa** %8, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call %struct.TYPE_4__* @macsec_skb_cb(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @aead_request_free(i32 %26)
  %28 = call i32 (...) @rcu_read_lock_bh()
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = call i32 @macsec_encrypt_finish(%struct.sk_buff* %29, %struct.net_device* %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load %struct.macsec_dev*, %struct.macsec_dev** %7, align 8
  %34 = getelementptr inbounds %struct.macsec_dev, %struct.macsec_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call %struct.TYPE_4__* @macsec_skb_cb(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %38, align 8
  %40 = call i32 @macsec_count_tx(%struct.sk_buff* %32, i32* %35, %struct.macsec_tx_sa* %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %9, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call i32 @dev_queue_xmit(%struct.sk_buff* %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @count_tx(%struct.net_device* %46, i32 %47, i32 %48)
  %50 = call i32 (...) @rcu_read_unlock_bh()
  %51 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %8, align 8
  %52 = call i32 @macsec_txsa_put(%struct.macsec_tx_sa* %51)
  %53 = load %struct.net_device*, %struct.net_device** %6, align 8
  %54 = call i32 @dev_put(%struct.net_device* %53)
  ret void
}

declare dso_local %struct.macsec_dev* @macsec_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_4__* @macsec_skb_cb(%struct.sk_buff*) #1

declare dso_local i32 @aead_request_free(i32) #1

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local i32 @macsec_encrypt_finish(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @macsec_count_tx(%struct.sk_buff*, i32*, %struct.macsec_tx_sa*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @count_tx(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

declare dso_local i32 @macsec_txsa_put(%struct.macsec_tx_sa*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
