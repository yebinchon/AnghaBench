; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_disable_ecc_sec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_disable_ecc_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }

@XP_ECC_IER = common dso_local global i32 0, align 4
@TX_SEC = common dso_local global i32 0, align 4
@RX_SEC = common dso_local global i32 0, align 4
@DESC_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*, i32)* @xgbe_disable_ecc_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_disable_ecc_sec(%struct.xgbe_prv_data* %0, i32 %1) #0 {
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %7 = load i32, i32* @XP_ECC_IER, align 4
  %8 = call i32 @XP_IOREAD(%struct.xgbe_prv_data* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %25 [
    i32 128, label %10
    i32 129, label %15
    i32 130, label %20
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @XP_ECC_IER, align 4
  %13 = load i32, i32* @TX_SEC, align 4
  %14 = call i32 @XP_SET_BITS(i32 %11, i32 %12, i32 %13, i32 0)
  br label %25

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @XP_ECC_IER, align 4
  %18 = load i32, i32* @RX_SEC, align 4
  %19 = call i32 @XP_SET_BITS(i32 %16, i32 %17, i32 %18, i32 0)
  br label %25

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @XP_ECC_IER, align 4
  %23 = load i32, i32* @DESC_SEC, align 4
  %24 = call i32 @XP_SET_BITS(i32 %21, i32 %22, i32 %23, i32 0)
  br label %25

25:                                               ; preds = %2, %20, %15, %10
  %26 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %27 = load i32, i32* @XP_ECC_IER, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @XP_IOWRITE(%struct.xgbe_prv_data* %26, i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @XP_IOREAD(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @XP_SET_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @XP_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
