; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_i210.c_igb_init_nvm_params_i210.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_i210.c_igb_init_nvm_params_i210.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i32, i32, i32, i32 }

@igb_acquire_nvm_i210 = common dso_local global i32 0, align 4
@igb_release_nvm_i210 = common dso_local global i32 0, align 4
@igb_valid_led_default_i210 = common dso_local global i32 0, align 4
@e1000_nvm_flash_hw = common dso_local global i32 0, align 4
@igb_read_nvm_srrd_i210 = common dso_local global i32 0, align 4
@igb_write_nvm_srwr_i210 = common dso_local global i32* null, align 8
@igb_validate_nvm_checksum_i210 = common dso_local global i32* null, align 8
@igb_update_nvm_checksum_i210 = common dso_local global i32* null, align 8
@e1000_nvm_invm = common dso_local global i32 0, align 4
@igb_read_invm_i210 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_init_nvm_params_i210(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_nvm_info*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 0
  store %struct.e1000_nvm_info* %6, %struct.e1000_nvm_info** %4, align 8
  %7 = load i32, i32* @igb_acquire_nvm_i210, align 4
  %8 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %9 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 6
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @igb_release_nvm_i210, align 4
  %12 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %13 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 5
  store i32 %11, i32* %14, align 8
  %15 = load i32, i32* @igb_valid_led_default_i210, align 4
  %16 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %17 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  store i32 %15, i32* %18, align 4
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %20 = call i64 @igb_get_flash_presence_i210(%struct.e1000_hw* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %1
  %23 = load i32, i32* @e1000_nvm_flash_hw, align 4
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @igb_read_nvm_srrd_i210, align 4
  %28 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %29 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 8
  %31 = load i32*, i32** @igb_write_nvm_srwr_i210, align 8
  %32 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %33 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32* %31, i32** %34, align 8
  %35 = load i32*, i32** @igb_validate_nvm_checksum_i210, align 8
  %36 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %37 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32* %35, i32** %38, align 8
  %39 = load i32*, i32** @igb_update_nvm_checksum_i210, align 8
  %40 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %41 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32* %39, i32** %42, align 8
  br label %61

43:                                               ; preds = %1
  %44 = load i32, i32* @e1000_nvm_invm, align 4
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %46 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* @igb_read_invm_i210, align 4
  %49 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %50 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 8
  %52 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %53 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i32* null, i32** %54, align 8
  %55 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %56 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  %58 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %59 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %43, %22
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @igb_get_flash_presence_i210(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
