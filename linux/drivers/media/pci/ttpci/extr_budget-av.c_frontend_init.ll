; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-av.c_frontend_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-av.c_frontend_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget_av = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.dvb_frontend*, i32, i32, %struct.saa7146_dev* }
%struct.dvb_frontend = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.saa7146_dev = type { %struct.TYPE_7__*, i8* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@SAA7146_GPIO_OUTLO = common dso_local global i32 0, align 4
@SAA7146_GPIO_OUTHI = common dso_local global i32 0, align 4
@stv0299_attach = common dso_local global i32 0, align 4
@cinergy_1200s_1894_0010_config = common dso_local global i32 0, align 4
@tua6100_attach = common dso_local global i32 0, align 4
@typhoon_config = common dso_local global i32 0, align 4
@philips_su1278_ty_ci_tuner_set_params = common dso_local global i8* null, align 8
@philips_sd1878_config = common dso_local global i32 0, align 4
@dvb_pll_attach = common dso_local global i32 0, align 4
@DVB_PLL_PHILIPS_SD1878_TDA8261 = common dso_local global i32 0, align 4
@stb0899_attach = common dso_local global i32 0, align 4
@knc1_dvbs2_config = common dso_local global i32 0, align 4
@tda8261_attach = common dso_local global i32 0, align 4
@sd1878c_config = common dso_local global i32 0, align 4
@cinergy_1200s_config = common dso_local global i32 0, align 4
@SAA7146_I2C_BUS_BIT_RATE_240 = common dso_local global i8* null, align 8
@tda10021_attach = common dso_local global i32 0, align 4
@philips_cu1216_config = common dso_local global i32 0, align 4
@philips_cu1216_config_altaddress = common dso_local global i32 0, align 4
@philips_cu1216_tuner_set_params = common dso_local global i8* null, align 8
@tda10023_attach = common dso_local global i32 0, align 4
@philips_cu1216_tda10023_config = common dso_local global i32 0, align 4
@tda10046_attach = common dso_local global i32 0, align 4
@philips_tu1216_config = common dso_local global i32 0, align 4
@philips_tu1216_tuner_init = common dso_local global i32 0, align 4
@philips_tu1216_tuner_set_params = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [78 x i8] c"A frontend driver was not found for device [%04x:%04x] subsystem [%04x:%04x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Frontend registration failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.budget_av*)* @frontend_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frontend_init(%struct.budget_av* %0) #0 {
  %2 = alloca %struct.budget_av*, align 8
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca %struct.dvb_frontend*, align 8
  store %struct.budget_av* %0, %struct.budget_av** %2, align 8
  %5 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %6 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %8 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  store %struct.saa7146_dev* %8, %struct.saa7146_dev** %3, align 8
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  %9 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %10 = load i32, i32* @SAA7146_GPIO_OUTLO, align 4
  %11 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %9, i32 0, i32 %10)
  %12 = call i32 @msleep(i32 100)
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %14 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %22 [
    i32 136, label %18
    i32 148, label %18
    i32 128, label %18
    i32 152, label %18
    i32 147, label %18
    i32 144, label %18
    i32 143, label %18
    i32 145, label %18
  ]

18:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %19 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %20 = load i32, i32* @SAA7146_GPIO_OUTHI, align 4
  %21 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %19, i32 3, i32 %20)
  br label %22

22:                                               ; preds = %1, %18
  %23 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %24 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %227 [
    i32 137, label %28
    i32 136, label %31
    i32 139, label %31
    i32 135, label %72
    i32 133, label %72
    i32 134, label %72
    i32 141, label %72
    i32 140, label %72
    i32 138, label %72
    i32 132, label %90
    i32 144, label %106
    i32 143, label %106
    i32 145, label %106
    i32 142, label %124
    i32 150, label %140
    i32 148, label %140
    i32 154, label %140
    i32 152, label %140
    i32 151, label %178
    i32 153, label %178
    i32 149, label %178
    i32 146, label %178
    i32 147, label %178
    i32 130, label %204
    i32 129, label %204
    i32 128, label %204
    i32 131, label %204
  ]

28:                                               ; preds = %22
  %29 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %30 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  br label %31

31:                                               ; preds = %22, %22, %28
  %32 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %33 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 6292
  br i1 %37, label %38, label %55

38:                                               ; preds = %31
  %39 = load i32, i32* @stv0299_attach, align 4
  %40 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %41 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = ptrtoint i32* %42 to i32
  %44 = call %struct.dvb_frontend* (i32, %struct.dvb_frontend*, i32, ...) @dvb_attach(i32 %39, %struct.dvb_frontend* bitcast (i32* @cinergy_1200s_1894_0010_config to %struct.dvb_frontend*), i32 %43)
  store %struct.dvb_frontend* %44, %struct.dvb_frontend** %4, align 8
  %45 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %46 = icmp ne %struct.dvb_frontend* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load i32, i32* @tua6100_attach, align 4
  %49 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %50 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %51 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = call %struct.dvb_frontend* (i32, %struct.dvb_frontend*, i32, ...) @dvb_attach(i32 %48, %struct.dvb_frontend* %49, i32 96, i32* %52)
  br label %54

54:                                               ; preds = %47, %38
  br label %71

55:                                               ; preds = %31
  %56 = load i32, i32* @stv0299_attach, align 4
  %57 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %58 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = ptrtoint i32* %59 to i32
  %61 = call %struct.dvb_frontend* (i32, %struct.dvb_frontend*, i32, ...) @dvb_attach(i32 %56, %struct.dvb_frontend* bitcast (i32* @typhoon_config to %struct.dvb_frontend*), i32 %60)
  store %struct.dvb_frontend* %61, %struct.dvb_frontend** %4, align 8
  %62 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %63 = icmp ne %struct.dvb_frontend* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load i8*, i8** @philips_su1278_ty_ci_tuner_set_params, align 8
  %66 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %67 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i8* %65, i8** %69, align 8
  br label %70

70:                                               ; preds = %64, %55
  br label %71

71:                                               ; preds = %70, %54
  br label %227

72:                                               ; preds = %22, %22, %22, %22, %22, %22
  %73 = load i32, i32* @stv0299_attach, align 4
  %74 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %75 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = ptrtoint i32* %76 to i32
  %78 = call %struct.dvb_frontend* (i32, %struct.dvb_frontend*, i32, ...) @dvb_attach(i32 %73, %struct.dvb_frontend* bitcast (i32* @philips_sd1878_config to %struct.dvb_frontend*), i32 %77)
  store %struct.dvb_frontend* %78, %struct.dvb_frontend** %4, align 8
  %79 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %80 = icmp ne %struct.dvb_frontend* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %72
  %82 = load i32, i32* @dvb_pll_attach, align 4
  %83 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %84 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %85 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load i32, i32* @DVB_PLL_PHILIPS_SD1878_TDA8261, align 4
  %88 = call %struct.dvb_frontend* (i32, %struct.dvb_frontend*, i32, ...) @dvb_attach(i32 %82, %struct.dvb_frontend* %83, i32 96, i32* %86, i32 %87)
  br label %89

89:                                               ; preds = %81, %72
  br label %227

90:                                               ; preds = %22
  %91 = load i32, i32* @stv0299_attach, align 4
  %92 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %93 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = ptrtoint i32* %94 to i32
  %96 = call %struct.dvb_frontend* (i32, %struct.dvb_frontend*, i32, ...) @dvb_attach(i32 %91, %struct.dvb_frontend* bitcast (i32* @typhoon_config to %struct.dvb_frontend*), i32 %95)
  store %struct.dvb_frontend* %96, %struct.dvb_frontend** %4, align 8
  %97 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %98 = icmp ne %struct.dvb_frontend* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %90
  %100 = load i8*, i8** @philips_su1278_ty_ci_tuner_set_params, align 8
  %101 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %102 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i8* %100, i8** %104, align 8
  br label %105

105:                                              ; preds = %99, %90
  br label %227

106:                                              ; preds = %22, %22, %22
  %107 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %108 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load i32, i32* @stb0899_attach, align 4
  %110 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %111 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  %113 = ptrtoint i32* %112 to i32
  %114 = call %struct.dvb_frontend* (i32, %struct.dvb_frontend*, i32, ...) @dvb_attach(i32 %109, %struct.dvb_frontend* bitcast (i32* @knc1_dvbs2_config to %struct.dvb_frontend*), i32 %113)
  store %struct.dvb_frontend* %114, %struct.dvb_frontend** %4, align 8
  %115 = icmp ne %struct.dvb_frontend* %114, null
  br i1 %115, label %116, label %123

116:                                              ; preds = %106
  %117 = load i32, i32* @tda8261_attach, align 4
  %118 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %119 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %120 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = call %struct.dvb_frontend* (i32, %struct.dvb_frontend*, i32, ...) @dvb_attach(i32 %117, %struct.dvb_frontend* %118, i32 ptrtoint (i32* @sd1878c_config to i32), i32* %121)
  br label %123

123:                                              ; preds = %116, %106
  br label %227

124:                                              ; preds = %22
  %125 = load i32, i32* @stv0299_attach, align 4
  %126 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %127 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = ptrtoint i32* %128 to i32
  %130 = call %struct.dvb_frontend* (i32, %struct.dvb_frontend*, i32, ...) @dvb_attach(i32 %125, %struct.dvb_frontend* bitcast (i32* @cinergy_1200s_config to %struct.dvb_frontend*), i32 %129)
  store %struct.dvb_frontend* %130, %struct.dvb_frontend** %4, align 8
  %131 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %132 = icmp ne %struct.dvb_frontend* %131, null
  br i1 %132, label %133, label %139

133:                                              ; preds = %124
  %134 = load i8*, i8** @philips_su1278_ty_ci_tuner_set_params, align 8
  %135 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %136 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  store i8* %134, i8** %138, align 8
  br label %139

139:                                              ; preds = %133, %124
  br label %227

140:                                              ; preds = %22, %22, %22, %22
  %141 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %142 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %141, i32 0, i32 0
  store i32 1, i32* %142, align 8
  %143 = load i8*, i8** @SAA7146_I2C_BUS_BIT_RATE_240, align 8
  %144 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %145 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 3
  %147 = load %struct.saa7146_dev*, %struct.saa7146_dev** %146, align 8
  %148 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %147, i32 0, i32 1
  store i8* %143, i8** %148, align 8
  %149 = load i32, i32* @tda10021_attach, align 4
  %150 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %151 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  %153 = ptrtoint i32* %152 to i32
  %154 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %155 = call i32 @read_pwm(%struct.budget_av* %154)
  %156 = call %struct.dvb_frontend* (i32, %struct.dvb_frontend*, i32, ...) @dvb_attach(i32 %149, %struct.dvb_frontend* bitcast (i32* @philips_cu1216_config to %struct.dvb_frontend*), i32 %153, i32 %155)
  store %struct.dvb_frontend* %156, %struct.dvb_frontend** %4, align 8
  %157 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %158 = icmp eq %struct.dvb_frontend* %157, null
  br i1 %158, label %159, label %168

159:                                              ; preds = %140
  %160 = load i32, i32* @tda10021_attach, align 4
  %161 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %162 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 2
  %164 = ptrtoint i32* %163 to i32
  %165 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %166 = call i32 @read_pwm(%struct.budget_av* %165)
  %167 = call %struct.dvb_frontend* (i32, %struct.dvb_frontend*, i32, ...) @dvb_attach(i32 %160, %struct.dvb_frontend* bitcast (i32* @philips_cu1216_config_altaddress to %struct.dvb_frontend*), i32 %164, i32 %166)
  store %struct.dvb_frontend* %167, %struct.dvb_frontend** %4, align 8
  br label %168

168:                                              ; preds = %159, %140
  %169 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %170 = icmp ne %struct.dvb_frontend* %169, null
  br i1 %170, label %171, label %177

171:                                              ; preds = %168
  %172 = load i8*, i8** @philips_cu1216_tuner_set_params, align 8
  %173 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %174 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  store i8* %172, i8** %176, align 8
  br label %177

177:                                              ; preds = %171, %168
  br label %227

178:                                              ; preds = %22, %22, %22, %22, %22
  %179 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %180 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %179, i32 0, i32 0
  store i32 1, i32* %180, align 8
  %181 = load i8*, i8** @SAA7146_I2C_BUS_BIT_RATE_240, align 8
  %182 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %183 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 3
  %185 = load %struct.saa7146_dev*, %struct.saa7146_dev** %184, align 8
  %186 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %185, i32 0, i32 1
  store i8* %181, i8** %186, align 8
  %187 = load i32, i32* @tda10023_attach, align 4
  %188 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %189 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 2
  %191 = ptrtoint i32* %190 to i32
  %192 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %193 = call i32 @read_pwm(%struct.budget_av* %192)
  %194 = call %struct.dvb_frontend* (i32, %struct.dvb_frontend*, i32, ...) @dvb_attach(i32 %187, %struct.dvb_frontend* bitcast (i32* @philips_cu1216_tda10023_config to %struct.dvb_frontend*), i32 %191, i32 %193)
  store %struct.dvb_frontend* %194, %struct.dvb_frontend** %4, align 8
  %195 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %196 = icmp ne %struct.dvb_frontend* %195, null
  br i1 %196, label %197, label %203

197:                                              ; preds = %178
  %198 = load i8*, i8** @philips_cu1216_tuner_set_params, align 8
  %199 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %200 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  store i8* %198, i8** %202, align 8
  br label %203

203:                                              ; preds = %197, %178
  br label %227

204:                                              ; preds = %22, %22, %22, %22
  %205 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %206 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %205, i32 0, i32 0
  store i32 1, i32* %206, align 8
  %207 = load i32, i32* @tda10046_attach, align 4
  %208 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %209 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 2
  %211 = ptrtoint i32* %210 to i32
  %212 = call %struct.dvb_frontend* (i32, %struct.dvb_frontend*, i32, ...) @dvb_attach(i32 %207, %struct.dvb_frontend* bitcast (i32* @philips_tu1216_config to %struct.dvb_frontend*), i32 %211)
  store %struct.dvb_frontend* %212, %struct.dvb_frontend** %4, align 8
  %213 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %214 = icmp ne %struct.dvb_frontend* %213, null
  br i1 %214, label %215, label %226

215:                                              ; preds = %204
  %216 = load i32, i32* @philips_tu1216_tuner_init, align 4
  %217 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %218 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 1
  store i32 %216, i32* %220, align 8
  %221 = load i8*, i8** @philips_tu1216_tuner_set_params, align 8
  %222 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %223 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  store i8* %221, i8** %225, align 8
  br label %226

226:                                              ; preds = %215, %204
  br label %227

227:                                              ; preds = %22, %226, %203, %177, %139, %123, %105, %89, %71
  %228 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %229 = icmp eq %struct.dvb_frontend* %228, null
  br i1 %229, label %230, label %252

230:                                              ; preds = %227
  %231 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %232 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %231, i32 0, i32 0
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %237 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %236, i32 0, i32 0
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %242 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %241, i32 0, i32 0
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %247 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %246, i32 0, i32 0
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %235, i32 %240, i32 %245, i32 %250)
  br label %276

252:                                              ; preds = %227
  %253 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %254 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %255 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  store %struct.dvb_frontend* %253, %struct.dvb_frontend** %256, align 8
  %257 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %258 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 1
  %260 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %261 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 0
  %263 = load %struct.dvb_frontend*, %struct.dvb_frontend** %262, align 8
  %264 = call i64 @dvb_register_frontend(i32* %259, %struct.dvb_frontend* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %276

266:                                              ; preds = %252
  %267 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %268 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %269 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 0
  %271 = load %struct.dvb_frontend*, %struct.dvb_frontend** %270, align 8
  %272 = call i32 @dvb_frontend_detach(%struct.dvb_frontend* %271)
  %273 = load %struct.budget_av*, %struct.budget_av** %2, align 8
  %274 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 0
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %275, align 8
  br label %276

276:                                              ; preds = %230, %266, %252
  ret void
}

declare dso_local i32 @saa7146_setgpio(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local %struct.dvb_frontend* @dvb_attach(i32, %struct.dvb_frontend*, i32, ...) #1

declare dso_local i32 @read_pwm(%struct.budget_av*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @dvb_register_frontend(i32*, %struct.dvb_frontend*) #1

declare dso_local i32 @dvb_frontend_detach(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
