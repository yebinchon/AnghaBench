; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_nvram_directory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_nvram_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnxt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hwrm_nvm_get_dir_entries_input = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"dma_alloc_coherent failure, length = %u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HWRM_NVM_GET_DIR_ENTRIES = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32*)* @bnxt_get_nvram_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_get_nvram_directory(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bnxt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.hwrm_nvm_get_dir_entries_input, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.bnxt* @netdev_priv(%struct.net_device* %16)
  store %struct.bnxt* %17, %struct.bnxt** %8, align 8
  %18 = bitcast %struct.hwrm_nvm_get_dir_entries_input* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 8, i1 false)
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call i32 @nvm_get_dir_info(%struct.net_device* %19, i32* %10, i32* %11)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %100

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %100

31:                                               ; preds = %25
  %32 = load i32, i32* %10, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %38, 2
  store i32 %39, i32* %6, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @memset(i32* %40, i32 255, i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %13, align 8
  %47 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %48 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %13, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i32* @dma_alloc_coherent(i32* %50, i64 %51, i32* %14, i32 %52)
  store i32* %53, i32** %12, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %31
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = load i64, i64* %13, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @netdev_err(%struct.net_device* %57, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %100

63:                                               ; preds = %31
  %64 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %65 = load i32, i32* @HWRM_NVM_GET_DIR_ENTRIES, align 4
  %66 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %64, %struct.hwrm_nvm_get_dir_entries_input* %15, i32 %65, i32 -1, i32 -1)
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @cpu_to_le64(i32 %67)
  %69 = getelementptr inbounds %struct.hwrm_nvm_get_dir_entries_input, %struct.hwrm_nvm_get_dir_entries_input* %15, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %71 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %72 = call i32 @hwrm_send_message(%struct.bnxt* %70, %struct.hwrm_nvm_get_dir_entries_input* %15, i32 8, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %63
  %76 = load i32*, i32** %7, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %13, align 8
  %81 = icmp ugt i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i64, i64* %13, align 8
  br label %87

84:                                               ; preds = %75
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  br label %87

87:                                               ; preds = %84, %82
  %88 = phi i64 [ %83, %82 ], [ %86, %84 ]
  %89 = call i32 @memcpy(i32* %76, i32* %77, i64 %88)
  br label %90

90:                                               ; preds = %87, %63
  %91 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %92 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %13, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @dma_free_coherent(i32* %94, i64 %95, i32* %96, i32 %97)
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %90, %56, %28, %23
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @nvm_get_dir_info(%struct.net_device*, i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_nvm_get_dir_entries_input*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @hwrm_send_message(%struct.bnxt*, %struct.hwrm_nvm_get_dir_entries_input*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
