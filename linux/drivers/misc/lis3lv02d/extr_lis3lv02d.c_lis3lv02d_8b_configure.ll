; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis3lv02d_8b_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis3lv02d_8b_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lis3lv02d = type { i32 (%struct.lis3lv02d*, i32, i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.lis3lv02d_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@CLICK_CFG = common dso_local global i32 0, align 4
@CLICK_TIMELIMIT = common dso_local global i32 0, align 4
@CLICK_LATENCY = common dso_local global i32 0, align 4
@CLICK_WINDOW = common dso_local global i32 0, align 4
@CLICK_THSZ = common dso_local global i32 0, align 4
@CLICK_THSY_X = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_X = common dso_local global i32 0, align 4
@BTN_Y = common dso_local global i32 0, align 4
@BTN_Z = common dso_local global i32 0, align 4
@FF_WU_CFG_1 = common dso_local global i32 0, align 4
@FF_WU_THS_1 = common dso_local global i32 0, align 4
@FF_WU_DURATION_1 = common dso_local global i32 0, align 4
@HP_FF_WU1 = common dso_local global i32 0, align 4
@FF_WU_CFG_2 = common dso_local global i32 0, align 4
@FF_WU_THS_2 = common dso_local global i32 0, align 4
@FF_WU_DURATION_2 = common dso_local global i32 0, align 4
@HP_FF_WU2 = common dso_local global i32 0, align 4
@CTRL_REG2 = common dso_local global i32 0, align 4
@lis302dl_interrupt_thread2_8b = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_TRIGGER_MASK = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"No second IRQ. Limited functionality\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lis3lv02d*, %struct.lis3lv02d_platform_data*)* @lis3lv02d_8b_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lis3lv02d_8b_configure(%struct.lis3lv02d* %0, %struct.lis3lv02d_platform_data* %1) #0 {
  %3 = alloca %struct.lis3lv02d*, align 8
  %4 = alloca %struct.lis3lv02d_platform_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.input_dev*, align 8
  store %struct.lis3lv02d* %0, %struct.lis3lv02d** %3, align 8
  store %struct.lis3lv02d_platform_data* %1, %struct.lis3lv02d_platform_data** %4, align 8
  %8 = load %struct.lis3lv02d_platform_data*, %struct.lis3lv02d_platform_data** %4, align 8
  %9 = getelementptr inbounds %struct.lis3lv02d_platform_data, %struct.lis3lv02d_platform_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.lis3lv02d_platform_data*, %struct.lis3lv02d_platform_data** %4, align 8
  %12 = getelementptr inbounds %struct.lis3lv02d_platform_data, %struct.lis3lv02d_platform_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %100

15:                                               ; preds = %2
  %16 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %17 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %16, i32 0, i32 0
  %18 = load i32 (%struct.lis3lv02d*, i32, i32)*, i32 (%struct.lis3lv02d*, i32, i32)** %17, align 8
  %19 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %20 = load i32, i32* @CLICK_CFG, align 4
  %21 = load %struct.lis3lv02d_platform_data*, %struct.lis3lv02d_platform_data** %4, align 8
  %22 = getelementptr inbounds %struct.lis3lv02d_platform_data, %struct.lis3lv02d_platform_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 %18(%struct.lis3lv02d* %19, i32 %20, i32 %23)
  %25 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %26 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %25, i32 0, i32 0
  %27 = load i32 (%struct.lis3lv02d*, i32, i32)*, i32 (%struct.lis3lv02d*, i32, i32)** %26, align 8
  %28 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %29 = load i32, i32* @CLICK_TIMELIMIT, align 4
  %30 = load %struct.lis3lv02d_platform_data*, %struct.lis3lv02d_platform_data** %4, align 8
  %31 = getelementptr inbounds %struct.lis3lv02d_platform_data, %struct.lis3lv02d_platform_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %27(%struct.lis3lv02d* %28, i32 %29, i32 %32)
  %34 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %35 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %34, i32 0, i32 0
  %36 = load i32 (%struct.lis3lv02d*, i32, i32)*, i32 (%struct.lis3lv02d*, i32, i32)** %35, align 8
  %37 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %38 = load i32, i32* @CLICK_LATENCY, align 4
  %39 = load %struct.lis3lv02d_platform_data*, %struct.lis3lv02d_platform_data** %4, align 8
  %40 = getelementptr inbounds %struct.lis3lv02d_platform_data, %struct.lis3lv02d_platform_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 %36(%struct.lis3lv02d* %37, i32 %38, i32 %41)
  %43 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %44 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %43, i32 0, i32 0
  %45 = load i32 (%struct.lis3lv02d*, i32, i32)*, i32 (%struct.lis3lv02d*, i32, i32)** %44, align 8
  %46 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %47 = load i32, i32* @CLICK_WINDOW, align 4
  %48 = load %struct.lis3lv02d_platform_data*, %struct.lis3lv02d_platform_data** %4, align 8
  %49 = getelementptr inbounds %struct.lis3lv02d_platform_data, %struct.lis3lv02d_platform_data* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %45(%struct.lis3lv02d* %46, i32 %47, i32 %50)
  %52 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %53 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %52, i32 0, i32 0
  %54 = load i32 (%struct.lis3lv02d*, i32, i32)*, i32 (%struct.lis3lv02d*, i32, i32)** %53, align 8
  %55 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %56 = load i32, i32* @CLICK_THSZ, align 4
  %57 = load %struct.lis3lv02d_platform_data*, %struct.lis3lv02d_platform_data** %4, align 8
  %58 = getelementptr inbounds %struct.lis3lv02d_platform_data, %struct.lis3lv02d_platform_data* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 15
  %61 = call i32 %54(%struct.lis3lv02d* %55, i32 %56, i32 %60)
  %62 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %63 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %62, i32 0, i32 0
  %64 = load i32 (%struct.lis3lv02d*, i32, i32)*, i32 (%struct.lis3lv02d*, i32, i32)** %63, align 8
  %65 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %66 = load i32, i32* @CLICK_THSY_X, align 4
  %67 = load %struct.lis3lv02d_platform_data*, %struct.lis3lv02d_platform_data** %4, align 8
  %68 = getelementptr inbounds %struct.lis3lv02d_platform_data, %struct.lis3lv02d_platform_data* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 15
  %71 = load %struct.lis3lv02d_platform_data*, %struct.lis3lv02d_platform_data** %4, align 8
  %72 = getelementptr inbounds %struct.lis3lv02d_platform_data, %struct.lis3lv02d_platform_data* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 4
  %75 = or i32 %70, %74
  %76 = call i32 %64(%struct.lis3lv02d* %65, i32 %66, i32 %75)
  %77 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %78 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = icmp ne %struct.TYPE_2__* %79, null
  br i1 %80, label %81, label %99

81:                                               ; preds = %15
  %82 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %83 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load %struct.input_dev*, %struct.input_dev** %85, align 8
  store %struct.input_dev* %86, %struct.input_dev** %7, align 8
  %87 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %88 = load i32, i32* @EV_KEY, align 4
  %89 = load i32, i32* @BTN_X, align 4
  %90 = call i32 @input_set_capability(%struct.input_dev* %87, i32 %88, i32 %89)
  %91 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %92 = load i32, i32* @EV_KEY, align 4
  %93 = load i32, i32* @BTN_Y, align 4
  %94 = call i32 @input_set_capability(%struct.input_dev* %91, i32 %92, i32 %93)
  %95 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %96 = load i32, i32* @EV_KEY, align 4
  %97 = load i32, i32* @BTN_Z, align 4
  %98 = call i32 @input_set_capability(%struct.input_dev* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %81, %15
  br label %100

100:                                              ; preds = %99, %2
  %101 = load %struct.lis3lv02d_platform_data*, %struct.lis3lv02d_platform_data** %4, align 8
  %102 = getelementptr inbounds %struct.lis3lv02d_platform_data, %struct.lis3lv02d_platform_data* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %138

105:                                              ; preds = %100
  %106 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %107 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %106, i32 0, i32 0
  %108 = load i32 (%struct.lis3lv02d*, i32, i32)*, i32 (%struct.lis3lv02d*, i32, i32)** %107, align 8
  %109 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %110 = load i32, i32* @FF_WU_CFG_1, align 4
  %111 = load %struct.lis3lv02d_platform_data*, %struct.lis3lv02d_platform_data** %4, align 8
  %112 = getelementptr inbounds %struct.lis3lv02d_platform_data, %struct.lis3lv02d_platform_data* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 8
  %114 = call i32 %108(%struct.lis3lv02d* %109, i32 %110, i32 %113)
  %115 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %116 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %115, i32 0, i32 0
  %117 = load i32 (%struct.lis3lv02d*, i32, i32)*, i32 (%struct.lis3lv02d*, i32, i32)** %116, align 8
  %118 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %119 = load i32, i32* @FF_WU_THS_1, align 4
  %120 = load %struct.lis3lv02d_platform_data*, %struct.lis3lv02d_platform_data** %4, align 8
  %121 = getelementptr inbounds %struct.lis3lv02d_platform_data, %struct.lis3lv02d_platform_data* %120, i32 0, i32 9
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 127
  %124 = call i32 %117(%struct.lis3lv02d* %118, i32 %119, i32 %123)
  %125 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %126 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %125, i32 0, i32 0
  %127 = load i32 (%struct.lis3lv02d*, i32, i32)*, i32 (%struct.lis3lv02d*, i32, i32)** %126, align 8
  %128 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %129 = load i32, i32* @FF_WU_DURATION_1, align 4
  %130 = load %struct.lis3lv02d_platform_data*, %struct.lis3lv02d_platform_data** %4, align 8
  %131 = getelementptr inbounds %struct.lis3lv02d_platform_data, %struct.lis3lv02d_platform_data* %130, i32 0, i32 10
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  %134 = call i32 %127(%struct.lis3lv02d* %128, i32 %129, i32 %133)
  %135 = load i32, i32* @HP_FF_WU1, align 4
  %136 = load i32, i32* %6, align 4
  %137 = xor i32 %136, %135
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %105, %100
  %139 = load %struct.lis3lv02d_platform_data*, %struct.lis3lv02d_platform_data** %4, align 8
  %140 = getelementptr inbounds %struct.lis3lv02d_platform_data, %struct.lis3lv02d_platform_data* %139, i32 0, i32 11
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %176

143:                                              ; preds = %138
  %144 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %145 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %144, i32 0, i32 0
  %146 = load i32 (%struct.lis3lv02d*, i32, i32)*, i32 (%struct.lis3lv02d*, i32, i32)** %145, align 8
  %147 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %148 = load i32, i32* @FF_WU_CFG_2, align 4
  %149 = load %struct.lis3lv02d_platform_data*, %struct.lis3lv02d_platform_data** %4, align 8
  %150 = getelementptr inbounds %struct.lis3lv02d_platform_data, %struct.lis3lv02d_platform_data* %149, i32 0, i32 11
  %151 = load i32, i32* %150, align 4
  %152 = call i32 %146(%struct.lis3lv02d* %147, i32 %148, i32 %151)
  %153 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %154 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %153, i32 0, i32 0
  %155 = load i32 (%struct.lis3lv02d*, i32, i32)*, i32 (%struct.lis3lv02d*, i32, i32)** %154, align 8
  %156 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %157 = load i32, i32* @FF_WU_THS_2, align 4
  %158 = load %struct.lis3lv02d_platform_data*, %struct.lis3lv02d_platform_data** %4, align 8
  %159 = getelementptr inbounds %struct.lis3lv02d_platform_data, %struct.lis3lv02d_platform_data* %158, i32 0, i32 12
  %160 = load i32, i32* %159, align 8
  %161 = and i32 %160, 127
  %162 = call i32 %155(%struct.lis3lv02d* %156, i32 %157, i32 %161)
  %163 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %164 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %163, i32 0, i32 0
  %165 = load i32 (%struct.lis3lv02d*, i32, i32)*, i32 (%struct.lis3lv02d*, i32, i32)** %164, align 8
  %166 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %167 = load i32, i32* @FF_WU_DURATION_2, align 4
  %168 = load %struct.lis3lv02d_platform_data*, %struct.lis3lv02d_platform_data** %4, align 8
  %169 = getelementptr inbounds %struct.lis3lv02d_platform_data, %struct.lis3lv02d_platform_data* %168, i32 0, i32 13
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  %172 = call i32 %165(%struct.lis3lv02d* %166, i32 %167, i32 %171)
  %173 = load i32, i32* @HP_FF_WU2, align 4
  %174 = load i32, i32* %6, align 4
  %175 = xor i32 %174, %173
  store i32 %175, i32* %6, align 4
  br label %176

176:                                              ; preds = %143, %138
  %177 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %178 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %177, i32 0, i32 0
  %179 = load i32 (%struct.lis3lv02d*, i32, i32)*, i32 (%struct.lis3lv02d*, i32, i32)** %178, align 8
  %180 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %181 = load i32, i32* @CTRL_REG2, align 4
  %182 = load i32, i32* %6, align 4
  %183 = call i32 %179(%struct.lis3lv02d* %180, i32 %181, i32 %182)
  %184 = load %struct.lis3lv02d_platform_data*, %struct.lis3lv02d_platform_data** %4, align 8
  %185 = getelementptr inbounds %struct.lis3lv02d_platform_data, %struct.lis3lv02d_platform_data* %184, i32 0, i32 15
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %210

188:                                              ; preds = %176
  %189 = load %struct.lis3lv02d_platform_data*, %struct.lis3lv02d_platform_data** %4, align 8
  %190 = getelementptr inbounds %struct.lis3lv02d_platform_data, %struct.lis3lv02d_platform_data* %189, i32 0, i32 15
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* @lis302dl_interrupt_thread2_8b, align 4
  %193 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %194 = load i32, i32* @IRQF_ONESHOT, align 4
  %195 = or i32 %193, %194
  %196 = load %struct.lis3lv02d_platform_data*, %struct.lis3lv02d_platform_data** %4, align 8
  %197 = getelementptr inbounds %struct.lis3lv02d_platform_data, %struct.lis3lv02d_platform_data* %196, i32 0, i32 14
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @IRQF_TRIGGER_MASK, align 4
  %200 = and i32 %198, %199
  %201 = or i32 %195, %200
  %202 = load i32, i32* @DRIVER_NAME, align 4
  %203 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %204 = call i32 @request_threaded_irq(i64 %191, i32* null, i32 %192, i32 %201, i32 %202, %struct.lis3lv02d* %203)
  store i32 %204, i32* %5, align 4
  %205 = load i32, i32* %5, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %188
  %208 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %209

209:                                              ; preds = %207, %188
  br label %210

210:                                              ; preds = %209, %176
  ret void
}

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @request_threaded_irq(i64, i32*, i32, i32, i32, %struct.lis3lv02d*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
