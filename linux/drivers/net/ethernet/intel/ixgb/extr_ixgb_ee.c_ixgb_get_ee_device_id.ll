; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_ee.c_ixgb_get_ee_device_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_ee.c_ixgb_get_ee_device_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_hw = type { i64 }
%struct.ixgb_ee_map_type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgb_get_ee_device_id(%struct.ixgb_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgb_hw*, align 8
  %4 = alloca %struct.ixgb_ee_map_type*, align 8
  store %struct.ixgb_hw* %0, %struct.ixgb_hw** %3, align 8
  %5 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %6 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.ixgb_ee_map_type*
  store %struct.ixgb_ee_map_type* %8, %struct.ixgb_ee_map_type** %4, align 8
  %9 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %10 = call i64 @ixgb_check_and_get_eeprom_data(%struct.ixgb_hw* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.ixgb_ee_map_type*, %struct.ixgb_ee_map_type** %4, align 8
  %14 = getelementptr inbounds %struct.ixgb_ee_map_type, %struct.ixgb_ee_map_type* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  store i32 %16, i32* %2, align 4
  br label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %12
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i64 @ixgb_check_and_get_eeprom_data(%struct.ixgb_hw*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
