; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_copy_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_copy_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.bnxt_napi = type { i32, %struct.bnxt* }
%struct.bnxt = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@NET_IP_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.bnxt_napi*, i32*, i32, i32)* @bnxt_copy_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @bnxt_copy_skb(%struct.bnxt_napi* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.bnxt_napi*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bnxt*, align 8
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.bnxt_napi* %0, %struct.bnxt_napi** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.bnxt_napi*, %struct.bnxt_napi** %6, align 8
  %14 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %13, i32 0, i32 1
  %15 = load %struct.bnxt*, %struct.bnxt** %14, align 8
  store %struct.bnxt* %15, %struct.bnxt** %10, align 8
  %16 = load %struct.bnxt*, %struct.bnxt** %10, align 8
  %17 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %16, i32 0, i32 2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %11, align 8
  %19 = load %struct.bnxt_napi*, %struct.bnxt_napi** %6, align 8
  %20 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %19, i32 0, i32 0
  %21 = load i32, i32* %8, align 4
  %22 = call %struct.sk_buff* @napi_alloc_skb(i32* %20, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %12, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %65

26:                                               ; preds = %4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.bnxt*, %struct.bnxt** %10, align 8
  %31 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bnxt*, %struct.bnxt** %10, align 8
  %34 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dma_sync_single_for_cpu(i32* %28, i32 %29, i32 %32, i32 %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @NET_IP_ALIGN, align 4
  %41 = sub nsw i32 %39, %40
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @NET_IP_ALIGN, align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 0, %44
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @NET_IP_ALIGN, align 4
  %49 = add i32 %47, %48
  %50 = call i32 @memcpy(i32 %41, i32* %46, i32 %49)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.bnxt*, %struct.bnxt** %10, align 8
  %55 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bnxt*, %struct.bnxt** %10, align 8
  %58 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dma_sync_single_for_device(i32* %52, i32 %53, i32 %56, i32 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @skb_put(%struct.sk_buff* %61, i32 %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %64, %struct.sk_buff** %5, align 8
  br label %65

65:                                               ; preds = %26, %25
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %66
}

declare dso_local %struct.sk_buff* @napi_alloc_skb(i32*, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32*, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
