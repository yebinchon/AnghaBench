; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_rx.c_efx_rx_config_page_split.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_rx.c_efx_rx_config_page_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, i32, i32, i32, i64, i64 }

@EFX_RX_BUF_ALIGNMENT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EFX_RX_PREFERRED_BATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_rx_config_page_split(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %3 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %4 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %3, i32 0, i32 6
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %7 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %5, %8
  %10 = load i32, i32* @EFX_RX_BUF_ALIGNMENT, align 4
  %11 = call i32 @ALIGN(i64 %9, i32 %10)
  %12 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %13 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %15 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %28

19:                                               ; preds = %1
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = sext i32 %20 to i64
  %22 = sub i64 %21, 4
  %23 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %22, %26
  br label %28

28:                                               ; preds = %19, %18
  %29 = phi i64 [ 1, %18 ], [ %27, %19 ]
  %30 = trunc i64 %29 to i32
  %31 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %32 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %35 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 %33, %36
  %38 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %39 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %37, %40
  %42 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %43 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @EFX_RX_PREFERRED_BATCH, align 4
  %45 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %46 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @DIV_ROUND_UP(i32 %44, i32 %47)
  %49 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %50 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  ret void
}

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
