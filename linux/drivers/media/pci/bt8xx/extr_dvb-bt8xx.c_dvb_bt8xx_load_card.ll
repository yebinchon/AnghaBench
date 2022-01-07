; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dvb-bt8xx.c_dvb_bt8xx_load_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dvb-bt8xx.c_dvb_bt8xx_load_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_bt8xx_card = type { %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_26__, %struct.TYPE_30__, %struct.TYPE_30__, %struct.TYPE_28__*, i32, i32, i32 }
%struct.TYPE_25__ = type { %struct.dvb_bt8xx_card* }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_29__, i32*, i32, i32, %struct.dvb_bt8xx_card* }
%struct.TYPE_29__ = type { i32, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*)*, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*)*, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*)*, i32 (%struct.TYPE_29__*)* }
%struct.TYPE_26__ = type { i32, i64, %struct.TYPE_29__* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"dvb_register_adapter failed (errno = %d)\0A\00", align 1
@DMX_TS_FILTERING = common dso_local global i32 0, align 4
@DMX_SECTION_FILTERING = common dso_local global i32 0, align 4
@DMX_MEMORY_BASED_FILTERING = common dso_local global i32 0, align 4
@dvb_bt8xx_start_feed = common dso_local global i32 0, align 4
@dvb_bt8xx_stop_feed = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"dvb_dmx_init failed (errno = %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"dvb_dmxdev_init failed (errno = %d)\0A\00", align 1
@DMX_FRONTEND_0 = common dso_local global i32 0, align 4
@DMX_MEMORY_FE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"dvb_net_init failed (errno = %d)\0A\00", align 1
@dvb_bt8xx_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_bt8xx_card*, i32)* @dvb_bt8xx_load_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_bt8xx_load_card(%struct.dvb_bt8xx_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_bt8xx_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dvb_bt8xx_card* %0, %struct.dvb_bt8xx_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %8 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %7, i32 0, i32 0
  %9 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @THIS_MODULE, align 4
  %13 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %13, i32 0, i32 5
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %19 = load i32, i32* @adapter_nr, align 4
  %20 = call i32 @dvb_register_adapter(%struct.TYPE_25__* %8, i32 %11, i32 %12, i32* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %235

27:                                               ; preds = %2
  %28 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %29 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %30 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  store %struct.dvb_bt8xx_card* %28, %struct.dvb_bt8xx_card** %31, align 8
  %32 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %33 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %36 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %35, i32 0, i32 5
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 4
  %39 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %40 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %39, i32 0, i32 1
  %41 = call i32 @memset(%struct.TYPE_24__* %40, i32 0, i32 4)
  %42 = load i32, i32* @DMX_TS_FILTERING, align 4
  %43 = load i32, i32* @DMX_SECTION_FILTERING, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @DMX_MEMORY_BASED_FILTERING, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %48 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 8
  %51 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %52 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %53 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 6
  store %struct.dvb_bt8xx_card* %51, %struct.dvb_bt8xx_card** %54, align 8
  %55 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %56 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 0
  store i32 256, i32* %57, align 8
  %58 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %59 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 1
  store i32 256, i32* %60, align 4
  %61 = load i32, i32* @dvb_bt8xx_start_feed, align 4
  %62 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %63 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 5
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @dvb_bt8xx_stop_feed, align 4
  %66 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %67 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 4
  store i32 %65, i32* %68, align 8
  %69 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %70 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 3
  store i32* null, i32** %71, align 8
  %72 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %73 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %72, i32 0, i32 1
  %74 = call i32 @dvb_dmx_init(%struct.TYPE_24__* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %27
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %230

80:                                               ; preds = %27
  %81 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %82 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 0
  store i32 256, i32* %83, align 8
  %84 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %85 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 2
  %87 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %88 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 2
  store %struct.TYPE_29__* %86, %struct.TYPE_29__** %89, align 8
  %90 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %91 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %94 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %93, i32 0, i32 2
  %95 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %96 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %95, i32 0, i32 0
  %97 = call i32 @dvb_dmxdev_init(%struct.TYPE_26__* %94, %struct.TYPE_25__* %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %80
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %226

103:                                              ; preds = %80
  %104 = load i32, i32* @DMX_FRONTEND_0, align 4
  %105 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %106 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %109 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 1
  %112 = load i32 (%struct.TYPE_29__*, %struct.TYPE_30__*)*, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*)** %111, align 8
  %113 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %114 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 2
  %116 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %117 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %116, i32 0, i32 3
  %118 = call i32 %112(%struct.TYPE_29__* %115, %struct.TYPE_30__* %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %103
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  br label %222

124:                                              ; preds = %103
  %125 = load i32, i32* @DMX_MEMORY_FE, align 4
  %126 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %127 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 4
  %129 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %130 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %131, i32 0, i32 1
  %133 = load i32 (%struct.TYPE_29__*, %struct.TYPE_30__*)*, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*)** %132, align 8
  %134 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %135 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 2
  %137 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %138 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %137, i32 0, i32 4
  %139 = call i32 %133(%struct.TYPE_29__* %136, %struct.TYPE_30__* %138)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %124
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  br label %210

145:                                              ; preds = %124
  %146 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %147 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %148, i32 0, i32 2
  %150 = load i32 (%struct.TYPE_29__*, %struct.TYPE_30__*)*, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*)** %149, align 8
  %151 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %152 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 2
  %154 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %155 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %154, i32 0, i32 3
  %156 = call i32 %150(%struct.TYPE_29__* %153, %struct.TYPE_30__* %155)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %145
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %160)
  br label %198

162:                                              ; preds = %145
  %163 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %164 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %163, i32 0, i32 0
  %165 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %166 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %165, i32 0, i32 6
  %167 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %168 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 2
  %170 = call i32 @dvb_net_init(%struct.TYPE_25__* %164, i32* %166, %struct.TYPE_29__* %169)
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* %6, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %162
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %174)
  br label %188

176:                                              ; preds = %162
  %177 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %178 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %177, i32 0, i32 5
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 0
  %181 = load i32, i32* @dvb_bt8xx_task, align 4
  %182 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %183 = ptrtoint %struct.dvb_bt8xx_card* %182 to i64
  %184 = call i32 @tasklet_init(i32* %180, i32 %181, i64 %183)
  %185 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %186 = load i32, i32* %5, align 4
  %187 = call i32 @frontend_init(%struct.dvb_bt8xx_card* %185, i32 %186)
  store i32 0, i32* %3, align 4
  br label %235

188:                                              ; preds = %173
  %189 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %190 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %191, i32 0, i32 4
  %193 = load i32 (%struct.TYPE_29__*)*, i32 (%struct.TYPE_29__*)** %192, align 8
  %194 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %195 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 2
  %197 = call i32 %193(%struct.TYPE_29__* %196)
  br label %198

198:                                              ; preds = %188, %159
  %199 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %200 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %201, i32 0, i32 3
  %203 = load i32 (%struct.TYPE_29__*, %struct.TYPE_30__*)*, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*)** %202, align 8
  %204 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %205 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 2
  %207 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %208 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %207, i32 0, i32 4
  %209 = call i32 %203(%struct.TYPE_29__* %206, %struct.TYPE_30__* %208)
  br label %210

210:                                              ; preds = %198, %142
  %211 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %212 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %213, i32 0, i32 3
  %215 = load i32 (%struct.TYPE_29__*, %struct.TYPE_30__*)*, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*)** %214, align 8
  %216 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %217 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 2
  %219 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %220 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %219, i32 0, i32 3
  %221 = call i32 %215(%struct.TYPE_29__* %218, %struct.TYPE_30__* %220)
  br label %222

222:                                              ; preds = %210, %121
  %223 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %224 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %223, i32 0, i32 2
  %225 = call i32 @dvb_dmxdev_release(%struct.TYPE_26__* %224)
  br label %226

226:                                              ; preds = %222, %100
  %227 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %228 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %227, i32 0, i32 1
  %229 = call i32 @dvb_dmx_release(%struct.TYPE_24__* %228)
  br label %230

230:                                              ; preds = %226, %77
  %231 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %4, align 8
  %232 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %231, i32 0, i32 0
  %233 = call i32 @dvb_unregister_adapter(%struct.TYPE_25__* %232)
  %234 = load i32, i32* %6, align 4
  store i32 %234, i32* %3, align 4
  br label %235

235:                                              ; preds = %230, %176, %23
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local i32 @dvb_register_adapter(%struct.TYPE_25__*, i32, i32, i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @dvb_dmx_init(%struct.TYPE_24__*) #1

declare dso_local i32 @dvb_dmxdev_init(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local i32 @dvb_net_init(%struct.TYPE_25__*, i32*, %struct.TYPE_29__*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @frontend_init(%struct.dvb_bt8xx_card*, i32) #1

declare dso_local i32 @dvb_dmxdev_release(%struct.TYPE_26__*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_24__*) #1

declare dso_local i32 @dvb_unregister_adapter(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
