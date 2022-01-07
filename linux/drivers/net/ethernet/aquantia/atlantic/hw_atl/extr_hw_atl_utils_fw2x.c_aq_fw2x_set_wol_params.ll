; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils_fw2x.c_aq_fw2x_set_wol_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils_fw2x.c_aq_fw2x_set_wol_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }
%struct.hw_atl_utils_fw_rpc = type { i32 }
%struct.fw2x_msg_wol = type { i32, i32, i32 }

@HAL_ATLANTIC_UTILS_FW2X_MSG_WOL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@HW_ATL_FW2X_MPI_CONTROL2_ADDR = common dso_local global i32 0, align 4
@HW_ATL_FW2X_CTRL_SLEEP_PROXY = common dso_local global i32 0, align 4
@HW_ATL_FW2X_CTRL_WOL = common dso_local global i32 0, align 4
@aq_fw2x_state2_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, i32*)* @aq_fw2x_set_wol_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_fw2x_set_wol_params(%struct.aq_hw_s* %0, i32* %1) #0 {
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hw_atl_utils_fw_rpc*, align 8
  %6 = alloca %struct.fw2x_msg_wol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.hw_atl_utils_fw_rpc* null, %struct.hw_atl_utils_fw_rpc** %5, align 8
  store %struct.fw2x_msg_wol* null, %struct.fw2x_msg_wol** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %11 = call i32 @hw_atl_utils_fw_rpc_wait(%struct.aq_hw_s* %10, %struct.hw_atl_utils_fw_rpc** %5)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %64

15:                                               ; preds = %2
  %16 = load %struct.hw_atl_utils_fw_rpc*, %struct.hw_atl_utils_fw_rpc** %5, align 8
  %17 = bitcast %struct.hw_atl_utils_fw_rpc* %16 to %struct.fw2x_msg_wol*
  store %struct.fw2x_msg_wol* %17, %struct.fw2x_msg_wol** %6, align 8
  %18 = load %struct.fw2x_msg_wol*, %struct.fw2x_msg_wol** %6, align 8
  %19 = call i32 @memset(%struct.fw2x_msg_wol* %18, i32 0, i32 12)
  %20 = load i32, i32* @HAL_ATLANTIC_UTILS_FW2X_MSG_WOL, align 4
  %21 = load %struct.fw2x_msg_wol*, %struct.fw2x_msg_wol** %6, align 8
  %22 = getelementptr inbounds %struct.fw2x_msg_wol, %struct.fw2x_msg_wol* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.fw2x_msg_wol*, %struct.fw2x_msg_wol** %6, align 8
  %24 = getelementptr inbounds %struct.fw2x_msg_wol, %struct.fw2x_msg_wol* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.fw2x_msg_wol*, %struct.fw2x_msg_wol** %6, align 8
  %26 = getelementptr inbounds %struct.fw2x_msg_wol, %struct.fw2x_msg_wol* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @ETH_ALEN, align 4
  %30 = call i32 @memcpy(i32 %27, i32* %28, i32 %29)
  %31 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %32 = load i32, i32* @HW_ATL_FW2X_MPI_CONTROL2_ADDR, align 4
  %33 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @HW_ATL_FW2X_CTRL_SLEEP_PROXY, align 4
  %35 = load i32, i32* @HW_ATL_FW2X_CTRL_WOL, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %41 = load i32, i32* @HW_ATL_FW2X_MPI_CONTROL2_ADDR, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %40, i32 %41, i32 %42)
  %44 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %45 = call i32 @hw_atl_utils_fw_rpc_call(%struct.aq_hw_s* %44, i32 12)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %15
  br label %64

49:                                               ; preds = %15
  %50 = load i32, i32* @HW_ATL_FW2X_CTRL_WOL, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %54 = load i32, i32* @HW_ATL_FW2X_MPI_CONTROL2_ADDR, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %53, i32 %54, i32 %55)
  %57 = load i32, i32* @aq_fw2x_state2_get, align 4
  %58 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @HW_ATL_FW2X_CTRL_WOL, align 4
  %62 = and i32 %60, %61
  %63 = call i32 @readx_poll_timeout_atomic(i32 %57, %struct.aq_hw_s* %58, i32 %59, i32 %62, i32 1, i32 10000)
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %49, %48, %14
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local i32 @hw_atl_utils_fw_rpc_wait(%struct.aq_hw_s*, %struct.hw_atl_utils_fw_rpc**) #1

declare dso_local i32 @memset(%struct.fw2x_msg_wol*, i32, i32) #1

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
