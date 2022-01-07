; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_rx.c_efx_recycle_rx_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_rx.c_efx_recycle_rx_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { i32 }
%struct.efx_rx_buffer = type { i32, %struct.page* }
%struct.page = type { i32 }
%struct.efx_rx_queue = type { i32, i32, i32, i32, %struct.page**, %struct.efx_nic* }
%struct.efx_nic = type { i32 }

@EFX_RX_BUF_LAST_IN_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_channel*, %struct.efx_rx_buffer*)* @efx_recycle_rx_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_recycle_rx_page(%struct.efx_channel* %0, %struct.efx_rx_buffer* %1) #0 {
  %3 = alloca %struct.efx_channel*, align 8
  %4 = alloca %struct.efx_rx_buffer*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.efx_rx_queue*, align 8
  %7 = alloca %struct.efx_nic*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.efx_channel* %0, %struct.efx_channel** %3, align 8
  store %struct.efx_rx_buffer* %1, %struct.efx_rx_buffer** %4, align 8
  %10 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %10, i32 0, i32 1
  %12 = load %struct.page*, %struct.page** %11, align 8
  store %struct.page* %12, %struct.page** %5, align 8
  %13 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %14 = call %struct.efx_rx_queue* @efx_channel_get_rx_queue(%struct.efx_channel* %13)
  store %struct.efx_rx_queue* %14, %struct.efx_rx_queue** %6, align 8
  %15 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %16 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %15, i32 0, i32 5
  %17 = load %struct.efx_nic*, %struct.efx_nic** %16, align 8
  store %struct.efx_nic* %17, %struct.efx_nic** %7, align 8
  %18 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @EFX_RX_BUF_LAST_IN_PAGE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %81

25:                                               ; preds = %2
  %26 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %27 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %30 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %28, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %34 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %33, i32 0, i32 4
  %35 = load %struct.page**, %struct.page*** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.page*, %struct.page** %35, i64 %37
  %39 = load %struct.page*, %struct.page** %38, align 8
  %40 = icmp eq %struct.page* %39, null
  br i1 %40, label %41, label %69

41:                                               ; preds = %25
  %42 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %43 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %46 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %44, %47
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %54 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = add i32 %55, 1
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %52, %41
  %58 = load %struct.page*, %struct.page** %5, align 8
  %59 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %60 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %59, i32 0, i32 4
  %61 = load %struct.page**, %struct.page*** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.page*, %struct.page** %61, i64 %63
  store %struct.page* %58, %struct.page** %64, align 8
  %65 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %66 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add i32 %67, 1
  store i32 %68, i32* %66, align 8
  br label %81

69:                                               ; preds = %25
  %70 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %71 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %75 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %4, align 8
  %76 = call i32 @efx_unmap_rx_buffer(%struct.efx_nic* %74, %struct.efx_rx_buffer* %75)
  %77 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %4, align 8
  %78 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %77, i32 0, i32 1
  %79 = load %struct.page*, %struct.page** %78, align 8
  %80 = call i32 @put_page(%struct.page* %79)
  br label %81

81:                                               ; preds = %69, %57, %24
  ret void
}

declare dso_local %struct.efx_rx_queue* @efx_channel_get_rx_queue(%struct.efx_channel*) #1

declare dso_local i32 @efx_unmap_rx_buffer(%struct.efx_nic*, %struct.efx_rx_buffer*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
