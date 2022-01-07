; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_rx.c_efx_rx_packet__check_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_rx.c_efx_rx_packet__check_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_rx_queue = type { %struct.efx_nic* }
%struct.efx_nic = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.efx_rx_buffer = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EFX_RX_PKT_DISCARD = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"RX queue %d overlength RX event (%#x > %#x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_rx_queue*, %struct.efx_rx_buffer*, i32)* @efx_rx_packet__check_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_rx_packet__check_len(%struct.efx_rx_queue* %0, %struct.efx_rx_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.efx_rx_queue*, align 8
  %5 = alloca %struct.efx_rx_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.efx_nic*, align 8
  %8 = alloca i32, align 4
  store %struct.efx_rx_queue* %0, %struct.efx_rx_queue** %4, align 8
  store %struct.efx_rx_buffer* %1, %struct.efx_rx_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %4, align 8
  %10 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %9, i32 0, i32 0
  %11 = load %struct.efx_nic*, %struct.efx_nic** %10, align 8
  store %struct.efx_nic* %11, %struct.efx_nic** %7, align 8
  %12 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %5, align 8
  %13 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %16 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub i32 %14, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ule i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %53

28:                                               ; preds = %3
  %29 = load i32, i32* @EFX_RX_PKT_DISCARD, align 4
  %30 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %5, align 8
  %31 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = call i64 (...) @net_ratelimit()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %28
  %37 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %38 = load i32, i32* @rx_err, align 4
  %39 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %40 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %4, align 8
  %43 = call i32 @efx_rx_queue_index(%struct.efx_rx_queue* %42)
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @netif_err(%struct.efx_nic* %37, i32 %38, i32 %41, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %36, %28
  %48 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %4, align 8
  %49 = call %struct.TYPE_4__* @efx_rx_queue_channel(%struct.efx_rx_queue* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %27
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @efx_rx_queue_index(%struct.efx_rx_queue*) #1

declare dso_local %struct.TYPE_4__* @efx_rx_queue_channel(%struct.efx_rx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
