; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_aq_fw1x_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_aq_fw1x_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.hw_atl_utils_fw_rpc = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@AQ_NIC_WOL_ENABLED = common dso_local global i32 0, align 4
@HAL_ATLANTIC_UTILS_FW_MSG_ENABLE_WAKEUP = common dso_local global i32 0, align 4
@MPI_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, i32, i32*)* @aq_fw1x_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_fw1x_set_power(%struct.aq_hw_s* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.aq_hw_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hw_atl_utils_fw_rpc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store %struct.hw_atl_utils_fw_rpc* null, %struct.hw_atl_utils_fw_rpc** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %11 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AQ_NIC_WOL_ENABLED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %3
  %19 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @aq_fw1x_set_wol(%struct.aq_hw_s* %19, i32 1, i32* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %54

25:                                               ; preds = %18
  store i32 8, i32* %8, align 4
  %26 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %27 = call i32 @hw_atl_utils_fw_rpc_wait(%struct.aq_hw_s* %26, %struct.hw_atl_utils_fw_rpc** %7)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %54

31:                                               ; preds = %25
  %32 = load %struct.hw_atl_utils_fw_rpc*, %struct.hw_atl_utils_fw_rpc** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @memset(%struct.hw_atl_utils_fw_rpc* %32, i32 0, i32 %33)
  %35 = load i32, i32* @HAL_ATLANTIC_UTILS_FW_MSG_ENABLE_WAKEUP, align 4
  %36 = load %struct.hw_atl_utils_fw_rpc*, %struct.hw_atl_utils_fw_rpc** %7, align 8
  %37 = getelementptr inbounds %struct.hw_atl_utils_fw_rpc, %struct.hw_atl_utils_fw_rpc* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.hw_atl_utils_fw_rpc*, %struct.hw_atl_utils_fw_rpc** %7, align 8
  %39 = getelementptr inbounds %struct.hw_atl_utils_fw_rpc, %struct.hw_atl_utils_fw_rpc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 2, i32* %40, align 4
  %41 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @hw_atl_utils_fw_rpc_call(%struct.aq_hw_s* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  br label %54

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47, %3
  %49 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %50 = call i32 @hw_atl_utils_mpi_set_speed(%struct.aq_hw_s* %49, i32 0)
  %51 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %52 = load i32, i32* @MPI_POWER, align 4
  %53 = call i32 @hw_atl_utils_mpi_set_state(%struct.aq_hw_s* %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %46, %30, %24
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

declare dso_local i32 @aq_fw1x_set_wol(%struct.aq_hw_s*, i32, i32*) #1

declare dso_local i32 @hw_atl_utils_fw_rpc_wait(%struct.aq_hw_s*, %struct.hw_atl_utils_fw_rpc**) #1

declare dso_local i32 @memset(%struct.hw_atl_utils_fw_rpc*, i32, i32) #1

declare dso_local i32 @hw_atl_utils_fw_rpc_call(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_utils_mpi_set_speed(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_utils_mpi_set_state(%struct.aq_hw_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
