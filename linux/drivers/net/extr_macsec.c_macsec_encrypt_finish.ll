; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_encrypt_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_encrypt_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.macsec_dev = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.net_device*)* @macsec_encrypt_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macsec_encrypt_finish(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.macsec_dev*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %4, align 8
  %7 = call %struct.macsec_dev* @netdev_priv(%struct.net_device* %6)
  store %struct.macsec_dev* %7, %struct.macsec_dev** %5, align 8
  %8 = load %struct.macsec_dev*, %struct.macsec_dev** %5, align 8
  %9 = getelementptr inbounds %struct.macsec_dev, %struct.macsec_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call i32 @skb_reset_mac_header(%struct.sk_buff* %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  ret void
}

declare dso_local %struct.macsec_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @eth_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
