; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_tx_clear_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_tx_clear_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i64, %struct.ring_info* }
%struct.ring_info = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@NUM_TX_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*, i32, i32)* @rtl8169_tx_clear_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8169_tx_clear_range(%struct.rtl8169_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtl8169_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ring_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %56, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add i32 %17, %18
  %20 = load i32, i32* @NUM_TX_DESC, align 4
  %21 = urem i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %23 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %22, i32 0, i32 1
  %24 = load %struct.ring_info*, %struct.ring_info** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %24, i64 %26
  store %struct.ring_info* %27, %struct.ring_info** %9, align 8
  %28 = load %struct.ring_info*, %struct.ring_info** %9, align 8
  %29 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %16
  %34 = load %struct.ring_info*, %struct.ring_info** %9, align 8
  %35 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %34, i32 0, i32 1
  %36 = load %struct.sk_buff*, %struct.sk_buff** %35, align 8
  store %struct.sk_buff* %36, %struct.sk_buff** %11, align 8
  %37 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %38 = call i32 @tp_to_dev(%struct.rtl8169_private* %37)
  %39 = load %struct.ring_info*, %struct.ring_info** %9, align 8
  %40 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %41 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = call i32 @rtl8169_unmap_tx_skb(i32 %38, %struct.ring_info* %39, i64 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %48 = icmp ne %struct.sk_buff* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %33
  %50 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %51 = call i32 @dev_consume_skb_any(%struct.sk_buff* %50)
  %52 = load %struct.ring_info*, %struct.ring_info** %9, align 8
  %53 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %52, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %53, align 8
  br label %54

54:                                               ; preds = %49, %33
  br label %55

55:                                               ; preds = %54, %16
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %12

59:                                               ; preds = %12
  ret void
}

declare dso_local i32 @rtl8169_unmap_tx_skb(i32, %struct.ring_info*, i64) #1

declare dso_local i32 @tp_to_dev(%struct.rtl8169_private*) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
