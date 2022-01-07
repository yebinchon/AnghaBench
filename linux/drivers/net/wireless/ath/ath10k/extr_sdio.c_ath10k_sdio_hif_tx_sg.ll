; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_hif_tx_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_hif_tx_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_hif_sg_item = type { %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.ath10k_sdio = type { i32, i32, i64*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, %struct.ath10k_hif_sg_item*, i32)* @ath10k_sdio_hif_tx_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_hif_tx_sg(%struct.ath10k* %0, i32 %1, %struct.ath10k_hif_sg_item* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath10k_hif_sg_item*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath10k_sdio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ath10k_hif_sg_item* %2, %struct.ath10k_hif_sg_item** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %18 = call %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k* %17)
  store %struct.ath10k_sdio* %18, %struct.ath10k_sdio** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @pipe_id_to_eid(i32 %19)
  store i32 %20, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %69, %4
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %72

25:                                               ; preds = %21
  %26 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %26, i64 %28
  %30 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %29, i32 0, i32 0
  %31 = load %struct.sk_buff*, %struct.sk_buff** %30, align 8
  store %struct.sk_buff* %31, %struct.sk_buff** %12, align 8
  %32 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %10, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @ath10k_sdio_calc_txrx_padded_len(%struct.ath10k_sdio* %32, i64 %35)
  store i64 %36, i64* %15, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %38 = load i64, i64* %15, align 8
  %39 = call i32 @skb_trim(%struct.sk_buff* %37, i64 %38)
  %40 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %10, align 8
  %41 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %40, i32 0, i32 3
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %10, align 8
  %48 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %46, %53
  %55 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %54, %57
  store i64 %58, i64* %16, align 8
  %59 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %60 = load i64, i64* %16, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @ath10k_sdio_prep_async_req(%struct.ath10k* %59, i64 %60, %struct.sk_buff* %61, i32* null, i32 1, i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %25
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %5, align 4
  br label %79

68:                                               ; preds = %25
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  br label %21

72:                                               ; preds = %21
  %73 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %10, align 8
  %74 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %10, align 8
  %77 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %76, i32 0, i32 0
  %78 = call i32 @queue_work(i32 %75, i32* %77)
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %72, %66
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k*) #1

declare dso_local i32 @pipe_id_to_eid(i32) #1

declare dso_local i64 @ath10k_sdio_calc_txrx_padded_len(%struct.ath10k_sdio*, i64) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @ath10k_sdio_prep_async_req(%struct.ath10k*, i64, %struct.sk_buff*, i32*, i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
