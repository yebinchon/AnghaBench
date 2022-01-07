; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.brcmf_fw_request = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.firmware* }
%struct.TYPE_10__ = type { i64, i8* }
%struct.firmware = type { i32, i64 }
%struct.brcmf_bus = type { %struct.TYPE_14__*, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i64, i32, i32, %struct.brcmf_commonring**, i32** }
%struct.brcmf_commonring = type { i32 }
%struct.TYPE_9__ = type { %struct.brcmf_pciedev* }
%struct.brcmf_pciedev = type { %struct.brcmf_pciedev_info* }
%struct.brcmf_pciedev_info = type { %struct.TYPE_16__*, i32, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__** }
%struct.TYPE_13__ = type { %struct.brcmf_commonring }
%struct.TYPE_12__ = type { i32 }

@BRCMF_PCIE_FW_CODE = common dso_local global i64 0, align 8
@BRCMF_PCIE_FW_NVRAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Failed to get RAM info\0A\00", align 1
@BRCMFMAC_PCIE_STATE_UP = common dso_local global i32 0, align 4
@BCMA_CORE_PCIE2 = common dso_local global i32 0, align 4
@BRCMF_NROF_COMMON_MSGRINGS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32, %struct.brcmf_fw_request*)* @brcmf_pcie_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_pcie_setup(%struct.device* %0, i32 %1, %struct.brcmf_fw_request* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmf_fw_request*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.brcmf_bus*, align 8
  %10 = alloca %struct.brcmf_pciedev*, align 8
  %11 = alloca %struct.brcmf_pciedev_info*, align 8
  %12 = alloca %struct.brcmf_commonring**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.brcmf_fw_request* %2, %struct.brcmf_fw_request** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %210

18:                                               ; preds = %3
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call %struct.brcmf_bus* @dev_get_drvdata(%struct.device* %19)
  store %struct.brcmf_bus* %20, %struct.brcmf_bus** %9, align 8
  %21 = load %struct.brcmf_bus*, %struct.brcmf_bus** %9, align 8
  %22 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.brcmf_pciedev*, %struct.brcmf_pciedev** %23, align 8
  store %struct.brcmf_pciedev* %24, %struct.brcmf_pciedev** %10, align 8
  %25 = load %struct.brcmf_pciedev*, %struct.brcmf_pciedev** %10, align 8
  %26 = getelementptr inbounds %struct.brcmf_pciedev, %struct.brcmf_pciedev* %25, i32 0, i32 0
  %27 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %26, align 8
  store %struct.brcmf_pciedev_info* %27, %struct.brcmf_pciedev_info** %11, align 8
  %28 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %11, align 8
  %29 = call i32 @brcmf_pcie_attach(%struct.brcmf_pciedev_info* %28)
  %30 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %6, align 8
  %31 = getelementptr inbounds %struct.brcmf_fw_request, %struct.brcmf_fw_request* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = load i64, i64* @BRCMF_PCIE_FW_CODE, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load %struct.firmware*, %struct.firmware** %35, align 8
  store %struct.firmware* %36, %struct.firmware** %7, align 8
  %37 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %6, align 8
  %38 = getelementptr inbounds %struct.brcmf_fw_request, %struct.brcmf_fw_request* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = load i64, i64* @BRCMF_PCIE_FW_NVRAM, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %8, align 8
  %45 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %6, align 8
  %46 = getelementptr inbounds %struct.brcmf_fw_request, %struct.brcmf_fw_request* %45, i32 0, i32 0
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = load i64, i64* @BRCMF_PCIE_FW_NVRAM, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %14, align 8
  %53 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %6, align 8
  %54 = call i32 @kfree(%struct.brcmf_fw_request* %53)
  %55 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %11, align 8
  %56 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @brcmf_chip_get_raminfo(i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %18
  %62 = load %struct.brcmf_bus*, %struct.brcmf_bus** %9, align 8
  %63 = call i32 @brcmf_err(%struct.brcmf_bus* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %210

64:                                               ; preds = %18
  %65 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %11, align 8
  %66 = load %struct.firmware*, %struct.firmware** %7, align 8
  %67 = getelementptr inbounds %struct.firmware, %struct.firmware* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i32*
  %70 = load %struct.firmware*, %struct.firmware** %7, align 8
  %71 = getelementptr inbounds %struct.firmware, %struct.firmware* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @brcmf_pcie_adjust_ramsize(%struct.brcmf_pciedev_info* %65, i32* %69, i32 %72)
  %74 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %11, align 8
  %75 = load %struct.firmware*, %struct.firmware** %7, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i64, i64* %14, align 8
  %78 = call i32 @brcmf_pcie_download_fw_nvram(%struct.brcmf_pciedev_info* %74, %struct.firmware* %75, i8* %76, i64 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %64
  br label %210

82:                                               ; preds = %64
  %83 = load i32, i32* @BRCMFMAC_PCIE_STATE_UP, align 4
  %84 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %11, align 8
  %85 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %11, align 8
  %87 = call i32 @brcmf_pcie_init_ringbuffers(%struct.brcmf_pciedev_info* %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %210

91:                                               ; preds = %82
  %92 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %11, align 8
  %93 = call i32 @brcmf_pcie_init_scratchbuffers(%struct.brcmf_pciedev_info* %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %210

97:                                               ; preds = %91
  %98 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %11, align 8
  %99 = load i32, i32* @BCMA_CORE_PCIE2, align 4
  %100 = call i32 @brcmf_pcie_select_core(%struct.brcmf_pciedev_info* %98, i32 %99)
  %101 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %11, align 8
  %102 = call i32 @brcmf_pcie_request_irq(%struct.brcmf_pciedev_info* %101)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %210

106:                                              ; preds = %97
  store i64 0, i64* %13, align 8
  br label %107

107:                                              ; preds = %127, %106
  %108 = load i64, i64* %13, align 8
  %109 = load i64, i64* @BRCMF_NROF_COMMON_MSGRINGS, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %111, label %130

111:                                              ; preds = %107
  %112 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %11, align 8
  %113 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %114, align 8
  %116 = load i64, i64* %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %115, i64 %116
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load %struct.brcmf_bus*, %struct.brcmf_bus** %9, align 8
  %121 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %120, i32 0, i32 0
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 4
  %124 = load i32**, i32*** %123, align 8
  %125 = load i64, i64* %13, align 8
  %126 = getelementptr inbounds i32*, i32** %124, i64 %125
  store i32* %119, i32** %126, align 8
  br label %127

127:                                              ; preds = %111
  %128 = load i64, i64* %13, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %13, align 8
  br label %107

130:                                              ; preds = %107
  %131 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %11, align 8
  %132 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* @GFP_KERNEL, align 4
  %136 = call %struct.brcmf_commonring** @kcalloc(i64 %134, i32 8, i32 %135)
  store %struct.brcmf_commonring** %136, %struct.brcmf_commonring*** %12, align 8
  %137 = load %struct.brcmf_commonring**, %struct.brcmf_commonring*** %12, align 8
  %138 = icmp ne %struct.brcmf_commonring** %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %130
  br label %210

140:                                              ; preds = %130
  store i64 0, i64* %13, align 8
  br label %141

141:                                              ; preds = %159, %140
  %142 = load i64, i64* %13, align 8
  %143 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %11, align 8
  %144 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ult i64 %142, %146
  br i1 %147, label %148, label %162

148:                                              ; preds = %141
  %149 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %11, align 8
  %150 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 3
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %151, align 8
  %153 = load i64, i64* %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load %struct.brcmf_commonring**, %struct.brcmf_commonring*** %12, align 8
  %157 = load i64, i64* %13, align 8
  %158 = getelementptr inbounds %struct.brcmf_commonring*, %struct.brcmf_commonring** %156, i64 %157
  store %struct.brcmf_commonring* %155, %struct.brcmf_commonring** %158, align 8
  br label %159

159:                                              ; preds = %148
  %160 = load i64, i64* %13, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %13, align 8
  br label %141

162:                                              ; preds = %141
  %163 = load %struct.brcmf_commonring**, %struct.brcmf_commonring*** %12, align 8
  %164 = load %struct.brcmf_bus*, %struct.brcmf_bus** %9, align 8
  %165 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %164, i32 0, i32 0
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 3
  store %struct.brcmf_commonring** %163, %struct.brcmf_commonring*** %167, align 8
  %168 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %11, align 8
  %169 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.brcmf_bus*, %struct.brcmf_bus** %9, align 8
  %173 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %172, i32 0, i32 0
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 2
  store i32 %171, i32* %175, align 4
  %176 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %11, align 8
  %177 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.brcmf_bus*, %struct.brcmf_bus** %9, align 8
  %181 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %180, i32 0, i32 0
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 1
  store i32 %179, i32* %183, align 8
  %184 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %11, align 8
  %185 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.brcmf_bus*, %struct.brcmf_bus** %9, align 8
  %189 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %188, i32 0, i32 0
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  store i64 %187, i64* %191, align 8
  %192 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %11, align 8
  %193 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %192, i32 0, i32 1
  %194 = call i32 @init_waitqueue_head(i32* %193)
  %195 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %11, align 8
  %196 = call i32 @brcmf_pcie_intr_enable(%struct.brcmf_pciedev_info* %195)
  %197 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %11, align 8
  %198 = call i32 @brcmf_pcie_hostready(%struct.brcmf_pciedev_info* %197)
  %199 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %11, align 8
  %200 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %199, i32 0, i32 0
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 0
  %203 = call i32 @brcmf_attach(i32* %202)
  store i32 %203, i32* %5, align 4
  %204 = load i32, i32* %5, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %162
  br label %210

207:                                              ; preds = %162
  %208 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %11, align 8
  %209 = call i32 @brcmf_pcie_bus_console_read(%struct.brcmf_pciedev_info* %208, i32 0)
  br label %213

210:                                              ; preds = %206, %139, %105, %96, %90, %81, %61, %17
  %211 = load %struct.device*, %struct.device** %4, align 8
  %212 = call i32 @device_release_driver(%struct.device* %211)
  br label %213

213:                                              ; preds = %210, %207
  ret void
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @brcmf_pcie_attach(%struct.brcmf_pciedev_info*) #1

declare dso_local i32 @kfree(%struct.brcmf_fw_request*) #1

declare dso_local i32 @brcmf_chip_get_raminfo(i32) #1

declare dso_local i32 @brcmf_err(%struct.brcmf_bus*, i8*) #1

declare dso_local i32 @brcmf_pcie_adjust_ramsize(%struct.brcmf_pciedev_info*, i32*, i32) #1

declare dso_local i32 @brcmf_pcie_download_fw_nvram(%struct.brcmf_pciedev_info*, %struct.firmware*, i8*, i64) #1

declare dso_local i32 @brcmf_pcie_init_ringbuffers(%struct.brcmf_pciedev_info*) #1

declare dso_local i32 @brcmf_pcie_init_scratchbuffers(%struct.brcmf_pciedev_info*) #1

declare dso_local i32 @brcmf_pcie_select_core(%struct.brcmf_pciedev_info*, i32) #1

declare dso_local i32 @brcmf_pcie_request_irq(%struct.brcmf_pciedev_info*) #1

declare dso_local %struct.brcmf_commonring** @kcalloc(i64, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @brcmf_pcie_intr_enable(%struct.brcmf_pciedev_info*) #1

declare dso_local i32 @brcmf_pcie_hostready(%struct.brcmf_pciedev_info*) #1

declare dso_local i32 @brcmf_attach(i32*) #1

declare dso_local i32 @brcmf_pcie_bus_console_read(%struct.brcmf_pciedev_info*, i32) #1

declare dso_local i32 @device_release_driver(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
