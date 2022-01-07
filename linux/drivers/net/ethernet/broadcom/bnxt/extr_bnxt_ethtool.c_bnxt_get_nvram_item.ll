; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_nvram_item.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_nvram_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnxt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hwrm_nvm_read_input = type { i8*, i8*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"dma_alloc_coherent failure, length = %u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HWRM_NVM_READ = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64, i64, i64, i32*)* @bnxt_get_nvram_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_get_nvram_item(%struct.net_device* %0, i64 %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.bnxt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.hwrm_nvm_read_input, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call %struct.bnxt* @netdev_priv(%struct.net_device* %17)
  store %struct.bnxt* %18, %struct.bnxt** %12, align 8
  %19 = bitcast %struct.hwrm_nvm_read_input* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 32, i1 false)
  %20 = load i64, i64* %10, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %78

25:                                               ; preds = %5
  %26 = load %struct.bnxt*, %struct.bnxt** %12, align 8
  %27 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %10, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32* @dma_alloc_coherent(i32* %29, i64 %30, i32* %15, i32 %31)
  store i32* %32, i32** %14, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %25
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = load i64, i64* %10, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @netdev_err(%struct.net_device* %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %78

42:                                               ; preds = %25
  %43 = load %struct.bnxt*, %struct.bnxt** %12, align 8
  %44 = load i32, i32* @HWRM_NVM_READ, align 4
  %45 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %43, %struct.hwrm_nvm_read_input* %16, i32 %44, i32 -1, i32 -1)
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @cpu_to_le64(i32 %46)
  %48 = getelementptr inbounds %struct.hwrm_nvm_read_input, %struct.hwrm_nvm_read_input* %16, i32 0, i32 3
  store i32 %47, i32* %48, align 4
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @cpu_to_le16(i64 %49)
  %51 = getelementptr inbounds %struct.hwrm_nvm_read_input, %struct.hwrm_nvm_read_input* %16, i32 0, i32 2
  store i32 %50, i32* %51, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i8* @cpu_to_le32(i64 %52)
  %54 = getelementptr inbounds %struct.hwrm_nvm_read_input, %struct.hwrm_nvm_read_input* %16, i32 0, i32 1
  store i8* %53, i8** %54, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i8* @cpu_to_le32(i64 %55)
  %57 = getelementptr inbounds %struct.hwrm_nvm_read_input, %struct.hwrm_nvm_read_input* %16, i32 0, i32 0
  store i8* %56, i8** %57, align 8
  %58 = load %struct.bnxt*, %struct.bnxt** %12, align 8
  %59 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %60 = call i32 @hwrm_send_message(%struct.bnxt* %58, %struct.hwrm_nvm_read_input* %16, i32 32, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %42
  %64 = load i32*, i32** %11, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @memcpy(i32* %64, i32* %65, i64 %66)
  br label %68

68:                                               ; preds = %63, %42
  %69 = load %struct.bnxt*, %struct.bnxt** %12, align 8
  %70 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %10, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @dma_free_coherent(i32* %72, i64 %73, i32* %74, i32 %75)
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %68, %35, %22
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_nvm_read_input*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @hwrm_send_message(%struct.bnxt*, %struct.hwrm_nvm_read_input*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
