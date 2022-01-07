; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.h_i40e_skb_pad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.h_i40e_skb_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I40E_2K_TOO_SMALL_WITH_PADDING = common dso_local global i64 0, align 8
@I40E_RXBUFFER_3072 = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@I40E_RXBUFFER_1536 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @i40e_skb_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_skb_pad() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @I40E_2K_TOO_SMALL_WITH_PADDING, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i32, i32* @I40E_RXBUFFER_3072, align 4
  %6 = load i64, i64* @NET_IP_ALIGN, align 8
  %7 = call i32 @SKB_DATA_ALIGN(i64 %6)
  %8 = add nsw i32 %5, %7
  store i32 %8, i32* %1, align 4
  br label %11

9:                                                ; preds = %0
  %10 = load i32, i32* @I40E_RXBUFFER_1536, align 4
  store i32 %10, i32* %1, align 4
  br label %11

11:                                               ; preds = %9, %4
  %12 = load i64, i64* @NET_IP_ALIGN, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = sub nsw i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @i40e_compute_pad(i32 %17)
  ret i32 %18
}

declare dso_local i32 @SKB_DATA_ALIGN(i64) #1

declare dso_local i32 @i40e_compute_pad(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
