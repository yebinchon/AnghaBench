; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_rx_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_rx_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_rx_queue = type { i32, i32, i32, %struct.efx_nic* }
%struct.efx_nic = type { i32 }

@FRF_AZ_RX_DESC_WPTR_DWORD = common dso_local global i32 0, align 4
@FR_AZ_RX_DESC_UPD_DWORD_P0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_farch_rx_write(%struct.efx_rx_queue* %0) #0 {
  %2 = alloca %struct.efx_rx_queue*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.efx_rx_queue* %0, %struct.efx_rx_queue** %2, align 8
  %6 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %7 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %6, i32 0, i32 3
  %8 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  store %struct.efx_nic* %8, %struct.efx_nic** %3, align 8
  br label %9

9:                                                ; preds = %17, %1
  %10 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %11 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %14 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %12, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %9
  %18 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %19 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %20 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %23 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %21, %24
  %26 = call i32 @efx_farch_build_rx_desc(%struct.efx_rx_queue* %18, i32 %25)
  %27 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %28 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add i32 %29, 1
  store i32 %30, i32* %28, align 8
  br label %9

31:                                               ; preds = %9
  %32 = call i32 (...) @wmb()
  %33 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %34 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %37 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %35, %38
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @FRF_AZ_RX_DESC_WPTR_DWORD, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @EFX_POPULATE_DWORD_1(i32 %40, i32 %41, i32 %42)
  %44 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %45 = load i32, i32* @FR_AZ_RX_DESC_UPD_DWORD_P0, align 4
  %46 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %47 = call i32 @efx_rx_queue_index(%struct.efx_rx_queue* %46)
  %48 = call i32 @efx_writed_page(%struct.efx_nic* %44, i32* %4, i32 %45, i32 %47)
  ret void
}

declare dso_local i32 @efx_farch_build_rx_desc(%struct.efx_rx_queue*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @EFX_POPULATE_DWORD_1(i32, i32, i32) #1

declare dso_local i32 @efx_writed_page(%struct.efx_nic*, i32*, i32, i32) #1

declare dso_local i32 @efx_rx_queue_index(%struct.efx_rx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
