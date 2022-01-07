; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_init_ringbuffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_init_ringbuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pciedev_info = type { i32, i32, %struct.TYPE_12__, i64, i64, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf**, i64 }
%struct.brcmf_pcie_ringbuf = type { i32, i32, i32, i32, %struct.brcmf_pciedev_info* }
%struct.TYPE_7__ = type { i32 }
%struct.brcmf_bus = type { i32 }
%struct.brcmf_pcie_dhi_ringinfo = type { i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i8*, i8* }

@BRCMF_NROF_H2D_COMMON_MSGRINGS = common dso_local global i32 0, align 4
@BRCMF_NROF_D2H_COMMON_MSGRINGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@brcmf_pcie_write_tcm16 = common dso_local global i32 0, align 4
@brcmf_pcie_read_tcm16 = common dso_local global i32 0, align 4
@PCIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Using TCM indices\0A\00", align 1
@brcmf_pcie_write_idx = common dso_local global i32 0, align 4
@brcmf_pcie_read_idx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Using host memory indices\0A\00", align 1
@BRCMF_RING_MEM_SZ = common dso_local global i64 0, align 8
@BRCMF_NROF_COMMON_MSGRINGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Nr of flowrings is %d\0A\00", align 1
@BRCMF_H2D_MSGRING_FLOWRING_IDSTART = common dso_local global i32 0, align 4
@brcmf_pcie_ring_mb_ring_bell = common dso_local global i32 0, align 4
@brcmf_pcie_ring_mb_update_rptr = common dso_local global i32 0, align 4
@brcmf_pcie_ring_mb_update_wptr = common dso_local global i32 0, align 4
@brcmf_pcie_ring_mb_write_rptr = common dso_local global i32 0, align 4
@brcmf_pcie_ring_mb_write_wptr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Allocating ring buffers failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_pciedev_info*)* @brcmf_pcie_init_ringbuffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_pcie_init_ringbuffers(%struct.brcmf_pciedev_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_pciedev_info*, align 8
  %4 = alloca %struct.brcmf_bus*, align 8
  %5 = alloca %struct.brcmf_pcie_ringbuf*, align 8
  %6 = alloca %struct.brcmf_pcie_ringbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.brcmf_pcie_dhi_ringinfo, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.brcmf_pciedev_info* %0, %struct.brcmf_pciedev_info** %3, align 8
  %20 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %21 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %20, i32 0, i32 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = call %struct.brcmf_bus* @dev_get_drvdata(i32* %23)
  store %struct.brcmf_bus* %24, %struct.brcmf_bus** %4, align 8
  %25 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %26 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %29 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %27, %31
  %33 = call i32 @memcpy_fromio(%struct.brcmf_pcie_dhi_ringinfo* %16, i64 %32, i32 104)
  %34 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %35 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %37, 6
  br i1 %38, label %39, label %49

39:                                               ; preds = %1
  %40 = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, %struct.brcmf_pcie_dhi_ringinfo* %16, i32 0, i32 11
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @le16_to_cpu(i32 %41)
  store i32 %42, i32* %18, align 4
  %43 = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, %struct.brcmf_pcie_dhi_ringinfo* %16, i32 0, i32 9
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @le16_to_cpu(i32 %44)
  store i32 %45, i32* %17, align 4
  %46 = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, %struct.brcmf_pcie_dhi_ringinfo* %16, i32 0, i32 10
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le16_to_cpu(i32 %47)
  store i32 %48, i32* %19, align 4
  br label %57

49:                                               ; preds = %1
  %50 = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, %struct.brcmf_pcie_dhi_ringinfo* %16, i32 0, i32 9
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @le16_to_cpu(i32 %51)
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* @BRCMF_NROF_H2D_COMMON_MSGRINGS, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* @BRCMF_NROF_D2H_COMMON_MSGRINGS, align 4
  store i32 %56, i32* %19, align 4
  br label %57

57:                                               ; preds = %49, %39
  %58 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %59 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %90

62:                                               ; preds = %57
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %19, align 4
  %65 = add nsw i32 %63, %64
  %66 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %67 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %65, %68
  %70 = mul nsw i32 %69, 2
  store i32 %70, i32* %14, align 4
  %71 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %72 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %71, i32 0, i32 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %77 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %76, i32 0, i32 4
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i32 @dma_alloc_coherent(i32* %74, i32 %75, i64* %77, i32 %78)
  %80 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %81 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 8
  %82 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %83 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %62
  %87 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %88 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %62
  br label %90

90:                                               ; preds = %89, %57
  %91 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %92 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %116

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, %struct.brcmf_pcie_dhi_ringinfo* %16, i32 0, i32 8
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le32_to_cpu(i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, %struct.brcmf_pcie_dhi_ringinfo* %16, i32 0, i32 7
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @le32_to_cpu(i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, %struct.brcmf_pcie_dhi_ringinfo* %16, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le32_to_cpu(i32 %103)
  store i32 %104, i32* %9, align 4
  %105 = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, %struct.brcmf_pcie_dhi_ringinfo* %16, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @le32_to_cpu(i32 %106)
  store i32 %107, i32* %10, align 4
  store i32 4, i32* %15, align 4
  %108 = load i32, i32* @brcmf_pcie_write_tcm16, align 4
  %109 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %110 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @brcmf_pcie_read_tcm16, align 4
  %112 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %113 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @PCIE, align 4
  %115 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %215

116:                                              ; preds = %90
  %117 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %118 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @memset(i32 %119, i32 0, i32 %120)
  %122 = load i32, i32* %14, align 4
  %123 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %124 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %126 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* @brcmf_pcie_write_idx, align 4
  %129 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %130 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %129, i32 0, i32 6
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @brcmf_pcie_read_idx, align 4
  %132 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %133 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 8
  store i32 0, i32* %9, align 4
  %134 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %135 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = call i8* @cpu_to_le32(i32 %138)
  %140 = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, %struct.brcmf_pcie_dhi_ringinfo* %16, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  %142 = load i32, i32* %13, align 4
  %143 = ashr i32 %142, 32
  %144 = call i8* @cpu_to_le32(i32 %143)
  %145 = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, %struct.brcmf_pcie_dhi_ringinfo* %16, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  store i8* %144, i8** %146, align 8
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %18, align 4
  %149 = load i32, i32* %15, align 4
  %150 = mul nsw i32 %148, %149
  %151 = add nsw i32 %147, %150
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* %15, align 4
  %154 = mul nsw i32 %152, %153
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %13, align 4
  %158 = call i8* @cpu_to_le32(i32 %157)
  %159 = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, %struct.brcmf_pcie_dhi_ringinfo* %16, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  store i8* %158, i8** %160, align 8
  %161 = load i32, i32* %13, align 4
  %162 = ashr i32 %161, 32
  %163 = call i8* @cpu_to_le32(i32 %162)
  %164 = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, %struct.brcmf_pcie_dhi_ringinfo* %16, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  store i8* %163, i8** %165, align 8
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* %15, align 4
  %169 = mul nsw i32 %167, %168
  %170 = add nsw i32 %166, %169
  store i32 %170, i32* %7, align 4
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* %15, align 4
  %173 = mul nsw i32 %171, %172
  %174 = load i32, i32* %13, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %13, align 4
  %176 = load i32, i32* %13, align 4
  %177 = call i8* @cpu_to_le32(i32 %176)
  %178 = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, %struct.brcmf_pcie_dhi_ringinfo* %16, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  store i8* %177, i8** %179, align 8
  %180 = load i32, i32* %13, align 4
  %181 = ashr i32 %180, 32
  %182 = call i8* @cpu_to_le32(i32 %181)
  %183 = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, %struct.brcmf_pcie_dhi_ringinfo* %16, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  store i8* %182, i8** %184, align 8
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* %19, align 4
  %187 = load i32, i32* %15, align 4
  %188 = mul nsw i32 %186, %187
  %189 = add nsw i32 %185, %188
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* %19, align 4
  %191 = load i32, i32* %15, align 4
  %192 = mul nsw i32 %190, %191
  %193 = load i32, i32* %13, align 4
  %194 = add nsw i32 %193, %192
  store i32 %194, i32* %13, align 4
  %195 = load i32, i32* %13, align 4
  %196 = call i8* @cpu_to_le32(i32 %195)
  %197 = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, %struct.brcmf_pcie_dhi_ringinfo* %16, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 1
  store i8* %196, i8** %198, align 8
  %199 = load i32, i32* %13, align 4
  %200 = ashr i32 %199, 32
  %201 = call i8* @cpu_to_le32(i32 %200)
  %202 = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, %struct.brcmf_pcie_dhi_ringinfo* %16, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  store i8* %201, i8** %203, align 8
  %204 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %205 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %208 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 6
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %206, %210
  %212 = call i32 @memcpy_toio(i64 %211, %struct.brcmf_pcie_dhi_ringinfo* %16, i32 104)
  %213 = load i32, i32* @PCIE, align 4
  %214 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %213, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %215

215:                                              ; preds = %116, %95
  %216 = getelementptr inbounds %struct.brcmf_pcie_dhi_ringinfo, %struct.brcmf_pcie_dhi_ringinfo* %16, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @le32_to_cpu(i32 %217)
  store i32 %218, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %219

219:                                              ; preds = %260, %215
  %220 = load i32, i32* %12, align 4
  %221 = load i32, i32* @BRCMF_NROF_H2D_COMMON_MSGRINGS, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %263

223:                                              ; preds = %219
  %224 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %225 = load i32, i32* %12, align 4
  %226 = load i32, i32* %11, align 4
  %227 = call %struct.brcmf_pcie_ringbuf* @brcmf_pcie_alloc_dma_and_ring(%struct.brcmf_pciedev_info* %224, i32 %225, i32 %226)
  store %struct.brcmf_pcie_ringbuf* %227, %struct.brcmf_pcie_ringbuf** %5, align 8
  %228 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %5, align 8
  %229 = icmp ne %struct.brcmf_pcie_ringbuf* %228, null
  br i1 %229, label %231, label %230

230:                                              ; preds = %223
  br label %378

231:                                              ; preds = %223
  %232 = load i32, i32* %9, align 4
  %233 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %5, align 8
  %234 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, %struct.brcmf_pcie_ringbuf* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  %235 = load i32, i32* %10, align 4
  %236 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %5, align 8
  %237 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, %struct.brcmf_pcie_ringbuf* %236, i32 0, i32 1
  store i32 %235, i32* %237, align 4
  %238 = load i32, i32* %12, align 4
  %239 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %5, align 8
  %240 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, %struct.brcmf_pcie_ringbuf* %239, i32 0, i32 2
  store i32 %238, i32* %240, align 8
  %241 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %5, align 8
  %242 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %243 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 5
  %245 = load %struct.brcmf_pcie_ringbuf**, %struct.brcmf_pcie_ringbuf*** %244, align 8
  %246 = load i32, i32* %12, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %245, i64 %247
  store %struct.brcmf_pcie_ringbuf* %241, %struct.brcmf_pcie_ringbuf** %248, align 8
  %249 = load i32, i32* %15, align 4
  %250 = load i32, i32* %9, align 4
  %251 = add nsw i32 %250, %249
  store i32 %251, i32* %9, align 4
  %252 = load i32, i32* %15, align 4
  %253 = load i32, i32* %10, align 4
  %254 = add nsw i32 %253, %252
  store i32 %254, i32* %10, align 4
  %255 = load i64, i64* @BRCMF_RING_MEM_SZ, align 8
  %256 = load i32, i32* %11, align 4
  %257 = sext i32 %256 to i64
  %258 = add nsw i64 %257, %255
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %11, align 4
  br label %260

260:                                              ; preds = %231
  %261 = load i32, i32* %12, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %12, align 4
  br label %219

263:                                              ; preds = %219
  %264 = load i32, i32* @BRCMF_NROF_H2D_COMMON_MSGRINGS, align 4
  store i32 %264, i32* %12, align 4
  br label %265

265:                                              ; preds = %306, %263
  %266 = load i32, i32* %12, align 4
  %267 = load i32, i32* @BRCMF_NROF_COMMON_MSGRINGS, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %309

269:                                              ; preds = %265
  %270 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %271 = load i32, i32* %12, align 4
  %272 = load i32, i32* %11, align 4
  %273 = call %struct.brcmf_pcie_ringbuf* @brcmf_pcie_alloc_dma_and_ring(%struct.brcmf_pciedev_info* %270, i32 %271, i32 %272)
  store %struct.brcmf_pcie_ringbuf* %273, %struct.brcmf_pcie_ringbuf** %5, align 8
  %274 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %5, align 8
  %275 = icmp ne %struct.brcmf_pcie_ringbuf* %274, null
  br i1 %275, label %277, label %276

276:                                              ; preds = %269
  br label %378

277:                                              ; preds = %269
  %278 = load i32, i32* %7, align 4
  %279 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %5, align 8
  %280 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, %struct.brcmf_pcie_ringbuf* %279, i32 0, i32 0
  store i32 %278, i32* %280, align 8
  %281 = load i32, i32* %8, align 4
  %282 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %5, align 8
  %283 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, %struct.brcmf_pcie_ringbuf* %282, i32 0, i32 1
  store i32 %281, i32* %283, align 4
  %284 = load i32, i32* %12, align 4
  %285 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %5, align 8
  %286 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, %struct.brcmf_pcie_ringbuf* %285, i32 0, i32 2
  store i32 %284, i32* %286, align 8
  %287 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %5, align 8
  %288 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %289 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 5
  %291 = load %struct.brcmf_pcie_ringbuf**, %struct.brcmf_pcie_ringbuf*** %290, align 8
  %292 = load i32, i32* %12, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %291, i64 %293
  store %struct.brcmf_pcie_ringbuf* %287, %struct.brcmf_pcie_ringbuf** %294, align 8
  %295 = load i32, i32* %15, align 4
  %296 = load i32, i32* %7, align 4
  %297 = add nsw i32 %296, %295
  store i32 %297, i32* %7, align 4
  %298 = load i32, i32* %15, align 4
  %299 = load i32, i32* %8, align 4
  %300 = add nsw i32 %299, %298
  store i32 %300, i32* %8, align 4
  %301 = load i64, i64* @BRCMF_RING_MEM_SZ, align 8
  %302 = load i32, i32* %11, align 4
  %303 = sext i32 %302 to i64
  %304 = add nsw i64 %303, %301
  %305 = trunc i64 %304 to i32
  store i32 %305, i32* %11, align 4
  br label %306

306:                                              ; preds = %277
  %307 = load i32, i32* %12, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %12, align 4
  br label %265

309:                                              ; preds = %265
  %310 = load i32, i32* %17, align 4
  %311 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %312 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 1
  store i32 %310, i32* %313, align 4
  %314 = load i32, i32* %18, align 4
  %315 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %316 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %315, i32 0, i32 2
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 2
  store i32 %314, i32* %317, align 8
  %318 = load i32, i32* %19, align 4
  %319 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %320 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 3
  store i32 %318, i32* %321, align 4
  %322 = load i32, i32* %17, align 4
  %323 = load i32, i32* @GFP_KERNEL, align 4
  %324 = call %struct.brcmf_pcie_ringbuf* @kcalloc(i32 %322, i32 24, i32 %323)
  store %struct.brcmf_pcie_ringbuf* %324, %struct.brcmf_pcie_ringbuf** %6, align 8
  %325 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %6, align 8
  %326 = icmp ne %struct.brcmf_pcie_ringbuf* %325, null
  br i1 %326, label %328, label %327

327:                                              ; preds = %309
  br label %378

328:                                              ; preds = %309
  %329 = load i32, i32* @PCIE, align 4
  %330 = load i32, i32* %17, align 4
  %331 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %329, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %330)
  store i32 0, i32* %12, align 4
  br label %332

332:                                              ; preds = %370, %328
  %333 = load i32, i32* %12, align 4
  %334 = load i32, i32* %17, align 4
  %335 = icmp slt i32 %333, %334
  br i1 %335, label %336, label %373

336:                                              ; preds = %332
  %337 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %6, align 8
  %338 = load i32, i32* %12, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, %struct.brcmf_pcie_ringbuf* %337, i64 %339
  store %struct.brcmf_pcie_ringbuf* %340, %struct.brcmf_pcie_ringbuf** %5, align 8
  %341 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %342 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %5, align 8
  %343 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, %struct.brcmf_pcie_ringbuf* %342, i32 0, i32 4
  store %struct.brcmf_pciedev_info* %341, %struct.brcmf_pciedev_info** %343, align 8
  %344 = load i32, i32* %12, align 4
  %345 = load i32, i32* @BRCMF_H2D_MSGRING_FLOWRING_IDSTART, align 4
  %346 = add nsw i32 %344, %345
  %347 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %5, align 8
  %348 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, %struct.brcmf_pcie_ringbuf* %347, i32 0, i32 2
  store i32 %346, i32* %348, align 8
  %349 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %5, align 8
  %350 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, %struct.brcmf_pcie_ringbuf* %349, i32 0, i32 3
  %351 = load i32, i32* @brcmf_pcie_ring_mb_ring_bell, align 4
  %352 = load i32, i32* @brcmf_pcie_ring_mb_update_rptr, align 4
  %353 = load i32, i32* @brcmf_pcie_ring_mb_update_wptr, align 4
  %354 = load i32, i32* @brcmf_pcie_ring_mb_write_rptr, align 4
  %355 = load i32, i32* @brcmf_pcie_ring_mb_write_wptr, align 4
  %356 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %5, align 8
  %357 = call i32 @brcmf_commonring_register_cb(i32* %350, i32 %351, i32 %352, i32 %353, i32 %354, i32 %355, %struct.brcmf_pcie_ringbuf* %356)
  %358 = load i32, i32* %9, align 4
  %359 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %5, align 8
  %360 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, %struct.brcmf_pcie_ringbuf* %359, i32 0, i32 0
  store i32 %358, i32* %360, align 8
  %361 = load i32, i32* %10, align 4
  %362 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %5, align 8
  %363 = getelementptr inbounds %struct.brcmf_pcie_ringbuf, %struct.brcmf_pcie_ringbuf* %362, i32 0, i32 1
  store i32 %361, i32* %363, align 4
  %364 = load i32, i32* %15, align 4
  %365 = load i32, i32* %9, align 4
  %366 = add nsw i32 %365, %364
  store i32 %366, i32* %9, align 4
  %367 = load i32, i32* %15, align 4
  %368 = load i32, i32* %10, align 4
  %369 = add nsw i32 %368, %367
  store i32 %369, i32* %10, align 4
  br label %370

370:                                              ; preds = %336
  %371 = load i32, i32* %12, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %12, align 4
  br label %332

373:                                              ; preds = %332
  %374 = load %struct.brcmf_pcie_ringbuf*, %struct.brcmf_pcie_ringbuf** %6, align 8
  %375 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %376 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %375, i32 0, i32 2
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 4
  store %struct.brcmf_pcie_ringbuf* %374, %struct.brcmf_pcie_ringbuf** %377, align 8
  store i32 0, i32* %2, align 4
  br label %385

378:                                              ; preds = %327, %276, %230
  %379 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %380 = call i32 @brcmf_err(%struct.brcmf_bus* %379, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %381 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %382 = call i32 @brcmf_pcie_release_ringbuffers(%struct.brcmf_pciedev_info* %381)
  %383 = load i32, i32* @ENOMEM, align 4
  %384 = sub nsw i32 0, %383
  store i32 %384, i32* %2, align 4
  br label %385

385:                                              ; preds = %378, %373
  %386 = load i32, i32* %2, align 4
  ret i32 %386
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(i32*) #1

declare dso_local i32 @memcpy_fromio(%struct.brcmf_pcie_dhi_ringinfo*, i64, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy_toio(i64, %struct.brcmf_pcie_dhi_ringinfo*, i32) #1

declare dso_local %struct.brcmf_pcie_ringbuf* @brcmf_pcie_alloc_dma_and_ring(%struct.brcmf_pciedev_info*, i32, i32) #1

declare dso_local %struct.brcmf_pcie_ringbuf* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @brcmf_commonring_register_cb(i32*, i32, i32, i32, i32, i32, %struct.brcmf_pcie_ringbuf*) #1

declare dso_local i32 @brcmf_err(%struct.brcmf_bus*, i8*) #1

declare dso_local i32 @brcmf_pcie_release_ringbuffers(%struct.brcmf_pciedev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
