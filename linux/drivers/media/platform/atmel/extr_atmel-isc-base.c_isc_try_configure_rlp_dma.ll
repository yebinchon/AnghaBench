; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_try_configure_rlp_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_try_configure_rlp_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8*, i8*, i8* }

@ISC_RLP_CFG_MODE_DAT8 = common dso_local global i8* null, align 8
@ISC_DCFG_IMODE_PACKED8 = common dso_local global i8* null, align 8
@ISC_DCTRL_DVIEW_PACKED = common dso_local global i8* null, align 8
@ISC_RLP_CFG_MODE_DAT10 = common dso_local global i8* null, align 8
@ISC_DCFG_IMODE_PACKED16 = common dso_local global i8* null, align 8
@ISC_RLP_CFG_MODE_DAT12 = common dso_local global i8* null, align 8
@ISC_RLP_CFG_MODE_RGB565 = common dso_local global i8* null, align 8
@ISC_RLP_CFG_MODE_ARGB444 = common dso_local global i8* null, align 8
@ISC_RLP_CFG_MODE_ARGB555 = common dso_local global i8* null, align 8
@ISC_RLP_CFG_MODE_ARGB32 = common dso_local global i8* null, align 8
@ISC_DCFG_IMODE_PACKED32 = common dso_local global i8* null, align 8
@ISC_RLP_CFG_MODE_YYCC = common dso_local global i8* null, align 8
@ISC_DCFG_IMODE_YC420P = common dso_local global i8* null, align 8
@ISC_DCTRL_DVIEW_PLANAR = common dso_local global i8* null, align 8
@ISC_DCFG_IMODE_YC422P = common dso_local global i8* null, align 8
@ISC_RLP_CFG_MODE_DATY8 = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isc_device*, i32)* @isc_try_configure_rlp_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isc_try_configure_rlp_dma(%struct.isc_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isc_device*, align 8
  %5 = alloca i32, align 4
  store %struct.isc_device* %0, %struct.isc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = load i8*, i8** @ISC_RLP_CFG_MODE_DAT8, align 8
  %10 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %11 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 4
  store i8* %9, i8** %12, align 8
  %13 = load i8*, i8** @ISC_DCFG_IMODE_PACKED8, align 8
  %14 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %15 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  store i8* %13, i8** %16, align 8
  %17 = load i8*, i8** @ISC_DCTRL_DVIEW_PACKED, align 8
  %18 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %19 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store i8* %17, i8** %20, align 8
  %21 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %22 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 16, i32* %23, align 8
  store i32 0, i32* %3, align 4
  br label %209

24:                                               ; preds = %2
  %25 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %26 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %205 [
    i32 141, label %29
    i32 138, label %29
    i32 135, label %29
    i32 132, label %29
    i32 143, label %45
    i32 140, label %45
    i32 137, label %45
    i32 134, label %45
    i32 142, label %61
    i32 139, label %61
    i32 136, label %61
    i32 133, label %61
    i32 144, label %77
    i32 147, label %93
    i32 146, label %109
    i32 148, label %125
    i32 131, label %125
    i32 130, label %141
    i32 129, label %157
    i32 128, label %173
    i32 145, label %189
  ]

29:                                               ; preds = %24, %24, %24, %24
  %30 = load i8*, i8** @ISC_RLP_CFG_MODE_DAT8, align 8
  %31 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %32 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  store i8* %30, i8** %33, align 8
  %34 = load i8*, i8** @ISC_DCFG_IMODE_PACKED8, align 8
  %35 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %36 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  store i8* %34, i8** %37, align 8
  %38 = load i8*, i8** @ISC_DCTRL_DVIEW_PACKED, align 8
  %39 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %40 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i8* %38, i8** %41, align 8
  %42 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %43 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 8, i32* %44, align 8
  br label %208

45:                                               ; preds = %24, %24, %24, %24
  %46 = load i8*, i8** @ISC_RLP_CFG_MODE_DAT10, align 8
  %47 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %48 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  store i8* %46, i8** %49, align 8
  %50 = load i8*, i8** @ISC_DCFG_IMODE_PACKED16, align 8
  %51 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %52 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  store i8* %50, i8** %53, align 8
  %54 = load i8*, i8** @ISC_DCTRL_DVIEW_PACKED, align 8
  %55 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %56 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i8* %54, i8** %57, align 8
  %58 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %59 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 16, i32* %60, align 8
  br label %208

61:                                               ; preds = %24, %24, %24, %24
  %62 = load i8*, i8** @ISC_RLP_CFG_MODE_DAT12, align 8
  %63 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %64 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 4
  store i8* %62, i8** %65, align 8
  %66 = load i8*, i8** @ISC_DCFG_IMODE_PACKED16, align 8
  %67 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %68 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  store i8* %66, i8** %69, align 8
  %70 = load i8*, i8** @ISC_DCTRL_DVIEW_PACKED, align 8
  %71 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %72 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  store i8* %70, i8** %73, align 8
  %74 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %75 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 16, i32* %76, align 8
  br label %208

77:                                               ; preds = %24
  %78 = load i8*, i8** @ISC_RLP_CFG_MODE_RGB565, align 8
  %79 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %80 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  store i8* %78, i8** %81, align 8
  %82 = load i8*, i8** @ISC_DCFG_IMODE_PACKED16, align 8
  %83 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %84 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  store i8* %82, i8** %85, align 8
  %86 = load i8*, i8** @ISC_DCTRL_DVIEW_PACKED, align 8
  %87 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %88 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  store i8* %86, i8** %89, align 8
  %90 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %91 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 16, i32* %92, align 8
  br label %208

93:                                               ; preds = %24
  %94 = load i8*, i8** @ISC_RLP_CFG_MODE_ARGB444, align 8
  %95 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %96 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 4
  store i8* %94, i8** %97, align 8
  %98 = load i8*, i8** @ISC_DCFG_IMODE_PACKED16, align 8
  %99 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %100 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 3
  store i8* %98, i8** %101, align 8
  %102 = load i8*, i8** @ISC_DCTRL_DVIEW_PACKED, align 8
  %103 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %104 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  store i8* %102, i8** %105, align 8
  %106 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %107 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i32 16, i32* %108, align 8
  br label %208

109:                                              ; preds = %24
  %110 = load i8*, i8** @ISC_RLP_CFG_MODE_ARGB555, align 8
  %111 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %112 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 4
  store i8* %110, i8** %113, align 8
  %114 = load i8*, i8** @ISC_DCFG_IMODE_PACKED16, align 8
  %115 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %116 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 3
  store i8* %114, i8** %117, align 8
  %118 = load i8*, i8** @ISC_DCTRL_DVIEW_PACKED, align 8
  %119 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %120 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  store i8* %118, i8** %121, align 8
  %122 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %123 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  store i32 16, i32* %124, align 8
  br label %208

125:                                              ; preds = %24, %24
  %126 = load i8*, i8** @ISC_RLP_CFG_MODE_ARGB32, align 8
  %127 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %128 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 4
  store i8* %126, i8** %129, align 8
  %130 = load i8*, i8** @ISC_DCFG_IMODE_PACKED32, align 8
  %131 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %132 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 3
  store i8* %130, i8** %133, align 8
  %134 = load i8*, i8** @ISC_DCTRL_DVIEW_PACKED, align 8
  %135 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %136 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  store i8* %134, i8** %137, align 8
  %138 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %139 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  store i32 32, i32* %140, align 8
  br label %208

141:                                              ; preds = %24
  %142 = load i8*, i8** @ISC_RLP_CFG_MODE_YYCC, align 8
  %143 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %144 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 4
  store i8* %142, i8** %145, align 8
  %146 = load i8*, i8** @ISC_DCFG_IMODE_YC420P, align 8
  %147 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %148 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 3
  store i8* %146, i8** %149, align 8
  %150 = load i8*, i8** @ISC_DCTRL_DVIEW_PLANAR, align 8
  %151 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %152 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 2
  store i8* %150, i8** %153, align 8
  %154 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %155 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  store i32 12, i32* %156, align 8
  br label %208

157:                                              ; preds = %24
  %158 = load i8*, i8** @ISC_RLP_CFG_MODE_YYCC, align 8
  %159 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %160 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 4
  store i8* %158, i8** %161, align 8
  %162 = load i8*, i8** @ISC_DCFG_IMODE_YC422P, align 8
  %163 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %164 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 3
  store i8* %162, i8** %165, align 8
  %166 = load i8*, i8** @ISC_DCTRL_DVIEW_PLANAR, align 8
  %167 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %168 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 2
  store i8* %166, i8** %169, align 8
  %170 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %171 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  store i32 16, i32* %172, align 8
  br label %208

173:                                              ; preds = %24
  %174 = load i8*, i8** @ISC_RLP_CFG_MODE_YYCC, align 8
  %175 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %176 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 4
  store i8* %174, i8** %177, align 8
  %178 = load i8*, i8** @ISC_DCFG_IMODE_PACKED32, align 8
  %179 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %180 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 3
  store i8* %178, i8** %181, align 8
  %182 = load i8*, i8** @ISC_DCTRL_DVIEW_PACKED, align 8
  %183 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %184 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 2
  store i8* %182, i8** %185, align 8
  %186 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %187 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  store i32 16, i32* %188, align 8
  br label %208

189:                                              ; preds = %24
  %190 = load i8*, i8** @ISC_RLP_CFG_MODE_DATY8, align 8
  %191 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %192 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 4
  store i8* %190, i8** %193, align 8
  %194 = load i8*, i8** @ISC_DCFG_IMODE_PACKED8, align 8
  %195 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %196 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 3
  store i8* %194, i8** %197, align 8
  %198 = load i8*, i8** @ISC_DCTRL_DVIEW_PACKED, align 8
  %199 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %200 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 2
  store i8* %198, i8** %201, align 8
  %202 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %203 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  store i32 8, i32* %204, align 8
  br label %208

205:                                              ; preds = %24
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %3, align 4
  br label %209

208:                                              ; preds = %189, %173, %157, %141, %125, %109, %93, %77, %61, %45, %29
  store i32 0, i32* %3, align 4
  br label %209

209:                                              ; preds = %208, %205, %8
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
