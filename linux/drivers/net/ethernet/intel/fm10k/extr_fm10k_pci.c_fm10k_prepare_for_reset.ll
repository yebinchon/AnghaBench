; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_prepare_for_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_prepare_for_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i64, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@__FM10K_RESETTING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_intfc*)* @fm10k_prepare_for_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_prepare_for_reset(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %3, align 8
  %5 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %6 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %5, i32 0, i32 3
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %4, align 8
  %8 = call i32 (...) @in_interrupt()
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call i32 @netif_trans_update(%struct.net_device* %10)
  %12 = load i32, i32* @__FM10K_RESETTING, align 4
  %13 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %14 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @test_and_set_bit(i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

19:                                               ; preds = %1
  %20 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %21 = call i32 @fm10k_stop_macvlan_task(%struct.fm10k_intfc* %20)
  %22 = call i32 (...) @rtnl_lock()
  %23 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %24 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @fm10k_iov_suspend(i32 %25)
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = call i64 @netif_running(%struct.net_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = call i32 @fm10k_close(%struct.net_device* %31)
  br label %33

33:                                               ; preds = %30, %19
  %34 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %35 = call i32 @fm10k_mbx_free_irq(%struct.fm10k_intfc* %34)
  %36 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %37 = call i32 @fm10k_clear_queueing_scheme(%struct.fm10k_intfc* %36)
  %38 = load i64, i64* @jiffies, align 8
  %39 = load i32, i32* @HZ, align 4
  %40 = mul nsw i32 10, %39
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %44 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = call i32 (...) @rtnl_unlock()
  store i32 1, i32* %2, align 4
  br label %46

46:                                               ; preds = %33, %18
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @fm10k_stop_macvlan_task(%struct.fm10k_intfc*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @fm10k_iov_suspend(i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @fm10k_close(%struct.net_device*) #1

declare dso_local i32 @fm10k_mbx_free_irq(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_clear_queueing_scheme(%struct.fm10k_intfc*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
