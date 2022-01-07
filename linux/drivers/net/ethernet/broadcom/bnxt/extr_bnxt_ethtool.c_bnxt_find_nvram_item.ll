; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_find_nvram_item.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_find_nvram_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnxt = type { i32, %struct.hwrm_nvm_find_dir_entry_output* }
%struct.hwrm_nvm_find_dir_entry_output = type { i32, i32, i32 }
%struct.hwrm_nvm_find_dir_entry_input = type { i32, i8*, i8*, i8*, i64, i64, i32 }

@HWRM_NVM_FIND_DIR_ENTRY = common dso_local global i32 0, align 4
@NVM_FIND_DIR_ENTRY_REQ_OPT_ORDINAL_EQ = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32, i32*, i32*, i32*)* @bnxt_find_nvram_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_find_nvram_item(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.bnxt*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.hwrm_nvm_find_dir_entry_input, align 8
  %18 = alloca %struct.hwrm_nvm_find_dir_entry_output*, align 8
  store %struct.net_device* %0, %struct.net_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %19 = load %struct.net_device*, %struct.net_device** %8, align 8
  %20 = call %struct.bnxt* @netdev_priv(%struct.net_device* %19)
  store %struct.bnxt* %20, %struct.bnxt** %15, align 8
  %21 = bitcast %struct.hwrm_nvm_find_dir_entry_input* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 56, i1 false)
  %22 = load %struct.bnxt*, %struct.bnxt** %15, align 8
  %23 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %22, i32 0, i32 1
  %24 = load %struct.hwrm_nvm_find_dir_entry_output*, %struct.hwrm_nvm_find_dir_entry_output** %23, align 8
  store %struct.hwrm_nvm_find_dir_entry_output* %24, %struct.hwrm_nvm_find_dir_entry_output** %18, align 8
  %25 = load %struct.bnxt*, %struct.bnxt** %15, align 8
  %26 = load i32, i32* @HWRM_NVM_FIND_DIR_ENTRY, align 4
  %27 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %25, %struct.hwrm_nvm_find_dir_entry_input* %17, i32 %26, i32 -1, i32 -1)
  %28 = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_input, %struct.hwrm_nvm_find_dir_entry_input* %17, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_input, %struct.hwrm_nvm_find_dir_entry_input* %17, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i8* @cpu_to_le16(i32 %30)
  %32 = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_input, %struct.hwrm_nvm_find_dir_entry_input* %17, i32 0, i32 3
  store i8* %31, i8** %32, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i8* @cpu_to_le16(i32 %33)
  %35 = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_input, %struct.hwrm_nvm_find_dir_entry_input* %17, i32 0, i32 2
  store i8* %34, i8** %35, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i8* @cpu_to_le16(i32 %36)
  %38 = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_input, %struct.hwrm_nvm_find_dir_entry_input* %17, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = load i32, i32* @NVM_FIND_DIR_ENTRY_REQ_OPT_ORDINAL_EQ, align 4
  %40 = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_input, %struct.hwrm_nvm_find_dir_entry_input* %17, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = load %struct.bnxt*, %struct.bnxt** %15, align 8
  %42 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.bnxt*, %struct.bnxt** %15, align 8
  %45 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %46 = call i32 @_hwrm_send_message_silent(%struct.bnxt* %44, %struct.hwrm_nvm_find_dir_entry_input* %17, i32 56, i32 %45)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %7
  %50 = load i32*, i32** %12, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.hwrm_nvm_find_dir_entry_output*, %struct.hwrm_nvm_find_dir_entry_output** %18, align 8
  %54 = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_output, %struct.hwrm_nvm_find_dir_entry_output* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le16_to_cpu(i32 %55)
  %57 = load i32*, i32** %12, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %52, %49
  %59 = load i32*, i32** %13, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.hwrm_nvm_find_dir_entry_output*, %struct.hwrm_nvm_find_dir_entry_output** %18, align 8
  %63 = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_output, %struct.hwrm_nvm_find_dir_entry_output* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32_to_cpu(i32 %64)
  %66 = load i32*, i32** %13, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %61, %58
  %68 = load i32*, i32** %14, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.hwrm_nvm_find_dir_entry_output*, %struct.hwrm_nvm_find_dir_entry_output** %18, align 8
  %72 = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_output, %struct.hwrm_nvm_find_dir_entry_output* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le32_to_cpu(i32 %73)
  %75 = load i32*, i32** %14, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %70, %67
  br label %77

77:                                               ; preds = %76, %7
  %78 = load %struct.bnxt*, %struct.bnxt** %15, align 8
  %79 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %16, align 4
  ret i32 %81
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_nvm_find_dir_entry_input*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @_hwrm_send_message_silent(%struct.bnxt*, %struct.hwrm_nvm_find_dir_entry_input*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
