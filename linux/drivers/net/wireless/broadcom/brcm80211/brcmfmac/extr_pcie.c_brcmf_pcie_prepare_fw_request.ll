; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_prepare_fw_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_prepare_fw_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_fw_name = type { i8*, i32 }
%struct.brcmf_fw_request = type { i32, i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.brcmf_pciedev_info = type { %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c".bin\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@brcmf_pcie_fwnames = common dso_local global %struct.brcmf_fw_name* null, align 8
@BRCMF_FW_TYPE_BINARY = common dso_local global i32 0, align 4
@BRCMF_PCIE_FW_CODE = common dso_local global i64 0, align 8
@BRCMF_FW_TYPE_NVRAM = common dso_local global i32 0, align 4
@BRCMF_PCIE_FW_NVRAM = common dso_local global i64 0, align 8
@BRCMF_FW_REQF_OPTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.brcmf_fw_request* (%struct.brcmf_pciedev_info*)* @brcmf_pcie_prepare_fw_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.brcmf_fw_request* @brcmf_pcie_prepare_fw_request(%struct.brcmf_pciedev_info* %0) #0 {
  %2 = alloca %struct.brcmf_fw_request*, align 8
  %3 = alloca %struct.brcmf_pciedev_info*, align 8
  %4 = alloca %struct.brcmf_fw_request*, align 8
  %5 = alloca [2 x %struct.brcmf_fw_name], align 16
  store %struct.brcmf_pciedev_info* %0, %struct.brcmf_pciedev_info** %3, align 8
  %6 = getelementptr inbounds [2 x %struct.brcmf_fw_name], [2 x %struct.brcmf_fw_name]* %5, i64 0, i64 0
  %7 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %7, align 16
  %8 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %6, i32 0, i32 1
  %9 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %10 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 8
  %12 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %6, i64 1
  %13 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 16
  %14 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %12, i32 0, i32 1
  %15 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %16 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %14, align 8
  %18 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %19 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %24 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.brcmf_fw_name*, %struct.brcmf_fw_name** @brcmf_pcie_fwnames, align 8
  %29 = load %struct.brcmf_fw_name*, %struct.brcmf_fw_name** @brcmf_pcie_fwnames, align 8
  %30 = call i32 @ARRAY_SIZE(%struct.brcmf_fw_name* %29)
  %31 = getelementptr inbounds [2 x %struct.brcmf_fw_name], [2 x %struct.brcmf_fw_name]* %5, i64 0, i64 0
  %32 = getelementptr inbounds [2 x %struct.brcmf_fw_name], [2 x %struct.brcmf_fw_name]* %5, i64 0, i64 0
  %33 = call i32 @ARRAY_SIZE(%struct.brcmf_fw_name* %32)
  %34 = call %struct.brcmf_fw_request* @brcmf_fw_alloc_request(i32 %22, i32 %27, %struct.brcmf_fw_name* %28, i32 %30, %struct.brcmf_fw_name* %31, i32 %33)
  store %struct.brcmf_fw_request* %34, %struct.brcmf_fw_request** %4, align 8
  %35 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %4, align 8
  %36 = icmp ne %struct.brcmf_fw_request* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %1
  store %struct.brcmf_fw_request* null, %struct.brcmf_fw_request** %2, align 8
  br label %86

38:                                               ; preds = %1
  %39 = load i32, i32* @BRCMF_FW_TYPE_BINARY, align 4
  %40 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %4, align 8
  %41 = getelementptr inbounds %struct.brcmf_fw_request, %struct.brcmf_fw_request* %40, i32 0, i32 3
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i64, i64* @BRCMF_PCIE_FW_CODE, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store i32 %39, i32* %45, align 4
  %46 = load i32, i32* @BRCMF_FW_TYPE_NVRAM, align 4
  %47 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %4, align 8
  %48 = getelementptr inbounds %struct.brcmf_fw_request, %struct.brcmf_fw_request* %47, i32 0, i32 3
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = load i64, i64* @BRCMF_PCIE_FW_NVRAM, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i32 %46, i32* %52, align 4
  %53 = load i32, i32* @BRCMF_FW_REQF_OPTIONAL, align 4
  %54 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %4, align 8
  %55 = getelementptr inbounds %struct.brcmf_fw_request, %struct.brcmf_fw_request* %54, i32 0, i32 3
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i64, i64* @BRCMF_PCIE_FW_NVRAM, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 %53, i32* %59, align 4
  %60 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %61 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %4, align 8
  %66 = getelementptr inbounds %struct.brcmf_fw_request, %struct.brcmf_fw_request* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %68 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = call i64 @pci_domain_nr(%struct.TYPE_10__* %71)
  %73 = add nsw i64 %72, 1
  %74 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %4, align 8
  %75 = getelementptr inbounds %struct.brcmf_fw_request, %struct.brcmf_fw_request* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %77 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %4, align 8
  %84 = getelementptr inbounds %struct.brcmf_fw_request, %struct.brcmf_fw_request* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %4, align 8
  store %struct.brcmf_fw_request* %85, %struct.brcmf_fw_request** %2, align 8
  br label %86

86:                                               ; preds = %38, %37
  %87 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %2, align 8
  ret %struct.brcmf_fw_request* %87
}

declare dso_local %struct.brcmf_fw_request* @brcmf_fw_alloc_request(i32, i32, %struct.brcmf_fw_name*, i32, %struct.brcmf_fw_name*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.brcmf_fw_name*) #1

declare dso_local i64 @pci_domain_nr(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
