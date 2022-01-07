; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ec_bhf.c_ec_bhf_process_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ec_bhf.c_ec_bhf_process_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_bhf_priv = type { i64, i32, i32, %struct.rx_desc*, i32 }
%struct.rx_desc = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.sk_buff = type { i32 }

@RXHDR_LEN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Couldn't allocate a skb_buff for a packet of size %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ec_bhf_priv*)* @ec_bhf_process_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ec_bhf_process_rx(%struct.ec_bhf_priv* %0) #0 {
  %2 = alloca %struct.ec_bhf_priv*, align 8
  %3 = alloca %struct.rx_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.ec_bhf_priv* %0, %struct.ec_bhf_priv** %2, align 8
  %7 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %2, align 8
  %8 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %7, i32 0, i32 3
  %9 = load %struct.rx_desc*, %struct.rx_desc** %8, align 8
  %10 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %2, align 8
  %11 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %9, i64 %12
  store %struct.rx_desc* %13, %struct.rx_desc** %3, align 8
  br label %14

14:                                               ; preds = %64, %1
  %15 = load %struct.rx_desc*, %struct.rx_desc** %3, align 8
  %16 = call i64 @ec_bhf_pkt_received(%struct.rx_desc* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %89

18:                                               ; preds = %14
  %19 = load %struct.rx_desc*, %struct.rx_desc** %3, align 8
  %20 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @le16_to_cpu(i32 %22)
  %24 = load i32, i32* @RXHDR_LEN_MASK, align 4
  %25 = and i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = sub i64 %26, 4
  %28 = sub i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  %30 = load %struct.rx_desc*, %struct.rx_desc** %3, align 8
  %31 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %5, align 8
  %33 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %2, align 8
  %34 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(i32 %35, i32 %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %6, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %40, label %59

40:                                               ; preds = %18
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @skb_put_data(%struct.sk_buff* %41, i32* %42, i32 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %2, align 8
  %47 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @eth_type_trans(%struct.sk_buff* %45, i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %2, align 8
  %54 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = call i32 @netif_rx(%struct.sk_buff* %57)
  br label %64

59:                                               ; preds = %18
  %60 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %2, align 8
  %61 = call i32 @PRIV_TO_DEV(%struct.ec_bhf_priv* %60)
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @dev_err_ratelimited(i32 %61, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %59, %40
  %65 = load %struct.rx_desc*, %struct.rx_desc** %3, align 8
  %66 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %2, align 8
  %69 = load %struct.rx_desc*, %struct.rx_desc** %3, align 8
  %70 = call i32 @ec_bhf_add_rx_desc(%struct.ec_bhf_priv* %68, %struct.rx_desc* %69)
  %71 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %2, align 8
  %72 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  %75 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %2, align 8
  %76 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = urem i64 %74, %78
  %80 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %2, align 8
  %81 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %2, align 8
  %83 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %82, i32 0, i32 3
  %84 = load %struct.rx_desc*, %struct.rx_desc** %83, align 8
  %85 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %2, align 8
  %86 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %84, i64 %87
  store %struct.rx_desc* %88, %struct.rx_desc** %3, align 8
  br label %14

89:                                               ; preds = %14
  ret void
}

declare dso_local i64 @ec_bhf_pkt_received(%struct.rx_desc*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(i32, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i32) #1

declare dso_local i32 @PRIV_TO_DEV(%struct.ec_bhf_priv*) #1

declare dso_local i32 @ec_bhf_add_rx_desc(%struct.ec_bhf_priv*, %struct.rx_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
