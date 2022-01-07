; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_rx_pull_indir_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_rx_pull_indir_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@FR_BZ_RX_INDIRECTION_TBL_ROWS = common dso_local global i64 0, align 8
@FR_BZ_RX_INDIRECTION_TBL = common dso_local global i64 0, align 8
@FR_BZ_RX_INDIRECTION_TBL_STEP = common dso_local global i64 0, align 8
@FRF_BZ_IT_QUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_farch_rx_pull_indir_table(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %6 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = call i64 @ARRAY_SIZE(i32* %8)
  %10 = load i64, i64* @FR_BZ_RX_INDIRECTION_TBL_ROWS, align 8
  %11 = icmp ne i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUILD_BUG_ON(i32 %12)
  store i64 0, i64* %3, align 8
  br label %14

14:                                               ; preds = %35, %1
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @FR_BZ_RX_INDIRECTION_TBL_ROWS, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %20 = load i64, i64* @FR_BZ_RX_INDIRECTION_TBL, align 8
  %21 = load i64, i64* @FR_BZ_RX_INDIRECTION_TBL_STEP, align 8
  %22 = load i64, i64* %3, align 8
  %23 = mul i64 %21, %22
  %24 = add i64 %20, %23
  %25 = call i32 @efx_readd(%struct.efx_nic* %19, i32* %4, i64 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @FRF_BZ_IT_QUEUE, align 4
  %28 = call i32 @EFX_DWORD_FIELD(i32 %26, i32 %27)
  %29 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %30 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 %28, i32* %34, align 4
  br label %35

35:                                               ; preds = %18
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %3, align 8
  br label %14

38:                                               ; preds = %14
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @efx_readd(%struct.efx_nic*, i32*, i64) #1

declare dso_local i32 @EFX_DWORD_FIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
