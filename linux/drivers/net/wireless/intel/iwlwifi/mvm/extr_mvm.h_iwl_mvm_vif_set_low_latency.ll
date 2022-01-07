; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mvm.h_iwl_mvm_vif_set_low_latency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mvm.h_iwl_mvm_vif_set_low_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm_vif = type { i32, i32 }

@LOW_LATENCY_DEBUGFS_FORCE_ENABLE = common dso_local global i32 0, align 4
@LOW_LATENCY_DEBUGFS_FORCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm_vif*, i32, i32)* @iwl_mvm_vif_set_low_latency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_vif_set_low_latency(%struct.iwl_mvm_vif* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_mvm_vif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwl_mvm_vif* %0, %struct.iwl_mvm_vif** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  br label %23

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %4, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %16, %10
  %24 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %4, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LOW_LATENCY_DEBUGFS_FORCE_ENABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @LOW_LATENCY_DEBUGFS_FORCE_ENABLE, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %69

35:                                               ; preds = %30, %23
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @LOW_LATENCY_DEBUGFS_FORCE_ENABLE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %4, align 8
  %44 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @LOW_LATENCY_DEBUGFS_FORCE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %7, align 4
  br label %65

52:                                               ; preds = %39, %35
  %53 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %4, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @LOW_LATENCY_DEBUGFS_FORCE_ENABLE, align 4
  %57 = load i32, i32* @LOW_LATENCY_DEBUGFS_FORCE, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = and i32 %55, %59
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %52, %42
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %4, align 8
  %68 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
