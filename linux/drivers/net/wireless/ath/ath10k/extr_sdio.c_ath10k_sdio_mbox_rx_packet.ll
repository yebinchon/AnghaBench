; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_rx_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_rx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_sdio_rx_data = type { i32, i64, i64, %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.ath10k_sdio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ath10k_htc_hdr = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"rx packet too large (%zu > %zu)\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ath10k_sdio_rx_data*)* @ath10k_sdio_mbox_rx_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_mbox_rx_packet(%struct.ath10k* %0, %struct.ath10k_sdio_rx_data* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_sdio_rx_data*, align 8
  %5 = alloca %struct.ath10k_sdio*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ath10k_htc_hdr*, align 8
  %8 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.ath10k_sdio_rx_data* %1, %struct.ath10k_sdio_rx_data** %4, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = call %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k* %9)
  store %struct.ath10k_sdio* %10, %struct.ath10k_sdio** %5, align 8
  %11 = load %struct.ath10k_sdio_rx_data*, %struct.ath10k_sdio_rx_data** %4, align 8
  %12 = getelementptr inbounds %struct.ath10k_sdio_rx_data, %struct.ath10k_sdio_rx_data* %11, i32 0, i32 3
  %13 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %13, %struct.sk_buff** %6, align 8
  %14 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %15 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %5, align 8
  %16 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ath10k_sdio_rx_data*, %struct.ath10k_sdio_rx_data** %4, align 8
  %23 = getelementptr inbounds %struct.ath10k_sdio_rx_data, %struct.ath10k_sdio_rx_data* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @ath10k_sdio_readsb(%struct.ath10k* %14, i32 %18, i64 %21, i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %65

29:                                               ; preds = %2
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.ath10k_htc_hdr*
  store %struct.ath10k_htc_hdr* %33, %struct.ath10k_htc_hdr** %7, align 8
  %34 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %7, align 8
  %35 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @le16_to_cpu(i32 %36)
  %38 = add i64 %37, 4
  %39 = load %struct.ath10k_sdio_rx_data*, %struct.ath10k_sdio_rx_data** %4, align 8
  %40 = getelementptr inbounds %struct.ath10k_sdio_rx_data, %struct.ath10k_sdio_rx_data* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.ath10k_sdio_rx_data*, %struct.ath10k_sdio_rx_data** %4, align 8
  %42 = getelementptr inbounds %struct.ath10k_sdio_rx_data, %struct.ath10k_sdio_rx_data* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ath10k_sdio_rx_data*, %struct.ath10k_sdio_rx_data** %4, align 8
  %45 = getelementptr inbounds %struct.ath10k_sdio_rx_data, %struct.ath10k_sdio_rx_data* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %29
  %49 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %50 = load %struct.ath10k_sdio_rx_data*, %struct.ath10k_sdio_rx_data** %4, align 8
  %51 = getelementptr inbounds %struct.ath10k_sdio_rx_data, %struct.ath10k_sdio_rx_data* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ath10k_sdio_rx_data*, %struct.ath10k_sdio_rx_data** %4, align 8
  %54 = getelementptr inbounds %struct.ath10k_sdio_rx_data, %struct.ath10k_sdio_rx_data* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @ath10k_warn(%struct.ath10k* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %52, i64 %55)
  %57 = load i32, i32* @EMSGSIZE, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %65

59:                                               ; preds = %29
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = load %struct.ath10k_sdio_rx_data*, %struct.ath10k_sdio_rx_data** %4, align 8
  %62 = getelementptr inbounds %struct.ath10k_sdio_rx_data, %struct.ath10k_sdio_rx_data* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @skb_put(%struct.sk_buff* %60, i64 %63)
  br label %65

65:                                               ; preds = %59, %48, %28
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.ath10k_sdio_rx_data*, %struct.ath10k_sdio_rx_data** %4, align 8
  %68 = getelementptr inbounds %struct.ath10k_sdio_rx_data, %struct.ath10k_sdio_rx_data* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_sdio_readsb(%struct.ath10k*, i32, i64, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i64, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
