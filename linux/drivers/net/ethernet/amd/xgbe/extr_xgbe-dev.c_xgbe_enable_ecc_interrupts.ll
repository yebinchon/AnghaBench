; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_enable_ecc_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_enable_ecc_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@XP_ECC_ISR = common dso_local global i32 0, align 4
@XP_ECC_IER = common dso_local global i32 0, align 4
@TX_DED = common dso_local global i32 0, align 4
@TX_SEC = common dso_local global i32 0, align 4
@RX_DED = common dso_local global i32 0, align 4
@RX_SEC = common dso_local global i32 0, align 4
@DESC_DED = common dso_local global i32 0, align 4
@DESC_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_enable_ecc_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_enable_ecc_interrupts(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %6 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %48

12:                                               ; preds = %1
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %14 = load i32, i32* @XP_ECC_ISR, align 4
  %15 = call i32 @XP_IOREAD(%struct.xgbe_prv_data* %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %17 = load i32, i32* @XP_ECC_ISR, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @XP_IOWRITE(%struct.xgbe_prv_data* %16, i32 %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @XP_ECC_IER, align 4
  %22 = load i32, i32* @TX_DED, align 4
  %23 = call i32 @XP_SET_BITS(i32 %20, i32 %21, i32 %22, i32 1)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @XP_ECC_IER, align 4
  %26 = load i32, i32* @TX_SEC, align 4
  %27 = call i32 @XP_SET_BITS(i32 %24, i32 %25, i32 %26, i32 1)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @XP_ECC_IER, align 4
  %30 = load i32, i32* @RX_DED, align 4
  %31 = call i32 @XP_SET_BITS(i32 %28, i32 %29, i32 %30, i32 1)
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @XP_ECC_IER, align 4
  %34 = load i32, i32* @RX_SEC, align 4
  %35 = call i32 @XP_SET_BITS(i32 %32, i32 %33, i32 %34, i32 1)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @XP_ECC_IER, align 4
  %38 = load i32, i32* @DESC_DED, align 4
  %39 = call i32 @XP_SET_BITS(i32 %36, i32 %37, i32 %38, i32 1)
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @XP_ECC_IER, align 4
  %42 = load i32, i32* @DESC_SEC, align 4
  %43 = call i32 @XP_SET_BITS(i32 %40, i32 %41, i32 %42, i32 1)
  %44 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %45 = load i32, i32* @XP_ECC_IER, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @XP_IOWRITE(%struct.xgbe_prv_data* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @XP_IOREAD(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @XP_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @XP_SET_BITS(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
