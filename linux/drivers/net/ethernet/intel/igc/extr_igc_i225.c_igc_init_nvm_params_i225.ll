; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_i225.c_igc_init_nvm_params_i225.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_i225.c_igc_init_nvm_params_i225.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { %struct.igc_nvm_info }
%struct.igc_nvm_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i32, i32, i32 }

@igc_acquire_nvm_i225 = common dso_local global i32 0, align 4
@igc_release_nvm_i225 = common dso_local global i32 0, align 4
@igc_nvm_flash_hw = common dso_local global i32 0, align 4
@igc_read_nvm_srrd_i225 = common dso_local global i32 0, align 4
@igc_write_nvm_srwr_i225 = common dso_local global i32* null, align 8
@igc_validate_nvm_checksum_i225 = common dso_local global i32* null, align 8
@igc_update_nvm_checksum_i225 = common dso_local global i32* null, align 8
@igc_nvm_invm = common dso_local global i32 0, align 4
@igc_read_nvm_eerd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igc_init_nvm_params_i225(%struct.igc_hw* %0) #0 {
  %2 = alloca %struct.igc_hw*, align 8
  %3 = alloca %struct.igc_nvm_info*, align 8
  store %struct.igc_hw* %0, %struct.igc_hw** %2, align 8
  %4 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %5 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %4, i32 0, i32 0
  store %struct.igc_nvm_info* %5, %struct.igc_nvm_info** %3, align 8
  %6 = load i32, i32* @igc_acquire_nvm_i225, align 4
  %7 = load %struct.igc_nvm_info*, %struct.igc_nvm_info** %3, align 8
  %8 = getelementptr inbounds %struct.igc_nvm_info, %struct.igc_nvm_info* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 5
  store i32 %6, i32* %9, align 8
  %10 = load i32, i32* @igc_release_nvm_i225, align 4
  %11 = load %struct.igc_nvm_info*, %struct.igc_nvm_info** %3, align 8
  %12 = getelementptr inbounds %struct.igc_nvm_info, %struct.igc_nvm_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  store i32 %10, i32* %13, align 4
  %14 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %15 = call i64 @igc_get_flash_presence_i225(%struct.igc_hw* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %1
  %18 = load i32, i32* @igc_nvm_flash_hw, align 4
  %19 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %20 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.igc_nvm_info, %struct.igc_nvm_info* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 8
  %22 = load i32, i32* @igc_read_nvm_srrd_i225, align 4
  %23 = load %struct.igc_nvm_info*, %struct.igc_nvm_info** %3, align 8
  %24 = getelementptr inbounds %struct.igc_nvm_info, %struct.igc_nvm_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 8
  %26 = load i32*, i32** @igc_write_nvm_srwr_i225, align 8
  %27 = load %struct.igc_nvm_info*, %struct.igc_nvm_info** %3, align 8
  %28 = getelementptr inbounds %struct.igc_nvm_info, %struct.igc_nvm_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32* %26, i32** %29, align 8
  %30 = load i32*, i32** @igc_validate_nvm_checksum_i225, align 8
  %31 = load %struct.igc_nvm_info*, %struct.igc_nvm_info** %3, align 8
  %32 = getelementptr inbounds %struct.igc_nvm_info, %struct.igc_nvm_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32* %30, i32** %33, align 8
  %34 = load i32*, i32** @igc_update_nvm_checksum_i225, align 8
  %35 = load %struct.igc_nvm_info*, %struct.igc_nvm_info** %3, align 8
  %36 = getelementptr inbounds %struct.igc_nvm_info, %struct.igc_nvm_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32* %34, i32** %37, align 8
  br label %56

38:                                               ; preds = %1
  %39 = load i32, i32* @igc_nvm_invm, align 4
  %40 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %41 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.igc_nvm_info, %struct.igc_nvm_info* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* @igc_read_nvm_eerd, align 4
  %44 = load %struct.igc_nvm_info*, %struct.igc_nvm_info** %3, align 8
  %45 = getelementptr inbounds %struct.igc_nvm_info, %struct.igc_nvm_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 8
  %47 = load %struct.igc_nvm_info*, %struct.igc_nvm_info** %3, align 8
  %48 = getelementptr inbounds %struct.igc_nvm_info, %struct.igc_nvm_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i32* null, i32** %49, align 8
  %50 = load %struct.igc_nvm_info*, %struct.igc_nvm_info** %3, align 8
  %51 = getelementptr inbounds %struct.igc_nvm_info, %struct.igc_nvm_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  %53 = load %struct.igc_nvm_info*, %struct.igc_nvm_info** %3, align 8
  %54 = getelementptr inbounds %struct.igc_nvm_info, %struct.igc_nvm_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %38, %17
  ret i32 0
}

declare dso_local i64 @igc_get_flash_presence_i225(%struct.igc_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
