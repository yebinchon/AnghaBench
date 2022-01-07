; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_get_rx_entry_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_get_rx_entry_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MT_DMA_HDR_LEN = common dso_local global i64 0, align 8
@MT_RX_RXWI_LEN = common dso_local global i64 0, align 8
@MT_FCE_INFO_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @mt76u_get_rx_entry_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76u_get_rx_entry_len(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @get_unaligned_le16(i32* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* @MT_DMA_HDR_LEN, align 8
  %11 = load i64, i64* @MT_RX_RXWI_LEN, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i64, i64* @MT_FCE_INFO_LEN, align 8
  %14 = add nsw i64 %12, %13
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %31, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @MT_DMA_HDR_LEN, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* %5, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load i64, i64* %6, align 8
  %29 = and i64 %28, 3
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %21, %18, %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %37

34:                                               ; preds = %27
  %35 = load i64, i64* %6, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @get_unaligned_le16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
