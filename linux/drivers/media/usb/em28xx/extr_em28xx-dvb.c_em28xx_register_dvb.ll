; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28xx_register_dvb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28xx_register_dvb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx_dvb = type { %struct.TYPE_28__, %struct.TYPE_27__**, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_34__, %struct.TYPE_34__, i32, i32 }
%struct.TYPE_28__ = type { i32*, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i8* }
%struct.TYPE_31__ = type { i32, i32, %struct.TYPE_33__, i32, i32, %struct.em28xx_dvb* }
%struct.TYPE_33__ = type { i32, i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)*, i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)*, i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)* }
%struct.TYPE_30__ = type { i32, i64, %struct.TYPE_33__* }
%struct.TYPE_34__ = type { i32 }
%struct.module = type { i32 }
%struct.em28xx = type { i64, i64, i32, %struct.TYPE_32__*, i32*, i32 }
%struct.TYPE_32__ = type { i32 }
%struct.device = type { i32 }

@adapter_nr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"dvb_register_adapter failed (errno = %d)\0A\00", align 1
@em28xx_dvb_bus_ctrl = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"dvb_register_frontend failed (errno = %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"2nd dvb_register_frontend failed (errno = %d)\0A\00", align 1
@DMX_TS_FILTERING = common dso_local global i32 0, align 4
@DMX_SECTION_FILTERING = common dso_local global i32 0, align 4
@DMX_MEMORY_BASED_FILTERING = common dso_local global i32 0, align 4
@em28xx_start_feed = common dso_local global i32 0, align 4
@em28xx_stop_feed = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"dvb_dmx_init failed (errno = %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"dvb_dmxdev_init failed (errno = %d)\0A\00", align 1
@DMX_FRONTEND_0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"add_frontend failed (DMX_FRONTEND_0, errno = %d)\0A\00", align 1
@DMX_MEMORY_FE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"add_frontend failed (DMX_MEMORY_FE, errno = %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"connect_frontend failed (errno = %d)\0A\00", align 1
@TUNER_ABSENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx_dvb*, %struct.module*, %struct.em28xx*, %struct.device*)* @em28xx_register_dvb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_register_dvb(%struct.em28xx_dvb* %0, %struct.module* %1, %struct.em28xx* %2, %struct.device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.em28xx_dvb*, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca %struct.em28xx*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.em28xx_dvb* %0, %struct.em28xx_dvb** %6, align 8
  store %struct.module* %1, %struct.module** %7, align 8
  store %struct.em28xx* %2, %struct.em28xx** %8, align 8
  store %struct.device* %3, %struct.device** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %13 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %12, i32 0, i32 7
  %14 = call i32 @mutex_init(i32* %13)
  %15 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %16 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %15, i32 0, i32 0
  %17 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %18 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %17, i32 0, i32 3
  %19 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 0
  %21 = call i32 @dev_name(i32* %20)
  %22 = load %struct.module*, %struct.module** %7, align 8
  %23 = load %struct.device*, %struct.device** %9, align 8
  %24 = load i32, i32* @adapter_nr, align 4
  %25 = call i32 @dvb_register_adapter(%struct.TYPE_28__* %16, i32 %21, %struct.module* %22, %struct.device* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %30 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %29, i32 0, i32 3
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i32 0, i32 0
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @dev_warn(i32* %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %362

35:                                               ; preds = %4
  %36 = load i8*, i8** @em28xx_dvb_bus_ctrl, align 8
  %37 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %38 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %37, i32 0, i32 1
  %39 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %39, i64 0
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 0
  store i8* %36, i8** %43, align 8
  %44 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %45 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %44, i32 0, i32 1
  %46 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %46, i64 1
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %47, align 8
  %49 = icmp ne %struct.TYPE_27__* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %35
  %51 = load i8*, i8** @em28xx_dvb_bus_ctrl, align 8
  %52 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %53 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %52, i32 0, i32 1
  %54 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %54, i64 1
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 0
  store i8* %51, i8** %58, align 8
  br label %59

59:                                               ; preds = %50, %35
  %60 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %61 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %64 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %68 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 0
  store i32* %66, i32** %69, align 8
  %70 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %71 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %70, i32 0, i32 0
  %72 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %73 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %72, i32 0, i32 1
  %74 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %74, i64 0
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %75, align 8
  %77 = call i32 @dvb_register_frontend(%struct.TYPE_28__* %71, %struct.TYPE_27__* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %59
  %81 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %82 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %81, i32 0, i32 3
  %83 = load %struct.TYPE_32__*, %struct.TYPE_32__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %83, i32 0, i32 0
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @dev_warn(i32* %84, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %352

87:                                               ; preds = %59
  %88 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %89 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %88, i32 0, i32 1
  %90 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %90, i64 1
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %91, align 8
  %93 = icmp ne %struct.TYPE_27__* %92, null
  br i1 %93, label %94, label %113

94:                                               ; preds = %87
  %95 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %96 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %95, i32 0, i32 0
  %97 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %98 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %97, i32 0, i32 1
  %99 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %99, i64 1
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %100, align 8
  %102 = call i32 @dvb_register_frontend(%struct.TYPE_28__* %96, %struct.TYPE_27__* %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %94
  %106 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %107 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %106, i32 0, i32 3
  %108 = load %struct.TYPE_32__*, %struct.TYPE_32__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %108, i32 0, i32 0
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @dev_warn(i32* %109, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  br label %337

112:                                              ; preds = %94
  br label %113

113:                                              ; preds = %112, %87
  %114 = load i32, i32* @DMX_TS_FILTERING, align 4
  %115 = load i32, i32* @DMX_SECTION_FILTERING, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @DMX_MEMORY_BASED_FILTERING, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %120 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %121, i32 0, i32 0
  store i32 %118, i32* %122, align 8
  %123 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %124 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %125 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %125, i32 0, i32 5
  store %struct.em28xx_dvb* %123, %struct.em28xx_dvb** %126, align 8
  %127 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %128 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %128, i32 0, i32 0
  store i32 256, i32* %129, align 8
  %130 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %131 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %131, i32 0, i32 1
  store i32 256, i32* %132, align 4
  %133 = load i32, i32* @em28xx_start_feed, align 4
  %134 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %135 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %135, i32 0, i32 4
  store i32 %133, i32* %136, align 4
  %137 = load i32, i32* @em28xx_stop_feed, align 4
  %138 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %139 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %139, i32 0, i32 3
  store i32 %137, i32* %140, align 8
  %141 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %142 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %141, i32 0, i32 2
  %143 = call i32 @dvb_dmx_init(%struct.TYPE_31__* %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %113
  %147 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %148 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %147, i32 0, i32 3
  %149 = load %struct.TYPE_32__*, %struct.TYPE_32__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %149, i32 0, i32 0
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @dev_warn(i32* %150, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %151)
  br label %316

153:                                              ; preds = %113
  %154 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %155 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %155, i32 0, i32 0
  store i32 256, i32* %156, align 8
  %157 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %158 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %158, i32 0, i32 2
  %160 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %161 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %161, i32 0, i32 2
  store %struct.TYPE_33__* %159, %struct.TYPE_33__** %162, align 8
  %163 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %164 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %164, i32 0, i32 1
  store i64 0, i64* %165, align 8
  %166 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %167 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %166, i32 0, i32 3
  %168 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %169 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %168, i32 0, i32 0
  %170 = call i32 @dvb_dmxdev_init(%struct.TYPE_30__* %167, %struct.TYPE_28__* %169)
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %153
  %174 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %175 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %174, i32 0, i32 3
  %176 = load %struct.TYPE_32__*, %struct.TYPE_32__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %176, i32 0, i32 0
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @dev_warn(i32* %177, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %178)
  br label %312

180:                                              ; preds = %153
  %181 = load i32, i32* @DMX_FRONTEND_0, align 4
  %182 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %183 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %183, i32 0, i32 0
  store i32 %181, i32* %184, align 8
  %185 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %186 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %187, i32 0, i32 1
  %189 = load i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)*, i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)** %188, align 8
  %190 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %191 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %191, i32 0, i32 2
  %193 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %194 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %193, i32 0, i32 4
  %195 = call i32 %189(%struct.TYPE_33__* %192, %struct.TYPE_34__* %194)
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %180
  %199 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %200 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %199, i32 0, i32 3
  %201 = load %struct.TYPE_32__*, %struct.TYPE_32__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %201, i32 0, i32 0
  %203 = load i32, i32* %10, align 4
  %204 = call i32 @dev_warn(i32* %202, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %203)
  br label %308

205:                                              ; preds = %180
  %206 = load i32, i32* @DMX_MEMORY_FE, align 4
  %207 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %208 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %207, i32 0, i32 5
  %209 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %208, i32 0, i32 0
  store i32 %206, i32* %209, align 4
  %210 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %211 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %212, i32 0, i32 1
  %214 = load i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)*, i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)** %213, align 8
  %215 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %216 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %216, i32 0, i32 2
  %218 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %219 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %218, i32 0, i32 5
  %220 = call i32 %214(%struct.TYPE_33__* %217, %struct.TYPE_34__* %219)
  store i32 %220, i32* %10, align 4
  %221 = load i32, i32* %10, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %205
  %224 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %225 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %224, i32 0, i32 3
  %226 = load %struct.TYPE_32__*, %struct.TYPE_32__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %226, i32 0, i32 0
  %228 = load i32, i32* %10, align 4
  %229 = call i32 @dev_warn(i32* %227, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %228)
  br label %296

230:                                              ; preds = %205
  %231 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %232 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %233, i32 0, i32 2
  %235 = load i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)*, i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)** %234, align 8
  %236 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %237 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %237, i32 0, i32 2
  %239 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %240 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %239, i32 0, i32 4
  %241 = call i32 %235(%struct.TYPE_33__* %238, %struct.TYPE_34__* %240)
  store i32 %241, i32* %10, align 4
  %242 = load i32, i32* %10, align 4
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %251

244:                                              ; preds = %230
  %245 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %246 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %245, i32 0, i32 3
  %247 = load %struct.TYPE_32__*, %struct.TYPE_32__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %247, i32 0, i32 0
  %249 = load i32, i32* %10, align 4
  %250 = call i32 @dev_warn(i32* %248, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %249)
  br label %284

251:                                              ; preds = %230
  %252 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %253 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %252, i32 0, i32 0
  %254 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %255 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %254, i32 0, i32 6
  %256 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %257 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %257, i32 0, i32 2
  %259 = call i32 @dvb_net_init(%struct.TYPE_28__* %253, i32* %255, %struct.TYPE_33__* %258)
  %260 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %261 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %251
  %265 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %266 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @TUNER_ABSENT, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %264, %251
  store i32 1, i32* %11, align 4
  br label %271

271:                                              ; preds = %270, %264
  %272 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %273 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %272, i32 0, i32 0
  %274 = load i32, i32* %11, align 4
  %275 = call i32 @dvb_create_media_graph(%struct.TYPE_28__* %273, i32 %274)
  store i32 %275, i32* %10, align 4
  %276 = load i32, i32* %10, align 4
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %271
  br label %280

279:                                              ; preds = %271
  store i32 0, i32* %5, align 4
  br label %364

280:                                              ; preds = %278
  %281 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %282 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %281, i32 0, i32 6
  %283 = call i32 @dvb_net_release(i32* %282)
  br label %284

284:                                              ; preds = %280, %244
  %285 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %286 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %287, i32 0, i32 3
  %289 = load i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)*, i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)** %288, align 8
  %290 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %291 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %291, i32 0, i32 2
  %293 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %294 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %293, i32 0, i32 5
  %295 = call i32 %289(%struct.TYPE_33__* %292, %struct.TYPE_34__* %294)
  br label %296

296:                                              ; preds = %284, %223
  %297 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %298 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %297, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %299, i32 0, i32 3
  %301 = load i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)*, i32 (%struct.TYPE_33__*, %struct.TYPE_34__*)** %300, align 8
  %302 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %303 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %303, i32 0, i32 2
  %305 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %306 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %305, i32 0, i32 4
  %307 = call i32 %301(%struct.TYPE_33__* %304, %struct.TYPE_34__* %306)
  br label %308

308:                                              ; preds = %296, %198
  %309 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %310 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %309, i32 0, i32 3
  %311 = call i32 @dvb_dmxdev_release(%struct.TYPE_30__* %310)
  br label %312

312:                                              ; preds = %308, %173
  %313 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %314 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %313, i32 0, i32 2
  %315 = call i32 @dvb_dmx_release(%struct.TYPE_31__* %314)
  br label %316

316:                                              ; preds = %312, %146
  %317 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %318 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %317, i32 0, i32 1
  %319 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %319, i64 1
  %321 = load %struct.TYPE_27__*, %struct.TYPE_27__** %320, align 8
  %322 = icmp ne %struct.TYPE_27__* %321, null
  br i1 %322, label %323, label %330

323:                                              ; preds = %316
  %324 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %325 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %324, i32 0, i32 1
  %326 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %326, i64 1
  %328 = load %struct.TYPE_27__*, %struct.TYPE_27__** %327, align 8
  %329 = call i32 @dvb_unregister_frontend(%struct.TYPE_27__* %328)
  br label %330

330:                                              ; preds = %323, %316
  %331 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %332 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %331, i32 0, i32 1
  %333 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %333, i64 0
  %335 = load %struct.TYPE_27__*, %struct.TYPE_27__** %334, align 8
  %336 = call i32 @dvb_unregister_frontend(%struct.TYPE_27__* %335)
  br label %337

337:                                              ; preds = %330, %105
  %338 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %339 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %338, i32 0, i32 1
  %340 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %340, i64 1
  %342 = load %struct.TYPE_27__*, %struct.TYPE_27__** %341, align 8
  %343 = icmp ne %struct.TYPE_27__* %342, null
  br i1 %343, label %344, label %351

344:                                              ; preds = %337
  %345 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %346 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %345, i32 0, i32 1
  %347 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %347, i64 1
  %349 = load %struct.TYPE_27__*, %struct.TYPE_27__** %348, align 8
  %350 = call i32 @dvb_frontend_detach(%struct.TYPE_27__* %349)
  br label %351

351:                                              ; preds = %344, %337
  br label %352

352:                                              ; preds = %351, %80
  %353 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %354 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %353, i32 0, i32 1
  %355 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %355, i64 0
  %357 = load %struct.TYPE_27__*, %struct.TYPE_27__** %356, align 8
  %358 = call i32 @dvb_frontend_detach(%struct.TYPE_27__* %357)
  %359 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %6, align 8
  %360 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %359, i32 0, i32 0
  %361 = call i32 @dvb_unregister_adapter(%struct.TYPE_28__* %360)
  br label %362

362:                                              ; preds = %352, %28
  %363 = load i32, i32* %10, align 4
  store i32 %363, i32* %5, align 4
  br label %364

364:                                              ; preds = %362, %279
  %365 = load i32, i32* %5, align 4
  ret i32 %365
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dvb_register_adapter(%struct.TYPE_28__*, i32, %struct.module*, %struct.device*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @dvb_register_frontend(%struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local i32 @dvb_dmx_init(%struct.TYPE_31__*) #1

declare dso_local i32 @dvb_dmxdev_init(%struct.TYPE_30__*, %struct.TYPE_28__*) #1

declare dso_local i32 @dvb_net_init(%struct.TYPE_28__*, i32*, %struct.TYPE_33__*) #1

declare dso_local i32 @dvb_create_media_graph(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @dvb_net_release(i32*) #1

declare dso_local i32 @dvb_dmxdev_release(%struct.TYPE_30__*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_31__*) #1

declare dso_local i32 @dvb_unregister_frontend(%struct.TYPE_27__*) #1

declare dso_local i32 @dvb_frontend_detach(%struct.TYPE_27__*) #1

declare dso_local i32 @dvb_unregister_adapter(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
