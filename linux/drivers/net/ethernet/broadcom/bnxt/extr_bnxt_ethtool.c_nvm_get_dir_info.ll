; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_nvm_get_dir_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_nvm_get_dir_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnxt = type { i32, %struct.hwrm_nvm_get_dir_info_output* }
%struct.hwrm_nvm_get_dir_info_output = type { i32, i32 }
%struct.hwrm_nvm_get_dir_info_input = type { i32 }

@HWRM_NVM_GET_DIR_INFO = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i32*)* @nvm_get_dir_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvm_get_dir_info(%struct.net_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bnxt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hwrm_nvm_get_dir_info_input, align 4
  %10 = alloca %struct.hwrm_nvm_get_dir_info_output*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.bnxt* @netdev_priv(%struct.net_device* %11)
  store %struct.bnxt* %12, %struct.bnxt** %7, align 8
  %13 = bitcast %struct.hwrm_nvm_get_dir_info_input* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %15 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %14, i32 0, i32 1
  %16 = load %struct.hwrm_nvm_get_dir_info_output*, %struct.hwrm_nvm_get_dir_info_output** %15, align 8
  store %struct.hwrm_nvm_get_dir_info_output* %16, %struct.hwrm_nvm_get_dir_info_output** %10, align 8
  %17 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %18 = load i32, i32* @HWRM_NVM_GET_DIR_INFO, align 4
  %19 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %17, %struct.hwrm_nvm_get_dir_info_input* %9, i32 %18, i32 -1, i32 -1)
  %20 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %21 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %24 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %25 = call i32 @_hwrm_send_message(%struct.bnxt* %23, %struct.hwrm_nvm_get_dir_info_input* %9, i32 4, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %3
  %29 = load %struct.hwrm_nvm_get_dir_info_output*, %struct.hwrm_nvm_get_dir_info_output** %10, align 8
  %30 = getelementptr inbounds %struct.hwrm_nvm_get_dir_info_output, %struct.hwrm_nvm_get_dir_info_output* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.hwrm_nvm_get_dir_info_output*, %struct.hwrm_nvm_get_dir_info_output** %10, align 8
  %35 = getelementptr inbounds %struct.hwrm_nvm_get_dir_info_output, %struct.hwrm_nvm_get_dir_info_output* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32_to_cpu(i32 %36)
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %28, %3
  %40 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %41 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_nvm_get_dir_info_input*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_nvm_get_dir_info_input*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
