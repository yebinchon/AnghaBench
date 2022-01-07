; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_rx.c_efx_probe_rx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_rx.c_efx_probe_rx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_rx_queue = type { i32, i32*, %struct.efx_nic* }
%struct.efx_nic = type { i32, i32 }

@EFX_MIN_DMAQ_SIZE = common dso_local global i32 0, align 4
@EFX_MAX_DMAQ_SIZE = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"creating RX queue %d size %#x mask %#x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_probe_rx_queue(%struct.efx_rx_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_rx_queue*, align 8
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.efx_rx_queue* %0, %struct.efx_rx_queue** %3, align 8
  %7 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %3, align 8
  %8 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %7, i32 0, i32 2
  %9 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  store %struct.efx_nic* %9, %struct.efx_nic** %4, align 8
  %10 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @roundup_pow_of_two(i32 %12)
  %14 = load i32, i32* @EFX_MIN_DMAQ_SIZE, align 4
  %15 = call i32 @max(i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @EFX_MAX_DMAQ_SIZE, align 4
  %18 = icmp ugt i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @EFX_WARN_ON_PARANOID(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = sub i32 %21, 1
  %23 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %3, align 8
  %24 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %26 = load i32, i32* @probe, align 4
  %27 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %28 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %3, align 8
  %31 = call i32 @efx_rx_queue_index(%struct.efx_rx_queue* %30)
  %32 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %33 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %3, align 8
  %36 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @netif_dbg(%struct.efx_nic* %25, i32 %26, i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32* @kcalloc(i32 %39, i32 4, i32 %40)
  %42 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %3, align 8
  %43 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %3, align 8
  %45 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %1
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %65

51:                                               ; preds = %1
  %52 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %3, align 8
  %53 = call i32 @efx_nic_probe_rx(%struct.efx_rx_queue* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %3, align 8
  %58 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @kfree(i32* %59)
  %61 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %3, align 8
  %62 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %56, %51
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %48
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @EFX_WARN_ON_PARANOID(i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @efx_rx_queue_index(%struct.efx_rx_queue*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @efx_nic_probe_rx(%struct.efx_rx_queue*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
