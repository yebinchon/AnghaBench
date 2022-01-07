; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_ethtool.c_igc_erase_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_ethtool.c_igc_erase_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { i32 }
%struct.igc_nfc_filter = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@IGC_FILTER_FLAG_ETHER_TYPE = common dso_local global i32 0, align 4
@IGC_FILTER_FLAG_VLAN_TCI = common dso_local global i32 0, align 4
@IGC_FILTER_FLAG_SRC_MAC_ADDR = common dso_local global i32 0, align 4
@IGC_MAC_STATE_SRC_ADDR = common dso_local global i32 0, align 4
@IGC_FILTER_FLAG_DST_MAC_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igc_erase_filter(%struct.igc_adapter* %0, %struct.igc_nfc_filter* %1) #0 {
  %3 = alloca %struct.igc_adapter*, align 8
  %4 = alloca %struct.igc_nfc_filter*, align 8
  store %struct.igc_adapter* %0, %struct.igc_adapter** %3, align 8
  store %struct.igc_nfc_filter* %1, %struct.igc_nfc_filter** %4, align 8
  %5 = load %struct.igc_nfc_filter*, %struct.igc_nfc_filter** %4, align 8
  %6 = getelementptr inbounds %struct.igc_nfc_filter, %struct.igc_nfc_filter* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IGC_FILTER_FLAG_ETHER_TYPE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %14 = load %struct.igc_nfc_filter*, %struct.igc_nfc_filter** %4, align 8
  %15 = getelementptr inbounds %struct.igc_nfc_filter, %struct.igc_nfc_filter* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @igc_clear_etype_filter_regs(%struct.igc_adapter* %13, i32 %16)
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.igc_nfc_filter*, %struct.igc_nfc_filter** %4, align 8
  %20 = getelementptr inbounds %struct.igc_nfc_filter, %struct.igc_nfc_filter* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IGC_FILTER_FLAG_VLAN_TCI, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %18
  %27 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %28 = load %struct.igc_nfc_filter*, %struct.igc_nfc_filter** %4, align 8
  %29 = getelementptr inbounds %struct.igc_nfc_filter, %struct.igc_nfc_filter* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ntohs(i32 %31)
  %33 = call i32 @igc_clear_vlan_prio_filter(%struct.igc_adapter* %27, i32 %32)
  br label %34

34:                                               ; preds = %26, %18
  %35 = load %struct.igc_nfc_filter*, %struct.igc_nfc_filter** %4, align 8
  %36 = getelementptr inbounds %struct.igc_nfc_filter, %struct.igc_nfc_filter* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IGC_FILTER_FLAG_SRC_MAC_ADDR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %34
  %43 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %44 = load %struct.igc_nfc_filter*, %struct.igc_nfc_filter** %4, align 8
  %45 = getelementptr inbounds %struct.igc_nfc_filter, %struct.igc_nfc_filter* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.igc_nfc_filter*, %struct.igc_nfc_filter** %4, align 8
  %49 = getelementptr inbounds %struct.igc_nfc_filter, %struct.igc_nfc_filter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IGC_MAC_STATE_SRC_ADDR, align 4
  %52 = call i32 @igc_del_mac_steering_filter(%struct.igc_adapter* %43, i32 %47, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %42, %34
  %54 = load %struct.igc_nfc_filter*, %struct.igc_nfc_filter** %4, align 8
  %55 = getelementptr inbounds %struct.igc_nfc_filter, %struct.igc_nfc_filter* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IGC_FILTER_FLAG_DST_MAC_ADDR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %53
  %62 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %63 = load %struct.igc_nfc_filter*, %struct.igc_nfc_filter** %4, align 8
  %64 = getelementptr inbounds %struct.igc_nfc_filter, %struct.igc_nfc_filter* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.igc_nfc_filter*, %struct.igc_nfc_filter** %4, align 8
  %68 = getelementptr inbounds %struct.igc_nfc_filter, %struct.igc_nfc_filter* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @igc_del_mac_steering_filter(%struct.igc_adapter* %62, i32 %66, i32 %69, i32 0)
  br label %71

71:                                               ; preds = %61, %53
  ret i32 0
}

declare dso_local i32 @igc_clear_etype_filter_regs(%struct.igc_adapter*, i32) #1

declare dso_local i32 @igc_clear_vlan_prio_filter(%struct.igc_adapter*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @igc_del_mac_steering_filter(%struct.igc_adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
