; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_rx_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_rx_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_rx_queue = type { i32, i32, i32, %struct.efx_nic* }
%struct.efx_nic = type { i32 }

@ERF_DZ_RX_DESC_WPTR = common dso_local global i32 0, align 4
@ER_DZ_RX_DESC_UPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_rx_queue*)* @efx_ef10_rx_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ef10_rx_write(%struct.efx_rx_queue* %0) #0 {
  %2 = alloca %struct.efx_rx_queue*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.efx_rx_queue* %0, %struct.efx_rx_queue** %2, align 8
  %6 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %7 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %6, i32 0, i32 3
  %8 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  store %struct.efx_nic* %8, %struct.efx_nic** %3, align 8
  %9 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %10 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, -8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %14 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %52

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %30, %19
  %21 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %22 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %23 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %26 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %24, %27
  %29 = call i32 @efx_ef10_build_rx_desc(%struct.efx_rx_queue* %21, i32 %28)
  br label %30

30:                                               ; preds = %20
  %31 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %32 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %20, label %37

37:                                               ; preds = %30
  %38 = call i32 (...) @wmb()
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @ERF_DZ_RX_DESC_WPTR, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %43 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %41, %44
  %46 = call i32 @EFX_POPULATE_DWORD_1(i32 %39, i32 %40, i32 %45)
  %47 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %48 = load i32, i32* @ER_DZ_RX_DESC_UPD, align 4
  %49 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %50 = call i32 @efx_rx_queue_index(%struct.efx_rx_queue* %49)
  %51 = call i32 @efx_writed_page(%struct.efx_nic* %47, i32* %5, i32 %48, i32 %50)
  br label %52

52:                                               ; preds = %37, %18
  ret void
}

declare dso_local i32 @efx_ef10_build_rx_desc(%struct.efx_rx_queue*, i32) #1

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
