; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_init_hw_82575.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_init_hw_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info }
%struct.e1000_mac_info = type { i64, i64, i64, i64 }

@e1000_i210 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Error initializing identification LED\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Initializing the IEEE VLAN\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Zeroing the MTA\0A\00", align 1
@E1000_MTA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Zeroing the UTA\0A\00", align 1
@E1000_UTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @igb_init_hw_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igb_init_hw_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_mac_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_mac_info* %9, %struct.e1000_mac_info** %4, align 8
  %10 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @e1000_i210, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = call i32 @igb_get_flash_presence_i210(%struct.e1000_hw* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = call i64 @igb_pll_workaround_i210(%struct.e1000_hw* %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i64, i64* %5, align 8
  store i64 %29, i64* %2, align 8
  br label %80

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %19, %1
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = call i64 @igb_id_led_init(%struct.e1000_hw* %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @hw_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  %39 = call i32 @hw_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %41 = call i32 @igb_clear_vfta(%struct.e1000_hw* %40)
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @igb_init_rx_addrs(%struct.e1000_hw* %42, i64 %43)
  %45 = call i32 @hw_dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %46

46:                                               ; preds = %56, %38
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %49 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32, i32* @E1000_MTA, align 4
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @array_wr32(i32 %53, i64 %54, i32 0)
  br label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %6, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %6, align 8
  br label %46

59:                                               ; preds = %46
  %60 = call i32 @hw_dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %61

61:                                               ; preds = %71, %59
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %64 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i32, i32* @E1000_UTA, align 4
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @array_wr32(i32 %68, i64 %69, i32 0)
  br label %71

71:                                               ; preds = %67
  %72 = load i64, i64* %6, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %6, align 8
  br label %61

74:                                               ; preds = %61
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %76 = call i64 @igb_setup_link(%struct.e1000_hw* %75)
  store i64 %76, i64* %5, align 8
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %78 = call i32 @igb_clear_hw_cntrs_82575(%struct.e1000_hw* %77)
  %79 = load i64, i64* %5, align 8
  store i64 %79, i64* %2, align 8
  br label %80

80:                                               ; preds = %74, %28
  %81 = load i64, i64* %2, align 8
  ret i64 %81
}

declare dso_local i32 @igb_get_flash_presence_i210(%struct.e1000_hw*) #1

declare dso_local i64 @igb_pll_workaround_i210(%struct.e1000_hw*) #1

declare dso_local i64 @igb_id_led_init(%struct.e1000_hw*) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @igb_clear_vfta(%struct.e1000_hw*) #1

declare dso_local i32 @igb_init_rx_addrs(%struct.e1000_hw*, i64) #1

declare dso_local i32 @array_wr32(i32, i64, i32) #1

declare dso_local i64 @igb_setup_link(%struct.e1000_hw*) #1

declare dso_local i32 @igb_clear_hw_cntrs_82575(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
