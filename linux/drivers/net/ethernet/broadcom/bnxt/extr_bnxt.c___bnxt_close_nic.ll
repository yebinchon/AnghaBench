; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_close_nic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_close_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i64, i32, i32, i32 }

@BNXT_STATE_OPEN = common dso_local global i32 0, align 4
@BNXT_STATE_IN_FW_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, i32, i32)* @__bnxt_close_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bnxt_close_nic(%struct.bnxt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %8 = call i64 @BNXT_PF(%struct.bnxt* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %12 = call i32 @bnxt_vf_reps_close(%struct.bnxt* %11)
  br label %13

13:                                               ; preds = %10, %3
  %14 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %15 = call i32 @bnxt_tx_disable(%struct.bnxt* %14)
  %16 = load i32, i32* @BNXT_STATE_OPEN, align 4
  %17 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 3
  %19 = call i32 @clear_bit(i32 %16, i32* %18)
  %20 = call i32 (...) @smp_mb__after_atomic()
  br label %21

21:                                               ; preds = %25, %13
  %22 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %23 = call i64 @bnxt_drv_busy(%struct.bnxt* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @msleep(i32 20)
  br label %21

27:                                               ; preds = %21
  %28 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @bnxt_shutdown_nic(%struct.bnxt* %28, i32 %29)
  %31 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %32 = call i32 @bnxt_debug_dev_exit(%struct.bnxt* %31)
  %33 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %34 = call i32 @bnxt_disable_napi(%struct.bnxt* %33)
  %35 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %36 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %35, i32 0, i32 4
  %37 = call i32 @del_timer_sync(i32* %36)
  %38 = load i32, i32* @BNXT_STATE_IN_FW_RESET, align 4
  %39 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %40 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %39, i32 0, i32 3
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %27
  %44 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %45 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @pci_is_enabled(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %51 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @pci_disable_device(i32 %52)
  br label %54

54:                                               ; preds = %49, %43, %27
  %55 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %56 = call i32 @bnxt_free_skbs(%struct.bnxt* %55)
  %57 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %58 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %63 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %64 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %63, i32 0, i32 0
  %65 = call i32 @bnxt_get_ring_stats(%struct.bnxt* %62, i32* %64)
  br label %66

66:                                               ; preds = %61, %54
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %71 = call i32 @bnxt_free_irq(%struct.bnxt* %70)
  %72 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %73 = call i32 @bnxt_del_napi(%struct.bnxt* %72)
  br label %74

74:                                               ; preds = %69, %66
  %75 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @bnxt_free_mem(%struct.bnxt* %75, i32 %76)
  ret void
}

declare dso_local i64 @BNXT_PF(%struct.bnxt*) #1

declare dso_local i32 @bnxt_vf_reps_close(%struct.bnxt*) #1

declare dso_local i32 @bnxt_tx_disable(%struct.bnxt*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i64 @bnxt_drv_busy(%struct.bnxt*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @bnxt_shutdown_nic(%struct.bnxt*, i32) #1

declare dso_local i32 @bnxt_debug_dev_exit(%struct.bnxt*) #1

declare dso_local i32 @bnxt_disable_napi(%struct.bnxt*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @pci_is_enabled(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @bnxt_free_skbs(%struct.bnxt*) #1

declare dso_local i32 @bnxt_get_ring_stats(%struct.bnxt*, i32*) #1

declare dso_local i32 @bnxt_free_irq(%struct.bnxt*) #1

declare dso_local i32 @bnxt_del_napi(%struct.bnxt*) #1

declare dso_local i32 @bnxt_free_mem(%struct.bnxt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
