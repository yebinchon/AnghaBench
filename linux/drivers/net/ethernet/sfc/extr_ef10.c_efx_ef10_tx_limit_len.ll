; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_tx_limit_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_tx_limit_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32 }

@EFX_EF10_MAX_TX_DESCRIPTOR_LEN = common dso_local global i32 0, align 4
@EFX_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_tx_queue*, i32, i32)* @efx_ef10_tx_limit_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_tx_limit_len(%struct.efx_tx_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.efx_tx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @EFX_EF10_MAX_TX_DESCRIPTOR_LEN, align 4
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @EFX_EF10_MAX_TX_DESCRIPTOR_LEN, align 4
  %14 = add i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @EFX_EF10_MAX_TX_DESCRIPTOR_LEN, align 4
  %16 = load i32, i32* @EFX_PAGE_SIZE, align 4
  %17 = icmp ult i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUILD_BUG_ON(i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @EFX_PAGE_SIZE, align 4
  %22 = sub i32 %21, 1
  %23 = xor i32 %22, -1
  %24 = and i32 %20, %23
  %25 = load i32, i32* %5, align 4
  %26 = sub i32 %24, %25
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %11, %3
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
