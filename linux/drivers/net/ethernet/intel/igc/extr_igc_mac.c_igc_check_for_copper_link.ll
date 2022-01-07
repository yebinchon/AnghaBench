; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_mac.c_igc_check_for_copper_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_mac.c_igc_check_for_copper_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { %struct.igc_mac_info }
%struct.igc_mac_info = type { i32, i32 }

@IGC_ERR_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error configuring flow control\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igc_check_for_copper_link(%struct.igc_hw* %0) #0 {
  %2 = alloca %struct.igc_hw*, align 8
  %3 = alloca %struct.igc_mac_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.igc_hw* %0, %struct.igc_hw** %2, align 8
  %6 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %7 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %6, i32 0, i32 0
  store %struct.igc_mac_info* %7, %struct.igc_mac_info** %3, align 8
  %8 = load %struct.igc_mac_info*, %struct.igc_mac_info** %3, align 8
  %9 = getelementptr inbounds %struct.igc_mac_info, %struct.igc_mac_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %45

13:                                               ; preds = %1
  %14 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %15 = call i32 @igc_phy_has_link(%struct.igc_hw* %14, i32 1, i32 0, i32* %5)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %45

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  br label %45

23:                                               ; preds = %19
  %24 = load %struct.igc_mac_info*, %struct.igc_mac_info** %3, align 8
  %25 = getelementptr inbounds %struct.igc_mac_info, %struct.igc_mac_info* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  %26 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %27 = call i32 @igc_check_downshift(%struct.igc_hw* %26)
  %28 = load %struct.igc_mac_info*, %struct.igc_mac_info** %3, align 8
  %29 = getelementptr inbounds %struct.igc_mac_info, %struct.igc_mac_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @IGC_ERR_CONFIG, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %45

35:                                               ; preds = %23
  %36 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %37 = call i32 @igc_config_collision_dist(%struct.igc_hw* %36)
  %38 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %39 = call i32 @igc_config_fc_after_link_up(%struct.igc_hw* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = call i32 @hw_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %35
  br label %45

45:                                               ; preds = %44, %32, %22, %18, %12
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @igc_phy_has_link(%struct.igc_hw*, i32, i32, i32*) #1

declare dso_local i32 @igc_check_downshift(%struct.igc_hw*) #1

declare dso_local i32 @igc_config_collision_dist(%struct.igc_hw*) #1

declare dso_local i32 @igc_config_fc_after_link_up(%struct.igc_hw*) #1

declare dso_local i32 @hw_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
