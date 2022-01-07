; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_prepare_fw_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_prepare_fw_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_fw_name = type { i8*, i32 }
%struct.brcmf_fw_request = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.brcmf_sdio = type { %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c".bin\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@brcmf_sdio_fwnames = common dso_local global %struct.brcmf_fw_name* null, align 8
@BRCMF_FW_TYPE_BINARY = common dso_local global i32 0, align 4
@BRCMF_SDIO_FW_CODE = common dso_local global i64 0, align 8
@BRCMF_FW_TYPE_NVRAM = common dso_local global i32 0, align 4
@BRCMF_SDIO_FW_NVRAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.brcmf_fw_request* (%struct.brcmf_sdio*)* @brcmf_sdio_prepare_fw_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.brcmf_fw_request* @brcmf_sdio_prepare_fw_request(%struct.brcmf_sdio* %0) #0 {
  %2 = alloca %struct.brcmf_fw_request*, align 8
  %3 = alloca %struct.brcmf_sdio*, align 8
  %4 = alloca %struct.brcmf_fw_request*, align 8
  %5 = alloca [2 x %struct.brcmf_fw_name], align 16
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %3, align 8
  %6 = getelementptr inbounds [2 x %struct.brcmf_fw_name], [2 x %struct.brcmf_fw_name]* %5, i64 0, i64 0
  %7 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %7, align 16
  %8 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %6, i32 0, i32 1
  %9 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %10 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 8
  %14 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %6, i64 1
  %15 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 16
  %16 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %14, i32 0, i32 1
  %17 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %18 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %16, align 8
  %22 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %23 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %28 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.brcmf_fw_name*, %struct.brcmf_fw_name** @brcmf_sdio_fwnames, align 8
  %33 = load %struct.brcmf_fw_name*, %struct.brcmf_fw_name** @brcmf_sdio_fwnames, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.brcmf_fw_name* %33)
  %35 = getelementptr inbounds [2 x %struct.brcmf_fw_name], [2 x %struct.brcmf_fw_name]* %5, i64 0, i64 0
  %36 = getelementptr inbounds [2 x %struct.brcmf_fw_name], [2 x %struct.brcmf_fw_name]* %5, i64 0, i64 0
  %37 = call i32 @ARRAY_SIZE(%struct.brcmf_fw_name* %36)
  %38 = call %struct.brcmf_fw_request* @brcmf_fw_alloc_request(i32 %26, i32 %31, %struct.brcmf_fw_name* %32, i32 %34, %struct.brcmf_fw_name* %35, i32 %37)
  store %struct.brcmf_fw_request* %38, %struct.brcmf_fw_request** %4, align 8
  %39 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %4, align 8
  %40 = icmp ne %struct.brcmf_fw_request* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %1
  store %struct.brcmf_fw_request* null, %struct.brcmf_fw_request** %2, align 8
  br label %67

42:                                               ; preds = %1
  %43 = load i32, i32* @BRCMF_FW_TYPE_BINARY, align 4
  %44 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %4, align 8
  %45 = getelementptr inbounds %struct.brcmf_fw_request, %struct.brcmf_fw_request* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i64, i64* @BRCMF_SDIO_FW_CODE, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %43, i32* %49, align 4
  %50 = load i32, i32* @BRCMF_FW_TYPE_NVRAM, align 4
  %51 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %4, align 8
  %52 = getelementptr inbounds %struct.brcmf_fw_request, %struct.brcmf_fw_request* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i64, i64* @BRCMF_SDIO_FW_NVRAM, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %50, i32* %56, align 4
  %57 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %58 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %4, align 8
  %65 = getelementptr inbounds %struct.brcmf_fw_request, %struct.brcmf_fw_request* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %4, align 8
  store %struct.brcmf_fw_request* %66, %struct.brcmf_fw_request** %2, align 8
  br label %67

67:                                               ; preds = %42, %41
  %68 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %2, align 8
  ret %struct.brcmf_fw_request* %68
}

declare dso_local %struct.brcmf_fw_request* @brcmf_fw_alloc_request(i32, i32, %struct.brcmf_fw_name*, i32, %struct.brcmf_fw_name*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.brcmf_fw_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
