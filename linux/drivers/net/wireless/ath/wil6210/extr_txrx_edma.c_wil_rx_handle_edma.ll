; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_rx_handle_edma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_rx_handle_edma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32, %struct.wil6210_vif**, i64, %struct.wil_status_ring*, %struct.wil_ring }
%struct.wil6210_vif = type { i32 }
%struct.wil_status_ring = type { i32, i32, i32, i32 }
%struct.wil_ring = type { i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Rx IRQ while Rx not yet initialized\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"rx_handle\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Rx IRQ while Rx status ring %d not yet initialized\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"RX desc invalid mid %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wil_rx_handle_edma(%struct.wil6210_priv* %0, i32* %1) #0 {
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.wil_ring*, align 8
  %7 = alloca %struct.wil_status_ring*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wil6210_vif*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %14 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %13, i32 0, i32 4
  store %struct.wil_ring* %14, %struct.wil_ring** %6, align 8
  %15 = load %struct.wil_ring*, %struct.wil_ring** %6, align 8
  %16 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %25 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %129

26:                                               ; preds = %2
  %27 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %28 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_txrx(%struct.wil6210_priv* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %123, %26
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %32 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %126

35:                                               ; preds = %29
  %36 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %37 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %36, i32 0, i32 3
  %38 = load %struct.wil_status_ring*, %struct.wil_status_ring** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %38, i64 %40
  store %struct.wil_status_ring* %41, %struct.wil_status_ring** %7, align 8
  %42 = load %struct.wil_status_ring*, %struct.wil_status_ring** %7, align 8
  %43 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %35
  %51 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %51, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %123

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %108, %92, %54
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %61 = load %struct.wil_status_ring*, %struct.wil_status_ring** %7, align 8
  %62 = call %struct.sk_buff* @wil_sring_reap_rx_edma(%struct.wil6210_priv* %60, %struct.wil_status_ring* %61)
  store %struct.sk_buff* %62, %struct.sk_buff** %8, align 8
  %63 = icmp ne %struct.sk_buff* null, %62
  br label %64

64:                                               ; preds = %59, %55
  %65 = phi i1 [ false, %55 ], [ %63, %59 ]
  br i1 %65, label %66, label %109

66:                                               ; preds = %64
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %71 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %104

74:                                               ; preds = %66
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = call i8* @wil_skb_rxstatus(%struct.sk_buff* %75)
  store i8* %76, i8** %10, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @wil_rx_status_get_mid(i8* %77)
  store i32 %78, i32* %11, align 4
  %79 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %80 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %79, i32 0, i32 1
  %81 = load %struct.wil6210_vif**, %struct.wil6210_vif*** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.wil6210_vif*, %struct.wil6210_vif** %81, i64 %83
  %85 = load %struct.wil6210_vif*, %struct.wil6210_vif** %84, align 8
  store %struct.wil6210_vif* %85, %struct.wil6210_vif** %12, align 8
  %86 = load %struct.wil6210_vif*, %struct.wil6210_vif** %12, align 8
  %87 = icmp ne %struct.wil6210_vif* %86, null
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %74
  %93 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_txrx(%struct.wil6210_priv* %93, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %97 = call i32 @kfree_skb(%struct.sk_buff* %96)
  br label %55

98:                                               ; preds = %74
  %99 = load %struct.wil6210_vif*, %struct.wil6210_vif** %12, align 8
  %100 = call %struct.net_device* @vif_to_ndev(%struct.wil6210_vif* %99)
  store %struct.net_device* %100, %struct.net_device** %5, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %102 = load %struct.net_device*, %struct.net_device** %5, align 8
  %103 = call i32 @wil_netif_rx_any(%struct.sk_buff* %101, %struct.net_device* %102)
  br label %108

104:                                              ; preds = %66
  %105 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %107 = call i32 @wil_rx_reorder(%struct.wil6210_priv* %105, %struct.sk_buff* %106)
  br label %108

108:                                              ; preds = %104, %98
  br label %55

109:                                              ; preds = %64
  %110 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %111 = load %struct.wil_status_ring*, %struct.wil_status_ring** %7, align 8
  %112 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.wil_status_ring*, %struct.wil_status_ring** %7, align 8
  %115 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %116, 1
  %118 = load %struct.wil_status_ring*, %struct.wil_status_ring** %7, align 8
  %119 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = srem i32 %117, %120
  %122 = call i32 @wil_w(%struct.wil6210_priv* %110, i32 %113, i32 %121)
  br label %123

123:                                              ; preds = %109, %50
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %29

126:                                              ; preds = %29
  %127 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %128 = call i32 @wil_rx_refill_edma(%struct.wil6210_priv* %127)
  br label %129

129:                                              ; preds = %126, %23
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i32 @wil_dbg_txrx(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local %struct.sk_buff* @wil_sring_reap_rx_edma(%struct.wil6210_priv*, %struct.wil_status_ring*) #1

declare dso_local i8* @wil_skb_rxstatus(%struct.sk_buff*) #1

declare dso_local i32 @wil_rx_status_get_mid(i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.net_device* @vif_to_ndev(%struct.wil6210_vif*) #1

declare dso_local i32 @wil_netif_rx_any(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @wil_rx_reorder(%struct.wil6210_priv*, %struct.sk_buff*) #1

declare dso_local i32 @wil_w(%struct.wil6210_priv*, i32, i32) #1

declare dso_local i32 @wil_rx_refill_edma(%struct.wil6210_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
