; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_handle_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_handle_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32, i32, i64, i32, %struct.TYPE_6__*, %struct.fm10k_hw }
%struct.TYPE_6__ = type { i32 }
%struct.fm10k_hw = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.fm10k_hw.0*, i32*)* }
%struct.fm10k_hw.0 = type opaque

@__FM10K_RESET_SUSPENDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Device was shut down as part of suspend... Attempting to recover\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@__FM10K_LINK_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_intfc*)* @fm10k_handle_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_handle_resume(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %3, align 8
  %6 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %7 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %6, i32 0, i32 5
  store %struct.fm10k_hw* %7, %struct.fm10k_hw** %4, align 8
  %8 = load i32, i32* @__FM10K_RESET_SUSPENDED, align 4
  %9 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %10 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @test_and_clear_bit(i32 %8, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %16 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %15, i32 0, i32 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = call i32 @dev_warn(i32* %18, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %22 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (%struct.fm10k_hw.0*, i32*)*, i32 (%struct.fm10k_hw.0*, i32*)** %24, align 8
  %26 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %27 = bitcast %struct.fm10k_hw* %26 to %struct.fm10k_hw.0*
  %28 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %29 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %28, i32 0, i32 3
  %30 = call i32 %25(%struct.fm10k_hw.0* %27, i32* %29)
  %31 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %32 = call i32 @fm10k_handle_reset(%struct.fm10k_intfc* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %20
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %56

37:                                               ; preds = %20
  %38 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %39 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %41 = call i32 @fm10k_watchdog_host_not_ready(%struct.fm10k_intfc* %40)
  %42 = load i64, i64* @jiffies, align 8
  %43 = load i64, i64* @HZ, align 8
  %44 = add nsw i64 %42, %43
  %45 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %46 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* @__FM10K_LINK_DOWN, align 4
  %48 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %49 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @set_bit(i32 %47, i32 %50)
  %52 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %53 = call i32 @fm10k_start_service_event(%struct.fm10k_intfc* %52)
  %54 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %55 = call i32 @fm10k_macvlan_schedule(%struct.fm10k_intfc* %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %37, %35
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @fm10k_handle_reset(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_watchdog_host_not_ready(%struct.fm10k_intfc*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @fm10k_start_service_event(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_macvlan_schedule(%struct.fm10k_intfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
