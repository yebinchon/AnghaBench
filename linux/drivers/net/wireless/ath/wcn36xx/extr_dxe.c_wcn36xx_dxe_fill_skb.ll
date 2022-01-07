; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_fill_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_fill_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.wcn36xx_dxe_ctl = type { %struct.sk_buff*, %struct.wcn36xx_dxe_desc* }
%struct.sk_buff = type { i32 }
%struct.wcn36xx_dxe_desc = type { i32 }

@WCN36XX_PKT_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"unable to map skb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.wcn36xx_dxe_ctl*, i32)* @wcn36xx_dxe_fill_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_dxe_fill_skb(%struct.device* %0, %struct.wcn36xx_dxe_ctl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.wcn36xx_dxe_ctl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wcn36xx_dxe_desc*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.wcn36xx_dxe_ctl* %1, %struct.wcn36xx_dxe_ctl** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %6, align 8
  %11 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %10, i32 0, i32 1
  %12 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %11, align 8
  store %struct.wcn36xx_dxe_desc* %12, %struct.wcn36xx_dxe_desc** %8, align 8
  %13 = load i32, i32* @WCN36XX_PKT_SIZE, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.sk_buff* @alloc_skb(i32 %13, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %9, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %17 = icmp eq %struct.sk_buff* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %47

21:                                               ; preds = %3
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = call i32 @skb_tail_pointer(%struct.sk_buff* %23)
  %25 = load i32, i32* @WCN36XX_PKT_SIZE, align 4
  %26 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %27 = call i32 @dma_map_single(%struct.device* %22, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %8, align 8
  %29 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %8, align 8
  %32 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @dma_mapping_error(%struct.device* %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %21
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %40 = call i32 @kfree_skb(%struct.sk_buff* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %47

43:                                               ; preds = %21
  %44 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %45 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %6, align 8
  %46 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %45, i32 0, i32 0
  store %struct.sk_buff* %44, %struct.sk_buff** %46, align 8
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %36, %18
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
