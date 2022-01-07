; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils_fw2x.c_aq_fw2x_set_sleep_proxy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils_fw2x.c_aq_fw2x_set_sleep_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }
%struct.hw_atl_utils_fw_rpc = type { i32 }
%struct.offload_info = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@HW_ATL_FW2X_MPI_CONTROL2_ADDR = common dso_local global i32 0, align 4
@HW_ATL_FW2X_CTRL_SLEEP_PROXY = common dso_local global i32 0, align 4
@HW_ATL_FW2X_CTRL_LINK_DROP = common dso_local global i32 0, align 4
@aq_fw2x_state2_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, i32*)* @aq_fw2x_set_sleep_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_fw2x_set_sleep_proxy(%struct.aq_hw_s* %0, i32* %1) #0 {
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hw_atl_utils_fw_rpc*, align 8
  %6 = alloca %struct.offload_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.hw_atl_utils_fw_rpc* null, %struct.hw_atl_utils_fw_rpc** %5, align 8
  store %struct.offload_info* null, %struct.offload_info** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 12, i32* %7, align 4
  %11 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %12 = call i32 @hw_atl_utils_fw_rpc_wait(%struct.aq_hw_s* %11, %struct.hw_atl_utils_fw_rpc** %5)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %68

16:                                               ; preds = %2
  %17 = load %struct.hw_atl_utils_fw_rpc*, %struct.hw_atl_utils_fw_rpc** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @memset(%struct.hw_atl_utils_fw_rpc* %17, i32 0, i32 %18)
  %20 = load %struct.hw_atl_utils_fw_rpc*, %struct.hw_atl_utils_fw_rpc** %5, align 8
  %21 = getelementptr inbounds %struct.hw_atl_utils_fw_rpc, %struct.hw_atl_utils_fw_rpc* %20, i32 0, i32 0
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = bitcast i32* %22 to %struct.offload_info*
  store %struct.offload_info* %23, %struct.offload_info** %6, align 8
  %24 = load %struct.offload_info*, %struct.offload_info** %6, align 8
  %25 = getelementptr inbounds %struct.offload_info, %struct.offload_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @ETH_ALEN, align 4
  %29 = call i32 @memcpy(i32 %26, i32* %27, i32 %28)
  %30 = load %struct.offload_info*, %struct.offload_info** %6, align 8
  %31 = getelementptr inbounds %struct.offload_info, %struct.offload_info* %30, i32 0, i32 0
  store i32 8, i32* %31, align 4
  %32 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %33 = load i32, i32* @HW_ATL_FW2X_MPI_CONTROL2_ADDR, align 4
  %34 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @HW_ATL_FW2X_CTRL_SLEEP_PROXY, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* @HW_ATL_FW2X_CTRL_LINK_DROP, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %44 = load i32, i32* @HW_ATL_FW2X_MPI_CONTROL2_ADDR, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %43, i32 %44, i32 %45)
  %47 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @hw_atl_utils_fw_rpc_call(%struct.aq_hw_s* %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %16
  br label %68

53:                                               ; preds = %16
  %54 = load i32, i32* @HW_ATL_FW2X_CTRL_SLEEP_PROXY, align 4
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %58 = load i32, i32* @HW_ATL_FW2X_MPI_CONTROL2_ADDR, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %57, i32 %58, i32 %59)
  %61 = load i32, i32* @aq_fw2x_state2_get, align 4
  %62 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @HW_ATL_FW2X_CTRL_SLEEP_PROXY, align 4
  %66 = and i32 %64, %65
  %67 = call i32 @readx_poll_timeout_atomic(i32 %61, %struct.aq_hw_s* %62, i32 %63, i32 %66, i32 1, i32 100000)
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %53, %52, %15
  %69 = load i32, i32* %9, align 4
  ret i32 %69
}

declare dso_local i32 @hw_atl_utils_fw_rpc_wait(%struct.aq_hw_s*, %struct.hw_atl_utils_fw_rpc**) #1

declare dso_local i32 @memset(%struct.hw_atl_utils_fw_rpc*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @aq_hw_read_reg(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @aq_hw_write_reg(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_utils_fw_rpc_call(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @readx_poll_timeout_atomic(i32, %struct.aq_hw_s*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
