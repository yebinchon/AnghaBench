; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_flash_nvram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_flash_nvram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnxt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hwrm_nvm_write_input = type { i32, i32, i8*, i8*, i8*, i8*, i32 }

@HWRM_NVM_WRITE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"dma_alloc_coherent failure, length = %u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@FLASH_NVRAM_TIMEOUT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32, i32, i32*, i64)* @bnxt_flash_nvram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_flash_nvram(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.bnxt*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.hwrm_nvm_write_input, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %21 = load %struct.net_device*, %struct.net_device** %9, align 8
  %22 = call %struct.bnxt* @netdev_priv(%struct.net_device* %21)
  store %struct.bnxt* %22, %struct.bnxt** %16, align 8
  %23 = bitcast %struct.hwrm_nvm_write_input* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 48, i1 false)
  %24 = load %struct.bnxt*, %struct.bnxt** %16, align 8
  %25 = load i32, i32* @HWRM_NVM_WRITE, align 4
  %26 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %24, %struct.hwrm_nvm_write_input* %18, i32 %25, i32 -1, i32 -1)
  %27 = load i32, i32* %10, align 4
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = getelementptr inbounds %struct.hwrm_nvm_write_input, %struct.hwrm_nvm_write_input* %18, i32 0, i32 5
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i8* @cpu_to_le16(i32 %30)
  %32 = getelementptr inbounds %struct.hwrm_nvm_write_input, %struct.hwrm_nvm_write_input* %18, i32 0, i32 4
  store i8* %31, i8** %32, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i8* @cpu_to_le16(i32 %33)
  %35 = getelementptr inbounds %struct.hwrm_nvm_write_input, %struct.hwrm_nvm_write_input* %18, i32 0, i32 3
  store i8* %34, i8** %35, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i8* @cpu_to_le16(i32 %36)
  %38 = getelementptr inbounds %struct.hwrm_nvm_write_input, %struct.hwrm_nvm_write_input* %18, i32 0, i32 2
  store i8* %37, i8** %38, align 8
  %39 = load i64, i64* %15, align 8
  %40 = call i32 @cpu_to_le32(i64 %39)
  %41 = getelementptr inbounds %struct.hwrm_nvm_write_input, %struct.hwrm_nvm_write_input* %18, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load %struct.bnxt*, %struct.bnxt** %16, align 8
  %43 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %15, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32* @dma_alloc_coherent(i32* %45, i64 %46, i32* %19, i32 %47)
  store i32* %48, i32** %20, align 8
  %49 = load i32*, i32** %20, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %7
  %52 = load %struct.net_device*, %struct.net_device** %9, align 8
  %53 = load i64, i64* %15, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @netdev_err(%struct.net_device* %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %86

58:                                               ; preds = %7
  %59 = load i32*, i32** %20, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = load i64, i64* %15, align 8
  %62 = call i32 @memcpy(i32* %59, i32* %60, i64 %61)
  %63 = load i32, i32* %19, align 4
  %64 = call i32 @cpu_to_le64(i32 %63)
  %65 = getelementptr inbounds %struct.hwrm_nvm_write_input, %struct.hwrm_nvm_write_input* %18, i32 0, i32 0
  store i32 %64, i32* %65, align 8
  %66 = load %struct.bnxt*, %struct.bnxt** %16, align 8
  %67 = load i32, i32* @FLASH_NVRAM_TIMEOUT, align 4
  %68 = call i32 @hwrm_send_message(%struct.bnxt* %66, %struct.hwrm_nvm_write_input* %18, i32 48, i32 %67)
  store i32 %68, i32* %17, align 4
  %69 = load %struct.bnxt*, %struct.bnxt** %16, align 8
  %70 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %15, align 8
  %74 = load i32*, i32** %20, align 8
  %75 = load i32, i32* %19, align 4
  %76 = call i32 @dma_free_coherent(i32* %72, i64 %73, i32* %74, i32 %75)
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* @EACCES, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %58
  %82 = load %struct.bnxt*, %struct.bnxt** %16, align 8
  %83 = call i32 @bnxt_print_admin_err(%struct.bnxt* %82)
  br label %84

84:                                               ; preds = %81, %58
  %85 = load i32, i32* %17, align 4
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %84, %51
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_nvm_write_input*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @hwrm_send_message(%struct.bnxt*, %struct.hwrm_nvm_write_input*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @bnxt_print_admin_err(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
