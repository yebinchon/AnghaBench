; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_handle_rx_flush_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_handle_rx_flush_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, i32, i32, i32 }
%struct.efx_channel = type { i32 }
%struct.efx_rx_queue = type { i32 }

@FSF_AZ_DRIVER_EV_RX_DESCQ_ID = common dso_local global i32 0, align 4
@FSF_AZ_DRIVER_EV_RX_FLUSH_FAIL = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"RXQ %d flush retry\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, i32*)* @efx_farch_handle_rx_flush_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_farch_handle_rx_flush_done(%struct.efx_nic* %0, i32* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.efx_channel*, align 8
  %6 = alloca %struct.efx_rx_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @FSF_AZ_DRIVER_EV_RX_DESCQ_ID, align 4
  %12 = call i32 @EFX_QWORD_FIELD(i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FSF_AZ_DRIVER_EV_RX_FLUSH_FAIL, align 4
  %16 = call i32 @EFX_QWORD_FIELD(i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %19 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %66

23:                                               ; preds = %2
  %24 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.efx_channel* @efx_get_channel(%struct.efx_nic* %24, i32 %25)
  store %struct.efx_channel* %26, %struct.efx_channel** %5, align 8
  %27 = load %struct.efx_channel*, %struct.efx_channel** %5, align 8
  %28 = call i32 @efx_channel_has_rx_queue(%struct.efx_channel* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %66

31:                                               ; preds = %23
  %32 = load %struct.efx_channel*, %struct.efx_channel** %5, align 8
  %33 = call %struct.efx_rx_queue* @efx_channel_get_rx_queue(%struct.efx_channel* %32)
  store %struct.efx_rx_queue* %33, %struct.efx_rx_queue** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %38 = load i32, i32* @hw, align 4
  %39 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %40 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @netif_info(%struct.efx_nic* %37, i32 %38, i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %45 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %47 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %46, i32 0, i32 3
  %48 = call i32 @atomic_inc(i32* %47)
  br label %55

49:                                               ; preds = %31
  %50 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %51 = call i32 @efx_rx_queue_channel(%struct.efx_rx_queue* %50)
  %52 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %53 = call i32 @EFX_CHANNEL_MAGIC_RX_DRAIN(%struct.efx_rx_queue* %52)
  %54 = call i32 @efx_farch_magic_event(i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %49, %36
  %56 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %57 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %56, i32 0, i32 2
  %58 = call i32 @atomic_dec(i32* %57)
  %59 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %60 = call i64 @efx_farch_flush_wake(%struct.efx_nic* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %64 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %63, i32 0, i32 1
  %65 = call i32 @wake_up(i32* %64)
  br label %66

66:                                               ; preds = %22, %30, %62, %55
  ret void
}

declare dso_local i32 @EFX_QWORD_FIELD(i32, i32) #1

declare dso_local %struct.efx_channel* @efx_get_channel(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_channel_has_rx_queue(%struct.efx_channel*) #1

declare dso_local %struct.efx_rx_queue* @efx_channel_get_rx_queue(%struct.efx_channel*) #1

declare dso_local i32 @netif_info(%struct.efx_nic*, i32, i32, i8*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @efx_farch_magic_event(i32, i32) #1

declare dso_local i32 @efx_rx_queue_channel(%struct.efx_rx_queue*) #1

declare dso_local i32 @EFX_CHANNEL_MAGIC_RX_DRAIN(%struct.efx_rx_queue*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @efx_farch_flush_wake(%struct.efx_nic*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
