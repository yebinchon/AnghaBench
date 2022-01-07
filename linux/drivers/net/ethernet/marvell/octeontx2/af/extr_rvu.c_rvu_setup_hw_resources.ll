; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_setup_hw_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_setup_hw_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, i32, i8*, i8*, %struct.rvu_hwinfo* }
%struct.rvu_hwinfo = type { i32, i32, i32, %struct.rvu_block* }
%struct.rvu_block = type { i64, i32, i32, i8*, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@BLKADDR_RVUM = common dso_local global i64 0, align 8
@RVU_PRIV_CONST = common dso_local global i32 0, align 4
@BLKADDR_NPA = common dso_local global i64 0, align 8
@NPA_AF_CONST = common dso_local global i32 0, align 4
@BLKTYPE_NPA = common dso_local global i32 0, align 4
@NPA_AF_RVU_LF_CFG_DEBUG = common dso_local global i32 0, align 4
@RVU_PRIV_PFX_NPA_CFG = common dso_local global i32 0, align 4
@RVU_PRIV_HWVFX_NPA_CFG = common dso_local global i32 0, align 4
@NPA_PRIV_LFX_CFG = common dso_local global i32 0, align 4
@NPA_PRIV_LFX_INT_CFG = common dso_local global i32 0, align 4
@NPA_AF_LF_RST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"NPA\00", align 1
@BLKADDR_NIX0 = common dso_local global i64 0, align 8
@NIX_AF_CONST2 = common dso_local global i32 0, align 4
@BLKTYPE_NIX = common dso_local global i32 0, align 4
@NIX_AF_RVU_LF_CFG_DEBUG = common dso_local global i32 0, align 4
@RVU_PRIV_PFX_NIX0_CFG = common dso_local global i32 0, align 4
@RVU_PRIV_HWVFX_NIX0_CFG = common dso_local global i32 0, align 4
@NIX_PRIV_LFX_CFG = common dso_local global i32 0, align 4
@NIX_PRIV_LFX_INT_CFG = common dso_local global i32 0, align 4
@NIX_AF_LF_RST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"NIX\00", align 1
@BLKADDR_SSO = common dso_local global i64 0, align 8
@SSO_AF_CONST = common dso_local global i32 0, align 4
@BLKTYPE_SSO = common dso_local global i32 0, align 4
@SSO_AF_RVU_LF_CFG_DEBUG = common dso_local global i32 0, align 4
@RVU_PRIV_PFX_SSO_CFG = common dso_local global i32 0, align 4
@RVU_PRIV_HWVFX_SSO_CFG = common dso_local global i32 0, align 4
@SSO_PRIV_LFX_HWGRP_CFG = common dso_local global i32 0, align 4
@SSO_PRIV_LFX_HWGRP_INT_CFG = common dso_local global i32 0, align 4
@SSO_AF_LF_HWGRP_RST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"SSO GROUP\00", align 1
@BLKADDR_SSOW = common dso_local global i64 0, align 8
@BLKTYPE_SSOW = common dso_local global i32 0, align 4
@SSOW_AF_RVU_LF_HWS_CFG_DEBUG = common dso_local global i32 0, align 4
@RVU_PRIV_PFX_SSOW_CFG = common dso_local global i32 0, align 4
@RVU_PRIV_HWVFX_SSOW_CFG = common dso_local global i32 0, align 4
@SSOW_PRIV_LFX_HWS_CFG = common dso_local global i32 0, align 4
@SSOW_PRIV_LFX_HWS_INT_CFG = common dso_local global i32 0, align 4
@SSOW_AF_LF_HWS_RST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"SSOWS\00", align 1
@BLKADDR_TIM = common dso_local global i64 0, align 8
@TIM_AF_CONST = common dso_local global i32 0, align 4
@BLKTYPE_TIM = common dso_local global i32 0, align 4
@TIM_AF_RVU_LF_CFG_DEBUG = common dso_local global i32 0, align 4
@RVU_PRIV_PFX_TIM_CFG = common dso_local global i32 0, align 4
@RVU_PRIV_HWVFX_TIM_CFG = common dso_local global i32 0, align 4
@TIM_PRIV_LFX_CFG = common dso_local global i32 0, align 4
@TIM_PRIV_LFX_INT_CFG = common dso_local global i32 0, align 4
@TIM_AF_LF_RST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"TIM\00", align 1
@BLKADDR_CPT0 = common dso_local global i64 0, align 8
@CPT_AF_CONSTANTS0 = common dso_local global i32 0, align 4
@BLKTYPE_CPT = common dso_local global i32 0, align 4
@CPT_AF_RVU_LF_CFG_DEBUG = common dso_local global i32 0, align 4
@RVU_PRIV_PFX_CPT0_CFG = common dso_local global i32 0, align 4
@RVU_PRIV_HWVFX_CPT0_CFG = common dso_local global i32 0, align 4
@CPT_PRIV_LFX_CFG = common dso_local global i32 0, align 4
@CPT_PRIV_LFX_INT_CFG = common dso_local global i32 0, align 4
@CPT_AF_LF_RST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"CPT\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BLK_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*)* @rvu_setup_hw_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvu_setup_hw_resources(%struct.rvu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rvu*, align 8
  %4 = alloca %struct.rvu_hwinfo*, align 8
  %5 = alloca %struct.rvu_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %3, align 8
  %9 = load %struct.rvu*, %struct.rvu** %3, align 8
  %10 = getelementptr inbounds %struct.rvu, %struct.rvu* %9, i32 0, i32 4
  %11 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %10, align 8
  store %struct.rvu_hwinfo* %11, %struct.rvu_hwinfo** %4, align 8
  %12 = load %struct.rvu*, %struct.rvu** %3, align 8
  %13 = load i64, i64* @BLKADDR_RVUM, align 8
  %14 = load i32, i32* @RVU_PRIV_CONST, align 4
  %15 = call i32 @rvu_read64(%struct.rvu* %12, i64 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = ashr i32 %16, 32
  %18 = and i32 %17, 255
  %19 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %20 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = ashr i32 %21, 20
  %23 = and i32 %22, 4095
  %24 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %25 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = ashr i32 %26, 40
  %28 = and i32 %27, 255
  %29 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %30 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %32 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %31, i32 0, i32 3
  %33 = load %struct.rvu_block*, %struct.rvu_block** %32, align 8
  %34 = load i64, i64* @BLKADDR_NPA, align 8
  %35 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %33, i64 %34
  store %struct.rvu_block* %35, %struct.rvu_block** %5, align 8
  %36 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %37 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %36, i32 0, i32 13
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %1
  br label %90

41:                                               ; preds = %1
  %42 = load %struct.rvu*, %struct.rvu** %3, align 8
  %43 = load i64, i64* @BLKADDR_NPA, align 8
  %44 = load i32, i32* @NPA_AF_CONST, align 4
  %45 = call i32 @rvu_read64(%struct.rvu* %42, i64 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = ashr i32 %46, 16
  %48 = and i32 %47, 4095
  %49 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %50 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load i64, i64* @BLKADDR_NPA, align 8
  %53 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %54 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* @BLKTYPE_NPA, align 4
  %56 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %57 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %56, i32 0, i32 12
  store i32 %55, i32* %57, align 4
  %58 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %59 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %58, i32 0, i32 1
  store i32 8, i32* %59, align 8
  %60 = load i32, i32* @NPA_AF_RVU_LF_CFG_DEBUG, align 4
  %61 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %62 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %61, i32 0, i32 11
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @RVU_PRIV_PFX_NPA_CFG, align 4
  %64 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %65 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %64, i32 0, i32 10
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @RVU_PRIV_HWVFX_NPA_CFG, align 4
  %67 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %68 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %67, i32 0, i32 9
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @NPA_PRIV_LFX_CFG, align 4
  %70 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %71 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %70, i32 0, i32 8
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @NPA_PRIV_LFX_INT_CFG, align 4
  %73 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %74 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %73, i32 0, i32 7
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @NPA_AF_LF_RST, align 4
  %76 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %77 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 4
  %78 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %79 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @sprintf(i32 %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %83 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %82, i32 0, i32 4
  %84 = call i32 @rvu_alloc_bitmap(%struct.TYPE_2__* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %41
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %2, align 4
  br label %510

89:                                               ; preds = %41
  br label %90

90:                                               ; preds = %89, %40
  %91 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %92 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %91, i32 0, i32 3
  %93 = load %struct.rvu_block*, %struct.rvu_block** %92, align 8
  %94 = load i64, i64* @BLKADDR_NIX0, align 8
  %95 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %93, i64 %94
  store %struct.rvu_block* %95, %struct.rvu_block** %5, align 8
  %96 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %97 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %96, i32 0, i32 13
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %90
  br label %149

101:                                              ; preds = %90
  %102 = load %struct.rvu*, %struct.rvu** %3, align 8
  %103 = load i64, i64* @BLKADDR_NIX0, align 8
  %104 = load i32, i32* @NIX_AF_CONST2, align 4
  %105 = call i32 @rvu_read64(%struct.rvu* %102, i64 %103, i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = and i32 %106, 4095
  %108 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %109 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  %111 = load i64, i64* @BLKADDR_NIX0, align 8
  %112 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %113 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load i32, i32* @BLKTYPE_NIX, align 4
  %115 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %116 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %115, i32 0, i32 12
  store i32 %114, i32* %116, align 4
  %117 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %118 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %117, i32 0, i32 1
  store i32 8, i32* %118, align 8
  %119 = load i32, i32* @NIX_AF_RVU_LF_CFG_DEBUG, align 4
  %120 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %121 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %120, i32 0, i32 11
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* @RVU_PRIV_PFX_NIX0_CFG, align 4
  %123 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %124 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %123, i32 0, i32 10
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @RVU_PRIV_HWVFX_NIX0_CFG, align 4
  %126 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %127 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %126, i32 0, i32 9
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* @NIX_PRIV_LFX_CFG, align 4
  %129 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %130 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %129, i32 0, i32 8
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @NIX_PRIV_LFX_INT_CFG, align 4
  %132 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %133 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %132, i32 0, i32 7
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* @NIX_AF_LF_RST, align 4
  %135 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %136 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 4
  %137 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %138 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @sprintf(i32 %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %141 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %142 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %141, i32 0, i32 4
  %143 = call i32 @rvu_alloc_bitmap(%struct.TYPE_2__* %142)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %101
  %147 = load i32, i32* %7, align 4
  store i32 %147, i32* %2, align 4
  br label %510

148:                                              ; preds = %101
  br label %149

149:                                              ; preds = %148, %100
  %150 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %151 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %150, i32 0, i32 3
  %152 = load %struct.rvu_block*, %struct.rvu_block** %151, align 8
  %153 = load i64, i64* @BLKADDR_SSO, align 8
  %154 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %152, i64 %153
  store %struct.rvu_block* %154, %struct.rvu_block** %5, align 8
  %155 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %156 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %155, i32 0, i32 13
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %149
  br label %210

160:                                              ; preds = %149
  %161 = load %struct.rvu*, %struct.rvu** %3, align 8
  %162 = load i64, i64* @BLKADDR_SSO, align 8
  %163 = load i32, i32* @SSO_AF_CONST, align 4
  %164 = call i32 @rvu_read64(%struct.rvu* %161, i64 %162, i32 %163)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = and i32 %165, 65535
  %167 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %168 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 8
  %170 = load i64, i64* @BLKADDR_SSO, align 8
  %171 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %172 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %171, i32 0, i32 0
  store i64 %170, i64* %172, align 8
  %173 = load i32, i32* @BLKTYPE_SSO, align 4
  %174 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %175 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %174, i32 0, i32 12
  store i32 %173, i32* %175, align 4
  %176 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %177 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %176, i32 0, i32 2
  store i32 1, i32* %177, align 4
  %178 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %179 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %178, i32 0, i32 1
  store i32 3, i32* %179, align 8
  %180 = load i32, i32* @SSO_AF_RVU_LF_CFG_DEBUG, align 4
  %181 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %182 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %181, i32 0, i32 11
  store i32 %180, i32* %182, align 8
  %183 = load i32, i32* @RVU_PRIV_PFX_SSO_CFG, align 4
  %184 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %185 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %184, i32 0, i32 10
  store i32 %183, i32* %185, align 4
  %186 = load i32, i32* @RVU_PRIV_HWVFX_SSO_CFG, align 4
  %187 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %188 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %187, i32 0, i32 9
  store i32 %186, i32* %188, align 8
  %189 = load i32, i32* @SSO_PRIV_LFX_HWGRP_CFG, align 4
  %190 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %191 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %190, i32 0, i32 8
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* @SSO_PRIV_LFX_HWGRP_INT_CFG, align 4
  %193 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %194 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %193, i32 0, i32 7
  store i32 %192, i32* %194, align 8
  %195 = load i32, i32* @SSO_AF_LF_HWGRP_RST, align 4
  %196 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %197 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %196, i32 0, i32 6
  store i32 %195, i32* %197, align 4
  %198 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %199 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @sprintf(i32 %200, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %202 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %203 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %202, i32 0, i32 4
  %204 = call i32 @rvu_alloc_bitmap(%struct.TYPE_2__* %203)
  store i32 %204, i32* %7, align 4
  %205 = load i32, i32* %7, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %160
  %208 = load i32, i32* %7, align 4
  store i32 %208, i32* %2, align 4
  br label %510

209:                                              ; preds = %160
  br label %210

210:                                              ; preds = %209, %159
  %211 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %212 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %211, i32 0, i32 3
  %213 = load %struct.rvu_block*, %struct.rvu_block** %212, align 8
  %214 = load i64, i64* @BLKADDR_SSOW, align 8
  %215 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %213, i64 %214
  store %struct.rvu_block* %215, %struct.rvu_block** %5, align 8
  %216 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %217 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %216, i32 0, i32 13
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %210
  br label %268

221:                                              ; preds = %210
  %222 = load i32, i32* %8, align 4
  %223 = ashr i32 %222, 56
  %224 = and i32 %223, 255
  %225 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %226 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %225, i32 0, i32 4
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  store i32 %224, i32* %227, align 8
  %228 = load i64, i64* @BLKADDR_SSOW, align 8
  %229 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %230 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %229, i32 0, i32 0
  store i64 %228, i64* %230, align 8
  %231 = load i32, i32* @BLKTYPE_SSOW, align 4
  %232 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %233 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %232, i32 0, i32 12
  store i32 %231, i32* %233, align 4
  %234 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %235 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %234, i32 0, i32 2
  store i32 1, i32* %235, align 4
  %236 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %237 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %236, i32 0, i32 1
  store i32 3, i32* %237, align 8
  %238 = load i32, i32* @SSOW_AF_RVU_LF_HWS_CFG_DEBUG, align 4
  %239 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %240 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %239, i32 0, i32 11
  store i32 %238, i32* %240, align 8
  %241 = load i32, i32* @RVU_PRIV_PFX_SSOW_CFG, align 4
  %242 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %243 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %242, i32 0, i32 10
  store i32 %241, i32* %243, align 4
  %244 = load i32, i32* @RVU_PRIV_HWVFX_SSOW_CFG, align 4
  %245 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %246 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %245, i32 0, i32 9
  store i32 %244, i32* %246, align 8
  %247 = load i32, i32* @SSOW_PRIV_LFX_HWS_CFG, align 4
  %248 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %249 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %248, i32 0, i32 8
  store i32 %247, i32* %249, align 4
  %250 = load i32, i32* @SSOW_PRIV_LFX_HWS_INT_CFG, align 4
  %251 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %252 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %251, i32 0, i32 7
  store i32 %250, i32* %252, align 8
  %253 = load i32, i32* @SSOW_AF_LF_HWS_RST, align 4
  %254 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %255 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %254, i32 0, i32 6
  store i32 %253, i32* %255, align 4
  %256 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %257 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @sprintf(i32 %258, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %260 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %261 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %260, i32 0, i32 4
  %262 = call i32 @rvu_alloc_bitmap(%struct.TYPE_2__* %261)
  store i32 %262, i32* %7, align 4
  %263 = load i32, i32* %7, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %221
  %266 = load i32, i32* %7, align 4
  store i32 %266, i32* %2, align 4
  br label %510

267:                                              ; preds = %221
  br label %268

268:                                              ; preds = %267, %220
  %269 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %270 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %269, i32 0, i32 3
  %271 = load %struct.rvu_block*, %struct.rvu_block** %270, align 8
  %272 = load i64, i64* @BLKADDR_TIM, align 8
  %273 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %271, i64 %272
  store %struct.rvu_block* %273, %struct.rvu_block** %5, align 8
  %274 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %275 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %274, i32 0, i32 13
  %276 = load i32, i32* %275, align 8
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %279, label %278

278:                                              ; preds = %268
  br label %329

279:                                              ; preds = %268
  %280 = load %struct.rvu*, %struct.rvu** %3, align 8
  %281 = load i64, i64* @BLKADDR_TIM, align 8
  %282 = load i32, i32* @TIM_AF_CONST, align 4
  %283 = call i32 @rvu_read64(%struct.rvu* %280, i64 %281, i32 %282)
  store i32 %283, i32* %8, align 4
  %284 = load i32, i32* %8, align 4
  %285 = and i32 %284, 65535
  %286 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %287 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %286, i32 0, i32 4
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 0
  store i32 %285, i32* %288, align 8
  %289 = load i64, i64* @BLKADDR_TIM, align 8
  %290 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %291 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %290, i32 0, i32 0
  store i64 %289, i64* %291, align 8
  %292 = load i32, i32* @BLKTYPE_TIM, align 4
  %293 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %294 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %293, i32 0, i32 12
  store i32 %292, i32* %294, align 4
  %295 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %296 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %295, i32 0, i32 2
  store i32 1, i32* %296, align 4
  %297 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %298 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %297, i32 0, i32 1
  store i32 3, i32* %298, align 8
  %299 = load i32, i32* @TIM_AF_RVU_LF_CFG_DEBUG, align 4
  %300 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %301 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %300, i32 0, i32 11
  store i32 %299, i32* %301, align 8
  %302 = load i32, i32* @RVU_PRIV_PFX_TIM_CFG, align 4
  %303 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %304 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %303, i32 0, i32 10
  store i32 %302, i32* %304, align 4
  %305 = load i32, i32* @RVU_PRIV_HWVFX_TIM_CFG, align 4
  %306 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %307 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %306, i32 0, i32 9
  store i32 %305, i32* %307, align 8
  %308 = load i32, i32* @TIM_PRIV_LFX_CFG, align 4
  %309 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %310 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %309, i32 0, i32 8
  store i32 %308, i32* %310, align 4
  %311 = load i32, i32* @TIM_PRIV_LFX_INT_CFG, align 4
  %312 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %313 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %312, i32 0, i32 7
  store i32 %311, i32* %313, align 8
  %314 = load i32, i32* @TIM_AF_LF_RST, align 4
  %315 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %316 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %315, i32 0, i32 6
  store i32 %314, i32* %316, align 4
  %317 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %318 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %317, i32 0, i32 5
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @sprintf(i32 %319, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %321 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %322 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %321, i32 0, i32 4
  %323 = call i32 @rvu_alloc_bitmap(%struct.TYPE_2__* %322)
  store i32 %323, i32* %7, align 4
  %324 = load i32, i32* %7, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %279
  %327 = load i32, i32* %7, align 4
  store i32 %327, i32* %2, align 4
  br label %510

328:                                              ; preds = %279
  br label %329

329:                                              ; preds = %328, %278
  %330 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %331 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %330, i32 0, i32 3
  %332 = load %struct.rvu_block*, %struct.rvu_block** %331, align 8
  %333 = load i64, i64* @BLKADDR_CPT0, align 8
  %334 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %332, i64 %333
  store %struct.rvu_block* %334, %struct.rvu_block** %5, align 8
  %335 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %336 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %335, i32 0, i32 13
  %337 = load i32, i32* %336, align 8
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %340, label %339

339:                                              ; preds = %329
  br label %390

340:                                              ; preds = %329
  %341 = load %struct.rvu*, %struct.rvu** %3, align 8
  %342 = load i64, i64* @BLKADDR_CPT0, align 8
  %343 = load i32, i32* @CPT_AF_CONSTANTS0, align 4
  %344 = call i32 @rvu_read64(%struct.rvu* %341, i64 %342, i32 %343)
  store i32 %344, i32* %8, align 4
  %345 = load i32, i32* %8, align 4
  %346 = and i32 %345, 255
  %347 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %348 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %347, i32 0, i32 4
  %349 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %348, i32 0, i32 0
  store i32 %346, i32* %349, align 8
  %350 = load i64, i64* @BLKADDR_CPT0, align 8
  %351 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %352 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %351, i32 0, i32 0
  store i64 %350, i64* %352, align 8
  %353 = load i32, i32* @BLKTYPE_CPT, align 4
  %354 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %355 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %354, i32 0, i32 12
  store i32 %353, i32* %355, align 4
  %356 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %357 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %356, i32 0, i32 2
  store i32 1, i32* %357, align 4
  %358 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %359 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %358, i32 0, i32 1
  store i32 3, i32* %359, align 8
  %360 = load i32, i32* @CPT_AF_RVU_LF_CFG_DEBUG, align 4
  %361 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %362 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %361, i32 0, i32 11
  store i32 %360, i32* %362, align 8
  %363 = load i32, i32* @RVU_PRIV_PFX_CPT0_CFG, align 4
  %364 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %365 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %364, i32 0, i32 10
  store i32 %363, i32* %365, align 4
  %366 = load i32, i32* @RVU_PRIV_HWVFX_CPT0_CFG, align 4
  %367 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %368 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %367, i32 0, i32 9
  store i32 %366, i32* %368, align 8
  %369 = load i32, i32* @CPT_PRIV_LFX_CFG, align 4
  %370 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %371 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %370, i32 0, i32 8
  store i32 %369, i32* %371, align 4
  %372 = load i32, i32* @CPT_PRIV_LFX_INT_CFG, align 4
  %373 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %374 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %373, i32 0, i32 7
  store i32 %372, i32* %374, align 8
  %375 = load i32, i32* @CPT_AF_LF_RST, align 4
  %376 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %377 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %376, i32 0, i32 6
  store i32 %375, i32* %377, align 4
  %378 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %379 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %378, i32 0, i32 5
  %380 = load i32, i32* %379, align 8
  %381 = call i32 @sprintf(i32 %380, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %382 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %383 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %382, i32 0, i32 4
  %384 = call i32 @rvu_alloc_bitmap(%struct.TYPE_2__* %383)
  store i32 %384, i32* %7, align 4
  %385 = load i32, i32* %7, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %389

387:                                              ; preds = %340
  %388 = load i32, i32* %7, align 4
  store i32 %388, i32* %2, align 4
  br label %510

389:                                              ; preds = %340
  br label %390

390:                                              ; preds = %389, %339
  %391 = load %struct.rvu*, %struct.rvu** %3, align 8
  %392 = getelementptr inbounds %struct.rvu, %struct.rvu* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %395 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load i32, i32* @GFP_KERNEL, align 4
  %398 = call i8* @devm_kcalloc(i32 %393, i32 %396, i32 4, i32 %397)
  %399 = load %struct.rvu*, %struct.rvu** %3, align 8
  %400 = getelementptr inbounds %struct.rvu, %struct.rvu* %399, i32 0, i32 3
  store i8* %398, i8** %400, align 8
  %401 = load %struct.rvu*, %struct.rvu** %3, align 8
  %402 = getelementptr inbounds %struct.rvu, %struct.rvu* %401, i32 0, i32 3
  %403 = load i8*, i8** %402, align 8
  %404 = icmp ne i8* %403, null
  br i1 %404, label %408, label %405

405:                                              ; preds = %390
  %406 = load i32, i32* @ENOMEM, align 4
  %407 = sub nsw i32 0, %406
  store i32 %407, i32* %2, align 4
  br label %510

408:                                              ; preds = %390
  %409 = load %struct.rvu*, %struct.rvu** %3, align 8
  %410 = getelementptr inbounds %struct.rvu, %struct.rvu* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %413 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = load i32, i32* @GFP_KERNEL, align 4
  %416 = call i8* @devm_kcalloc(i32 %411, i32 %414, i32 4, i32 %415)
  %417 = load %struct.rvu*, %struct.rvu** %3, align 8
  %418 = getelementptr inbounds %struct.rvu, %struct.rvu* %417, i32 0, i32 2
  store i8* %416, i8** %418, align 8
  %419 = load %struct.rvu*, %struct.rvu** %3, align 8
  %420 = getelementptr inbounds %struct.rvu, %struct.rvu* %419, i32 0, i32 2
  %421 = load i8*, i8** %420, align 8
  %422 = icmp ne i8* %421, null
  br i1 %422, label %426, label %423

423:                                              ; preds = %408
  %424 = load i32, i32* @ENOMEM, align 4
  %425 = sub nsw i32 0, %424
  store i32 %425, i32* %2, align 4
  br label %510

426:                                              ; preds = %408
  %427 = load %struct.rvu*, %struct.rvu** %3, align 8
  %428 = getelementptr inbounds %struct.rvu, %struct.rvu* %427, i32 0, i32 1
  %429 = call i32 @mutex_init(i32* %428)
  %430 = load %struct.rvu*, %struct.rvu** %3, align 8
  %431 = call i32 @rvu_setup_msix_resources(%struct.rvu* %430)
  store i32 %431, i32* %7, align 4
  %432 = load i32, i32* %7, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %436

434:                                              ; preds = %426
  %435 = load i32, i32* %7, align 4
  store i32 %435, i32* %2, align 4
  br label %510

436:                                              ; preds = %426
  store i32 0, i32* %6, align 4
  br label %437

437:                                              ; preds = %477, %436
  %438 = load i32, i32* %6, align 4
  %439 = load i32, i32* @BLK_COUNT, align 4
  %440 = icmp slt i32 %438, %439
  br i1 %440, label %441, label %480

441:                                              ; preds = %437
  %442 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %443 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %442, i32 0, i32 3
  %444 = load %struct.rvu_block*, %struct.rvu_block** %443, align 8
  %445 = load i32, i32* %6, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %444, i64 %446
  store %struct.rvu_block* %447, %struct.rvu_block** %5, align 8
  %448 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %449 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %448, i32 0, i32 4
  %450 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %454, label %453

453:                                              ; preds = %441
  br label %477

454:                                              ; preds = %441
  %455 = load %struct.rvu*, %struct.rvu** %3, align 8
  %456 = getelementptr inbounds %struct.rvu, %struct.rvu* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %459 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %458, i32 0, i32 4
  %460 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = load i32, i32* @GFP_KERNEL, align 4
  %463 = call i8* @devm_kcalloc(i32 %457, i32 %461, i32 4, i32 %462)
  %464 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %465 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %464, i32 0, i32 3
  store i8* %463, i8** %465, align 8
  %466 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %467 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %466, i32 0, i32 3
  %468 = load i8*, i8** %467, align 8
  %469 = icmp ne i8* %468, null
  br i1 %469, label %473, label %470

470:                                              ; preds = %454
  %471 = load i32, i32* @ENOMEM, align 4
  %472 = sub nsw i32 0, %471
  store i32 %472, i32* %2, align 4
  br label %510

473:                                              ; preds = %454
  %474 = load %struct.rvu*, %struct.rvu** %3, align 8
  %475 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %476 = call i32 @rvu_scan_block(%struct.rvu* %474, %struct.rvu_block* %475)
  br label %477

477:                                              ; preds = %473, %453
  %478 = load i32, i32* %6, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %6, align 4
  br label %437

480:                                              ; preds = %437
  %481 = load %struct.rvu*, %struct.rvu** %3, align 8
  %482 = call i32 @rvu_npc_init(%struct.rvu* %481)
  store i32 %482, i32* %7, align 4
  %483 = load i32, i32* %7, align 4
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %486

485:                                              ; preds = %480
  br label %508

486:                                              ; preds = %480
  %487 = load %struct.rvu*, %struct.rvu** %3, align 8
  %488 = call i32 @rvu_cgx_init(%struct.rvu* %487)
  store i32 %488, i32* %7, align 4
  %489 = load i32, i32* %7, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %492

491:                                              ; preds = %486
  br label %508

492:                                              ; preds = %486
  %493 = load %struct.rvu*, %struct.rvu** %3, align 8
  %494 = call i32 @rvu_npa_init(%struct.rvu* %493)
  store i32 %494, i32* %7, align 4
  %495 = load i32, i32* %7, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %498

497:                                              ; preds = %492
  br label %505

498:                                              ; preds = %492
  %499 = load %struct.rvu*, %struct.rvu** %3, align 8
  %500 = call i32 @rvu_nix_init(%struct.rvu* %499)
  store i32 %500, i32* %7, align 4
  %501 = load i32, i32* %7, align 4
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %504

503:                                              ; preds = %498
  br label %505

504:                                              ; preds = %498
  store i32 0, i32* %2, align 4
  br label %510

505:                                              ; preds = %503, %497
  %506 = load %struct.rvu*, %struct.rvu** %3, align 8
  %507 = call i32 @rvu_cgx_exit(%struct.rvu* %506)
  br label %508

508:                                              ; preds = %505, %491, %485
  %509 = load i32, i32* %7, align 4
  store i32 %509, i32* %2, align 4
  br label %510

510:                                              ; preds = %508, %504, %470, %434, %423, %405, %387, %326, %265, %207, %146, %87
  %511 = load i32, i32* %2, align 4
  ret i32 %511
}

declare dso_local i32 @rvu_read64(%struct.rvu*, i64, i32) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @rvu_alloc_bitmap(%struct.TYPE_2__*) #1

declare dso_local i8* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @rvu_setup_msix_resources(%struct.rvu*) #1

declare dso_local i32 @rvu_scan_block(%struct.rvu*, %struct.rvu_block*) #1

declare dso_local i32 @rvu_npc_init(%struct.rvu*) #1

declare dso_local i32 @rvu_cgx_init(%struct.rvu*) #1

declare dso_local i32 @rvu_npa_init(%struct.rvu*) #1

declare dso_local i32 @rvu_nix_init(%struct.rvu*) #1

declare dso_local i32 @rvu_cgx_exit(%struct.rvu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
