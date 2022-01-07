; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_watchdog_update_host_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_watchdog_update_host_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32, i32, i32, i32, i32, %struct.fm10k_hw }
%struct.fm10k_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.fm10k_hw.0*, i32*)* }
%struct.fm10k_hw.0 = type opaque

@__FM10K_LINK_DOWN = common dso_local global i32 0, align 4
@FM10K_FLAG_SWPRI_CONFIG = common dso_local global i32 0, align 4
@FM10K_FLAG_RESET_REQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_intfc*)* @fm10k_watchdog_update_host_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_watchdog_update_host_state(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca %struct.fm10k_intfc*, align 8
  %3 = alloca %struct.fm10k_hw*, align 8
  %4 = alloca i64, align 8
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %2, align 8
  %5 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %6 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %5, i32 0, i32 5
  store %struct.fm10k_hw* %6, %struct.fm10k_hw** %3, align 8
  %7 = load i32, i32* @__FM10K_LINK_DOWN, align 4
  %8 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %9 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @test_bit(i32 %7, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %15 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %17 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @time_is_after_jiffies(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %73

22:                                               ; preds = %13
  %23 = load i32, i32* @__FM10K_LINK_DOWN, align 4
  %24 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %25 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clear_bit(i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %1
  %29 = load i32, i32* @FM10K_FLAG_SWPRI_CONFIG, align 4
  %30 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %31 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @test_bit(i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = call i64 (...) @rtnl_trylock()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %40 = call i32 @fm10k_configure_swpri_map(%struct.fm10k_intfc* %39)
  %41 = call i32 (...) @rtnl_unlock()
  br label %42

42:                                               ; preds = %38, %35
  br label %43

43:                                               ; preds = %42, %28
  %44 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %45 = call i32 @fm10k_mbx_lock(%struct.fm10k_intfc* %44)
  %46 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %47 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64 (%struct.fm10k_hw.0*, i32*)*, i64 (%struct.fm10k_hw.0*, i32*)** %49, align 8
  %51 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %52 = bitcast %struct.fm10k_hw* %51 to %struct.fm10k_hw.0*
  %53 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %54 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %53, i32 0, i32 0
  %55 = call i64 %50(%struct.fm10k_hw.0* %52, i32* %54)
  store i64 %55, i64* %4, align 8
  %56 = load i64, i64* %4, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %43
  %59 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %60 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @time_is_before_jiffies(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i32, i32* @FM10K_FLAG_RESET_REQUESTED, align 4
  %66 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %67 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @set_bit(i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %64, %58, %43
  %71 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %72 = call i32 @fm10k_mbx_unlock(%struct.fm10k_intfc* %71)
  br label %73

73:                                               ; preds = %70, %21
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @time_is_after_jiffies(i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i64 @rtnl_trylock(...) #1

declare dso_local i32 @fm10k_configure_swpri_map(%struct.fm10k_intfc*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @fm10k_mbx_lock(%struct.fm10k_intfc*) #1

declare dso_local i64 @time_is_before_jiffies(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @fm10k_mbx_unlock(%struct.fm10k_intfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
