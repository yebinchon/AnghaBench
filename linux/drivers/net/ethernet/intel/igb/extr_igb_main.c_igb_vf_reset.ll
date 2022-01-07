; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_vf_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_vf_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, %struct.vf_data_storage* }
%struct.vf_data_storage = type { i32, i32, i64, i32, i32 }

@IGB_VF_FLAG_PF_SET_MAC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*, i64)* @igb_vf_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_vf_reset(%struct.igb_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vf_data_storage*, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %6, i32 0, i32 1
  %8 = load %struct.vf_data_storage*, %struct.vf_data_storage** %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %8, i64 %9
  store %struct.vf_data_storage* %10, %struct.vf_data_storage** %5, align 8
  %11 = load i32, i32* @IGB_VF_FLAG_PF_SET_MAC, align 4
  %12 = load %struct.vf_data_storage*, %struct.vf_data_storage** %5, align 8
  %13 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @jiffies, align 4
  %17 = load %struct.vf_data_storage*, %struct.vf_data_storage** %5, align 8
  %18 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @igb_clear_vf_vfta(%struct.igb_adapter* %19, i64 %20)
  %22 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %23 = load %struct.vf_data_storage*, %struct.vf_data_storage** %5, align 8
  %24 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @igb_set_vf_vlan(%struct.igb_adapter* %22, i32 %25, i32 1, i64 %26)
  %28 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %29 = load %struct.vf_data_storage*, %struct.vf_data_storage** %5, align 8
  %30 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.vf_data_storage*, %struct.vf_data_storage** %5, align 8
  %33 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = or i32 %31, %36
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @igb_set_vmvir(%struct.igb_adapter* %28, i32 %37, i64 %38)
  %40 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load %struct.vf_data_storage*, %struct.vf_data_storage** %5, align 8
  %43 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @igb_set_vmolr(%struct.igb_adapter* %40, i64 %41, i32 %47)
  %49 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load %struct.vf_data_storage*, %struct.vf_data_storage** %5, align 8
  %52 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @igb_set_vf_vlan_strip(%struct.igb_adapter* %49, i64 %50, i32 %57)
  %59 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %59, i32 0, i32 1
  %61 = load %struct.vf_data_storage*, %struct.vf_data_storage** %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %61, i64 %62
  %64 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @igb_set_rx_mode(i32 %67)
  ret void
}

declare dso_local i32 @igb_clear_vf_vfta(%struct.igb_adapter*, i64) #1

declare dso_local i32 @igb_set_vf_vlan(%struct.igb_adapter*, i32, i32, i64) #1

declare dso_local i32 @igb_set_vmvir(%struct.igb_adapter*, i32, i64) #1

declare dso_local i32 @igb_set_vmolr(%struct.igb_adapter*, i64, i32) #1

declare dso_local i32 @igb_set_vf_vlan_strip(%struct.igb_adapter*, i64, i32) #1

declare dso_local i32 @igb_set_rx_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
