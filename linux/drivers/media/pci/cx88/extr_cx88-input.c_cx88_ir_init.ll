; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-input.c_cx88_ir_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-input.c_cx88_ir_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32, %struct.cx88_IR*, %struct.TYPE_4__ }
%struct.cx88_IR = type { i32, i32, i32, i32, i32, %struct.cx88_core*, i32, i32, i8*, %struct.rc_dev* }
%struct.rc_dev = type { i8*, i32, i32, i32, i8*, i32, i32, %struct.cx88_core*, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.pci_dev = type { i32, i32, i64, i32, i64 }

@RC_PROTO_BIT_OTHER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RC_DRIVER_IR_RAW = common dso_local global i32 0, align 4
@RC_MAP_DNTV_LIVE_DVB_T = common dso_local global i8* null, align 8
@MO_GP1_IO = common dso_local global i8* null, align 8
@RC_MAP_CINERGY_1400 = common dso_local global i8* null, align 8
@RC_MAP_HAUPPAUGE = common dso_local global i8* null, align 8
@RC_MAP_WINFAST = common dso_local global i8* null, align 8
@MO_GP0_IO = common dso_local global i8* null, align 8
@RC_MAP_IODATA_BCTV7E = common dso_local global i8* null, align 8
@RC_MAP_PIXELVIEW_MK12 = common dso_local global i8* null, align 8
@RC_PROTO_BIT_NECX = common dso_local global i32 0, align 4
@RC_MAP_PIXELVIEW_NEW = common dso_local global i8* null, align 8
@RC_MAP_PIXELVIEW = common dso_local global i8* null, align 8
@RC_MAP_ADSTECH_DVB_T_PCI = common dso_local global i8* null, align 8
@RC_MAP_MSI_TVANYWHERE = common dso_local global i8* null, align 8
@RC_MAP_AVERTV_303 = common dso_local global i8* null, align 8
@MO_GP2_IO = common dso_local global i8* null, align 8
@RC_MAP_TBS_NEC = common dso_local global i8* null, align 8
@RC_MAP_TEVII_NEC = common dso_local global i8* null, align 8
@RC_MAP_DNTV_LIVE_DVBT_PRO = common dso_local global i8* null, align 8
@RC_MAP_NORWOOD = common dso_local global i8* null, align 8
@RC_MAP_NPGTECH = common dso_local global i8* null, align 8
@RC_MAP_PINNACLE_PCTV_HD = common dso_local global i8* null, align 8
@RC_MAP_POWERCOLOR_REAL_ANGEL = common dso_local global i8* null, align 8
@RC_MAP_TWINHAN_VP1027_DVBS = common dso_local global i8* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"cx88 IR (%s)\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"pci-%s/ir0\00", align 1
@BUS_PCI = common dso_local global i32 0, align 4
@MODULE_NAME = common dso_local global i32 0, align 4
@cx88_ir_open = common dso_local global i32 0, align 4
@cx88_ir_close = common dso_local global i32 0, align 4
@RC_DRIVER_SCANCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_ir_init(%struct.cx88_core* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx88_core*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.cx88_IR*, align 8
  %7 = alloca %struct.rc_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  store i8* null, i8** %8, align 8
  %12 = load i32, i32* @RC_PROTO_BIT_OTHER, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.cx88_IR* @kzalloc(i32 56, i32 %15)
  store %struct.cx88_IR* %16, %struct.cx88_IR** %6, align 8
  %17 = load i32, i32* @RC_DRIVER_IR_RAW, align 4
  %18 = call %struct.rc_dev* @rc_allocate_device(i32 %17)
  store %struct.rc_dev* %18, %struct.rc_dev** %7, align 8
  %19 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %20 = icmp ne %struct.cx88_IR* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %23 = icmp ne %struct.rc_dev* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %2
  br label %330

25:                                               ; preds = %21
  %26 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %27 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %28 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %27, i32 0, i32 9
  store %struct.rc_dev* %26, %struct.rc_dev** %28, align 8
  %29 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %30 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %198 [
    i32 175, label %32
    i32 163, label %32
    i32 162, label %32
    i32 142, label %43
    i32 173, label %47
    i32 172, label %47
    i32 166, label %47
    i32 165, label %47
    i32 171, label %47
    i32 170, label %47
    i32 169, label %47
    i32 168, label %47
    i32 156, label %47
    i32 155, label %47
    i32 167, label %47
    i32 133, label %51
    i32 132, label %51
    i32 135, label %51
    i32 134, label %51
    i32 131, label %51
    i32 137, label %62
    i32 136, label %62
    i32 130, label %62
    i32 129, label %62
    i32 128, label %62
    i32 164, label %73
    i32 148, label %84
    i32 153, label %84
    i32 147, label %94
    i32 146, label %94
    i32 161, label %105
    i32 178, label %116
    i32 160, label %127
    i32 177, label %138
    i32 176, label %138
    i32 157, label %149
    i32 145, label %149
    i32 143, label %149
    i32 144, label %149
    i32 150, label %149
    i32 149, label %149
    i32 151, label %149
    i32 139, label %153
    i32 140, label %153
    i32 141, label %153
    i32 174, label %157
    i32 159, label %161
    i32 158, label %172
    i32 154, label %181
    i32 152, label %185
    i32 138, label %194
  ]

32:                                               ; preds = %25, %25, %25
  %33 = load i8*, i8** @RC_MAP_DNTV_LIVE_DVB_T, align 8
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** @MO_GP1_IO, align 8
  %35 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %36 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %35, i32 0, i32 8
  store i8* %34, i8** %36, align 8
  %37 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %38 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %37, i32 0, i32 0
  store i32 31, i32* %38, align 8
  %39 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %40 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %39, i32 0, i32 1
  store i32 96, i32* %40, align 4
  %41 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %42 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %41, i32 0, i32 2
  store i32 50, i32* %42, align 8
  br label %198

43:                                               ; preds = %25
  %44 = load i8*, i8** @RC_MAP_CINERGY_1400, align 8
  store i8* %44, i8** %8, align 8
  %45 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %46 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %45, i32 0, i32 3
  store i32 60164, i32* %46, align 4
  br label %198

47:                                               ; preds = %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25
  %48 = load i8*, i8** @RC_MAP_HAUPPAUGE, align 8
  store i8* %48, i8** %8, align 8
  %49 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %50 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %49, i32 0, i32 3
  store i32 1, i32* %50, align 4
  br label %198

51:                                               ; preds = %25, %25, %25, %25, %25
  %52 = load i8*, i8** @RC_MAP_WINFAST, align 8
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** @MO_GP0_IO, align 8
  %54 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %55 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %54, i32 0, i32 8
  store i8* %53, i8** %55, align 8
  %56 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %57 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %56, i32 0, i32 0
  store i32 2296, i32* %57, align 8
  %58 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %59 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %58, i32 0, i32 1
  store i32 256, i32* %59, align 4
  %60 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %61 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %60, i32 0, i32 2
  store i32 50, i32* %61, align 8
  br label %198

62:                                               ; preds = %25, %25, %25, %25, %25
  %63 = load i8*, i8** @RC_MAP_WINFAST, align 8
  store i8* %63, i8** %8, align 8
  %64 = load i8*, i8** @MO_GP0_IO, align 8
  %65 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %66 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %65, i32 0, i32 8
  store i8* %64, i8** %66, align 8
  %67 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %68 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %67, i32 0, i32 0
  store i32 2296, i32* %68, align 8
  %69 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %70 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %69, i32 0, i32 1
  store i32 256, i32* %70, align 4
  %71 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %72 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %71, i32 0, i32 2
  store i32 1, i32* %72, align 8
  br label %198

73:                                               ; preds = %25
  %74 = load i8*, i8** @RC_MAP_IODATA_BCTV7E, align 8
  store i8* %74, i8** %8, align 8
  %75 = load i8*, i8** @MO_GP0_IO, align 8
  %76 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %77 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %76, i32 0, i32 8
  store i8* %75, i8** %77, align 8
  %78 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %79 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %78, i32 0, i32 0
  store i32 253, i32* %79, align 8
  %80 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %81 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %80, i32 0, i32 4
  store i32 2, i32* %81, align 8
  %82 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %83 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %82, i32 0, i32 2
  store i32 5, i32* %83, align 8
  br label %198

84:                                               ; preds = %25, %25
  %85 = load i8*, i8** @RC_MAP_PIXELVIEW_MK12, align 8
  store i8* %85, i8** %8, align 8
  %86 = load i32, i32* @RC_PROTO_BIT_NECX, align 4
  store i32 %86, i32* %9, align 4
  %87 = load i8*, i8** @MO_GP1_IO, align 8
  %88 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %89 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %88, i32 0, i32 8
  store i8* %87, i8** %89, align 8
  %90 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %91 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %90, i32 0, i32 1
  store i32 128, i32* %91, align 4
  %92 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %93 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %92, i32 0, i32 2
  store i32 10, i32* %93, align 8
  store i8* inttoptr (i64 63 to i8*), i8** %11, align 8
  br label %198

94:                                               ; preds = %25, %25
  %95 = load i8*, i8** @RC_MAP_PIXELVIEW_NEW, align 8
  store i8* %95, i8** %8, align 8
  %96 = load i8*, i8** @MO_GP1_IO, align 8
  %97 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %98 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %97, i32 0, i32 8
  store i8* %96, i8** %98, align 8
  %99 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %100 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %99, i32 0, i32 0
  store i32 63, i32* %100, align 8
  %101 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %102 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %101, i32 0, i32 1
  store i32 128, i32* %102, align 4
  %103 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %104 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %103, i32 0, i32 2
  store i32 1, i32* %104, align 8
  br label %198

105:                                              ; preds = %25
  %106 = load i8*, i8** @RC_MAP_PIXELVIEW, align 8
  store i8* %106, i8** %8, align 8
  %107 = load i8*, i8** @MO_GP1_IO, align 8
  %108 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %109 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %108, i32 0, i32 8
  store i8* %107, i8** %109, align 8
  %110 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %111 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %110, i32 0, i32 0
  store i32 31, i32* %111, align 8
  %112 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %113 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %112, i32 0, i32 1
  store i32 96, i32* %113, align 4
  %114 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %115 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %114, i32 0, i32 2
  store i32 1, i32* %115, align 8
  br label %198

116:                                              ; preds = %25
  %117 = load i8*, i8** @RC_MAP_ADSTECH_DVB_T_PCI, align 8
  store i8* %117, i8** %8, align 8
  %118 = load i8*, i8** @MO_GP1_IO, align 8
  %119 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %120 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %119, i32 0, i32 8
  store i8* %118, i8** %120, align 8
  %121 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %122 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %121, i32 0, i32 0
  store i32 191, i32* %122, align 8
  %123 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %124 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %123, i32 0, i32 1
  store i32 64, i32* %124, align 4
  %125 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %126 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %125, i32 0, i32 2
  store i32 50, i32* %126, align 8
  br label %198

127:                                              ; preds = %25
  %128 = load i8*, i8** @RC_MAP_MSI_TVANYWHERE, align 8
  store i8* %128, i8** %8, align 8
  %129 = load i8*, i8** @MO_GP1_IO, align 8
  %130 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %131 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %130, i32 0, i32 8
  store i8* %129, i8** %131, align 8
  %132 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %133 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %132, i32 0, i32 0
  store i32 31, i32* %133, align 8
  %134 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %135 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %134, i32 0, i32 1
  store i32 64, i32* %135, align 4
  %136 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %137 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %136, i32 0, i32 2
  store i32 1, i32* %137, align 8
  br label %198

138:                                              ; preds = %25, %25
  %139 = load i8*, i8** @RC_MAP_AVERTV_303, align 8
  store i8* %139, i8** %8, align 8
  %140 = load i8*, i8** @MO_GP2_IO, align 8
  %141 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %142 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %141, i32 0, i32 8
  store i8* %140, i8** %142, align 8
  %143 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %144 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %143, i32 0, i32 0
  store i32 251, i32* %144, align 8
  %145 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %146 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %145, i32 0, i32 4
  store i32 2, i32* %146, align 8
  %147 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %148 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %147, i32 0, i32 2
  store i32 50, i32* %148, align 8
  br label %198

149:                                              ; preds = %25, %25, %25, %25, %25, %25, %25
  %150 = load i8*, i8** @RC_MAP_TBS_NEC, align 8
  store i8* %150, i8** %8, align 8
  %151 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %152 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %151, i32 0, i32 3
  store i32 65280, i32* %152, align 4
  br label %198

153:                                              ; preds = %25, %25, %25
  %154 = load i8*, i8** @RC_MAP_TEVII_NEC, align 8
  store i8* %154, i8** %8, align 8
  %155 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %156 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %155, i32 0, i32 3
  store i32 65280, i32* %156, align 4
  br label %198

157:                                              ; preds = %25
  %158 = load i8*, i8** @RC_MAP_DNTV_LIVE_DVBT_PRO, align 8
  store i8* %158, i8** %8, align 8
  %159 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %160 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %159, i32 0, i32 3
  store i32 65280, i32* %160, align 4
  br label %198

161:                                              ; preds = %25
  %162 = load i8*, i8** @RC_MAP_NORWOOD, align 8
  store i8* %162, i8** %8, align 8
  %163 = load i8*, i8** @MO_GP1_IO, align 8
  %164 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %165 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %164, i32 0, i32 8
  store i8* %163, i8** %165, align 8
  %166 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %167 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %166, i32 0, i32 0
  store i32 14, i32* %167, align 8
  %168 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %169 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %168, i32 0, i32 1
  store i32 128, i32* %169, align 4
  %170 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %171 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %170, i32 0, i32 2
  store i32 50, i32* %171, align 8
  br label %198

172:                                              ; preds = %25
  %173 = load i8*, i8** @RC_MAP_NPGTECH, align 8
  store i8* %173, i8** %8, align 8
  %174 = load i8*, i8** @MO_GP0_IO, align 8
  %175 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %176 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %175, i32 0, i32 8
  store i8* %174, i8** %176, align 8
  %177 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %178 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %177, i32 0, i32 0
  store i32 250, i32* %178, align 8
  %179 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %180 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %179, i32 0, i32 2
  store i32 50, i32* %180, align 8
  br label %198

181:                                              ; preds = %25
  %182 = load i8*, i8** @RC_MAP_PINNACLE_PCTV_HD, align 8
  store i8* %182, i8** %8, align 8
  %183 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %184 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %183, i32 0, i32 3
  store i32 1, i32* %184, align 4
  br label %198

185:                                              ; preds = %25
  %186 = load i8*, i8** @RC_MAP_POWERCOLOR_REAL_ANGEL, align 8
  store i8* %186, i8** %8, align 8
  %187 = load i8*, i8** @MO_GP2_IO, align 8
  %188 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %189 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %188, i32 0, i32 8
  store i8* %187, i8** %189, align 8
  %190 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %191 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %190, i32 0, i32 0
  store i32 126, i32* %191, align 8
  %192 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %193 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %192, i32 0, i32 2
  store i32 100, i32* %193, align 8
  br label %198

194:                                              ; preds = %25
  %195 = load i8*, i8** @RC_MAP_TWINHAN_VP1027_DVBS, align 8
  store i8* %195, i8** %8, align 8
  %196 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %197 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %196, i32 0, i32 3
  store i32 65280, i32* %197, align 4
  br label %198

198:                                              ; preds = %25, %194, %185, %181, %172, %161, %157, %153, %149, %138, %127, %116, %105, %94, %84, %73, %62, %51, %47, %43, %32
  %199 = load i8*, i8** %8, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %204, label %201

201:                                              ; preds = %198
  %202 = load i32, i32* @ENODEV, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %10, align 4
  br label %330

204:                                              ; preds = %198
  %205 = load i8*, i8** %11, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %217

207:                                              ; preds = %204
  %208 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %209 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %207
  %213 = load i8*, i8** %11, align 8
  %214 = ptrtoint i8* %213 to i32
  %215 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %216 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %215, i32 0, i32 0
  store i32 %214, i32* %216, align 8
  br label %217

217:                                              ; preds = %212, %207, %204
  %218 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %219 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %218, i32 0, i32 7
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %222 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @snprintf(i32 %220, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %224)
  %226 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %227 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %230 = call i8* @pci_name(%struct.pci_dev* %229)
  %231 = call i32 @snprintf(i32 %228, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %230)
  %232 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %233 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %232, i32 0, i32 7
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %236 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %235, i32 0, i32 12
  store i32 %234, i32* %236, align 4
  %237 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %238 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %237, i32 0, i32 6
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %241 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %240, i32 0, i32 11
  store i32 %239, i32* %241, align 8
  %242 = load i32, i32* @BUS_PCI, align 4
  %243 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %244 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %243, i32 0, i32 10
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 3
  store i32 %242, i32* %245, align 8
  %246 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %247 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %246, i32 0, i32 10
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 0
  store i32 1, i32* %248, align 8
  %249 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %250 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %249, i32 0, i32 4
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %266

253:                                              ; preds = %217
  %254 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %255 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %254, i32 0, i32 4
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %258 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %257, i32 0, i32 10
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 2
  store i64 %256, i64* %259, align 8
  %260 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %261 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %264 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %263, i32 0, i32 10
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 1
  store i32 %262, i32* %265, align 4
  br label %279

266:                                              ; preds = %217
  %267 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %268 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %271 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %270, i32 0, i32 10
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 2
  store i64 %269, i64* %272, align 8
  %273 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %274 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %277 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %276, i32 0, i32 10
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 1
  store i32 %275, i32* %278, align 4
  br label %279

279:                                              ; preds = %266, %253
  %280 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %281 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %280, i32 0, i32 0
  %282 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %283 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %282, i32 0, i32 9
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 0
  store i32* %281, i32** %284, align 8
  %285 = load i8*, i8** %8, align 8
  %286 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %287 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %286, i32 0, i32 0
  store i8* %285, i8** %287, align 8
  %288 = load i32, i32* @MODULE_NAME, align 4
  %289 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %290 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %289, i32 0, i32 8
  store i32 %288, i32* %290, align 8
  %291 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %292 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %293 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %292, i32 0, i32 7
  store %struct.cx88_core* %291, %struct.cx88_core** %293, align 8
  %294 = load i32, i32* @cx88_ir_open, align 4
  %295 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %296 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %295, i32 0, i32 6
  store i32 %294, i32* %296, align 4
  %297 = load i32, i32* @cx88_ir_close, align 4
  %298 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %299 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %298, i32 0, i32 5
  store i32 %297, i32* %299, align 8
  %300 = load i8*, i8** %11, align 8
  %301 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %302 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %301, i32 0, i32 4
  store i8* %300, i8** %302, align 8
  %303 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %304 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %279
  %308 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %309 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %308, i32 0, i32 1
  store i32 10000000, i32* %309, align 8
  br label %317

310:                                              ; preds = %279
  %311 = load i32, i32* @RC_DRIVER_SCANCODE, align 4
  %312 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %313 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %312, i32 0, i32 3
  store i32 %311, i32* %313, align 8
  %314 = load i32, i32* %9, align 4
  %315 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %316 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %315, i32 0, i32 2
  store i32 %314, i32* %316, align 4
  br label %317

317:                                              ; preds = %310, %307
  %318 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %319 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %320 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %319, i32 0, i32 5
  store %struct.cx88_core* %318, %struct.cx88_core** %320, align 8
  %321 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %322 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %323 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %322, i32 0, i32 1
  store %struct.cx88_IR* %321, %struct.cx88_IR** %323, align 8
  %324 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %325 = call i32 @rc_register_device(%struct.rc_dev* %324)
  store i32 %325, i32* %10, align 4
  %326 = load i32, i32* %10, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %317
  br label %330

329:                                              ; preds = %317
  store i32 0, i32* %3, align 4
  br label %338

330:                                              ; preds = %328, %201, %24
  %331 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %332 = call i32 @rc_free_device(%struct.rc_dev* %331)
  %333 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %334 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %333, i32 0, i32 1
  store %struct.cx88_IR* null, %struct.cx88_IR** %334, align 8
  %335 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %336 = call i32 @kfree(%struct.cx88_IR* %335)
  %337 = load i32, i32* %10, align 4
  store i32 %337, i32* %3, align 4
  br label %338

338:                                              ; preds = %330, %329
  %339 = load i32, i32* %3, align 4
  ret i32 %339
}

declare dso_local %struct.cx88_IR* @kzalloc(i32, i32) #1

declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

declare dso_local i32 @kfree(%struct.cx88_IR*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
