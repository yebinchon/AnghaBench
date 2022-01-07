; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-common.c_tda18271_init_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-common.c_tda18271_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"initializing registers for device @ %d-%04x\0A\00", align 1
@I2C_LOCK_SEGMENT = common dso_local global i32 0, align 4
@R_ID = common dso_local global i64 0, align 8
@R_TM = common dso_local global i64 0, align 8
@R_PL = common dso_local global i64 0, align 8
@R_EP1 = common dso_local global i64 0, align 8
@R_EP2 = common dso_local global i64 0, align 8
@R_EP3 = common dso_local global i64 0, align 8
@R_EP4 = common dso_local global i64 0, align 8
@R_EP5 = common dso_local global i64 0, align 8
@R_CPD = common dso_local global i64 0, align 8
@R_CD1 = common dso_local global i64 0, align 8
@R_CD2 = common dso_local global i64 0, align 8
@R_CD3 = common dso_local global i64 0, align 8
@R_MPD = common dso_local global i64 0, align 8
@R_MD1 = common dso_local global i64 0, align 8
@R_MD2 = common dso_local global i64 0, align 8
@R_MD3 = common dso_local global i64 0, align 8
@R_EB1 = common dso_local global i64 0, align 8
@R_EB2 = common dso_local global i64 0, align 8
@R_EB3 = common dso_local global i64 0, align 8
@R_EB4 = common dso_local global i64 0, align 8
@R_EB5 = common dso_local global i64 0, align 8
@R_EB6 = common dso_local global i64 0, align 8
@R_EB7 = common dso_local global i64 0, align 8
@R_EB8 = common dso_local global i64 0, align 8
@R_EB9 = common dso_local global i64 0, align 8
@R_EB10 = common dso_local global i64 0, align 8
@R_EB11 = common dso_local global i64 0, align 8
@R_EB12 = common dso_local global i64 0, align 8
@R_EB13 = common dso_local global i64 0, align 8
@R_EB14 = common dso_local global i64 0, align 8
@R_EB15 = common dso_local global i64 0, align 8
@R_EB16 = common dso_local global i64 0, align 8
@R_EB17 = common dso_local global i64 0, align 8
@R_EB18 = common dso_local global i64 0, align 8
@R_EB19 = common dso_local global i64 0, align 8
@R_EB20 = common dso_local global i64 0, align 8
@R_EB21 = common dso_local global i64 0, align 8
@R_EB22 = common dso_local global i64 0, align 8
@R_EB23 = common dso_local global i64 0, align 8
@TDA18271_NUM_REGS = common dso_local global i32 0, align 4
@TDA18271_MAIN_PLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tda18271_init_regs(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tda18271_priv*, align 8
  %4 = alloca i8*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.tda18271_priv*, %struct.tda18271_priv** %6, align 8
  store %struct.tda18271_priv* %7, %struct.tda18271_priv** %3, align 8
  %8 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %9 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %12 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @i2c_adapter_id(i32 %14)
  %16 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %17 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @tda_dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19)
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %22 = call i32 @tda18271_i2c_gate_ctrl(%struct.dvb_frontend* %21, i32 1)
  %23 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %24 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @I2C_LOCK_SEGMENT, align 4
  %28 = call i32 @i2c_lock_bus(i32 %26, i32 %27)
  %29 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %30 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %40 [
    i32 129, label %32
    i32 128, label %36
  ]

32:                                               ; preds = %1
  %33 = load i8*, i8** %4, align 8
  %34 = load i64, i64* @R_ID, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8 -125, i8* %35, align 1
  br label %40

36:                                               ; preds = %1
  %37 = load i8*, i8** %4, align 8
  %38 = load i64, i64* @R_ID, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8 -124, i8* %39, align 1
  br label %40

40:                                               ; preds = %1, %36, %32
  %41 = load i8*, i8** %4, align 8
  %42 = load i64, i64* @R_TM, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8 8, i8* %43, align 1
  %44 = load i8*, i8** %4, align 8
  %45 = load i64, i64* @R_PL, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8 -128, i8* %46, align 1
  %47 = load i8*, i8** %4, align 8
  %48 = load i64, i64* @R_EP1, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8 -58, i8* %49, align 1
  %50 = load i8*, i8** %4, align 8
  %51 = load i64, i64* @R_EP2, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8 -33, i8* %52, align 1
  %53 = load i8*, i8** %4, align 8
  %54 = load i64, i64* @R_EP3, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 22, i8* %55, align 1
  %56 = load i8*, i8** %4, align 8
  %57 = load i64, i64* @R_EP4, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8 96, i8* %58, align 1
  %59 = load i8*, i8** %4, align 8
  %60 = load i64, i64* @R_EP5, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8 -128, i8* %61, align 1
  %62 = load i8*, i8** %4, align 8
  %63 = load i64, i64* @R_CPD, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8 -128, i8* %64, align 1
  %65 = load i8*, i8** %4, align 8
  %66 = load i64, i64* @R_CD1, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** %4, align 8
  %69 = load i64, i64* @R_CD2, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8 0, i8* %70, align 1
  %71 = load i8*, i8** %4, align 8
  %72 = load i64, i64* @R_CD3, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8 0, i8* %73, align 1
  %74 = load i8*, i8** %4, align 8
  %75 = load i64, i64* @R_MPD, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8 0, i8* %76, align 1
  %77 = load i8*, i8** %4, align 8
  %78 = load i64, i64* @R_MD1, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8 0, i8* %79, align 1
  %80 = load i8*, i8** %4, align 8
  %81 = load i64, i64* @R_MD2, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8 0, i8* %82, align 1
  %83 = load i8*, i8** %4, align 8
  %84 = load i64, i64* @R_MD3, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8 0, i8* %85, align 1
  %86 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %87 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  switch i32 %88, label %97 [
    i32 129, label %89
    i32 128, label %93
  ]

89:                                               ; preds = %40
  %90 = load i8*, i8** %4, align 8
  %91 = load i64, i64* @R_EB1, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8 -1, i8* %92, align 1
  br label %97

93:                                               ; preds = %40
  %94 = load i8*, i8** %4, align 8
  %95 = load i64, i64* @R_EB1, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8 -4, i8* %96, align 1
  br label %97

97:                                               ; preds = %40, %93, %89
  %98 = load i8*, i8** %4, align 8
  %99 = load i64, i64* @R_EB2, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8 1, i8* %100, align 1
  %101 = load i8*, i8** %4, align 8
  %102 = load i64, i64* @R_EB3, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8 -124, i8* %103, align 1
  %104 = load i8*, i8** %4, align 8
  %105 = load i64, i64* @R_EB4, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8 65, i8* %106, align 1
  %107 = load i8*, i8** %4, align 8
  %108 = load i64, i64* @R_EB5, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8 1, i8* %109, align 1
  %110 = load i8*, i8** %4, align 8
  %111 = load i64, i64* @R_EB6, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8 -124, i8* %112, align 1
  %113 = load i8*, i8** %4, align 8
  %114 = load i64, i64* @R_EB7, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8 64, i8* %115, align 1
  %116 = load i8*, i8** %4, align 8
  %117 = load i64, i64* @R_EB8, align 8
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8 7, i8* %118, align 1
  %119 = load i8*, i8** %4, align 8
  %120 = load i64, i64* @R_EB9, align 8
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  store i8 0, i8* %121, align 1
  %122 = load i8*, i8** %4, align 8
  %123 = load i64, i64* @R_EB10, align 8
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8 0, i8* %124, align 1
  %125 = load i8*, i8** %4, align 8
  %126 = load i64, i64* @R_EB11, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  store i8 -106, i8* %127, align 1
  %128 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %129 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  switch i32 %130, label %139 [
    i32 129, label %131
    i32 128, label %135
  ]

131:                                              ; preds = %97
  %132 = load i8*, i8** %4, align 8
  %133 = load i64, i64* @R_EB12, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8 15, i8* %134, align 1
  br label %139

135:                                              ; preds = %97
  %136 = load i8*, i8** %4, align 8
  %137 = load i64, i64* @R_EB12, align 8
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8 51, i8* %138, align 1
  br label %139

139:                                              ; preds = %97, %135, %131
  %140 = load i8*, i8** %4, align 8
  %141 = load i64, i64* @R_EB13, align 8
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8 -63, i8* %142, align 1
  %143 = load i8*, i8** %4, align 8
  %144 = load i64, i64* @R_EB14, align 8
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  store i8 0, i8* %145, align 1
  %146 = load i8*, i8** %4, align 8
  %147 = load i64, i64* @R_EB15, align 8
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8 -113, i8* %148, align 1
  %149 = load i8*, i8** %4, align 8
  %150 = load i64, i64* @R_EB16, align 8
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  store i8 0, i8* %151, align 1
  %152 = load i8*, i8** %4, align 8
  %153 = load i64, i64* @R_EB17, align 8
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  store i8 0, i8* %154, align 1
  %155 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %156 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  switch i32 %157, label %166 [
    i32 129, label %158
    i32 128, label %162
  ]

158:                                              ; preds = %139
  %159 = load i8*, i8** %4, align 8
  %160 = load i64, i64* @R_EB18, align 8
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  store i8 0, i8* %161, align 1
  br label %166

162:                                              ; preds = %139
  %163 = load i8*, i8** %4, align 8
  %164 = load i64, i64* @R_EB18, align 8
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  store i8 -116, i8* %165, align 1
  br label %166

166:                                              ; preds = %139, %162, %158
  %167 = load i8*, i8** %4, align 8
  %168 = load i64, i64* @R_EB19, align 8
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  store i8 0, i8* %169, align 1
  %170 = load i8*, i8** %4, align 8
  %171 = load i64, i64* @R_EB20, align 8
  %172 = getelementptr inbounds i8, i8* %170, i64 %171
  store i8 32, i8* %172, align 1
  %173 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %174 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  switch i32 %175, label %184 [
    i32 129, label %176
    i32 128, label %180
  ]

176:                                              ; preds = %166
  %177 = load i8*, i8** %4, align 8
  %178 = load i64, i64* @R_EB21, align 8
  %179 = getelementptr inbounds i8, i8* %177, i64 %178
  store i8 51, i8* %179, align 1
  br label %184

180:                                              ; preds = %166
  %181 = load i8*, i8** %4, align 8
  %182 = load i64, i64* @R_EB21, align 8
  %183 = getelementptr inbounds i8, i8* %181, i64 %182
  store i8 -77, i8* %183, align 1
  br label %184

184:                                              ; preds = %166, %180, %176
  %185 = load i8*, i8** %4, align 8
  %186 = load i64, i64* @R_EB22, align 8
  %187 = getelementptr inbounds i8, i8* %185, i64 %186
  store i8 72, i8* %187, align 1
  %188 = load i8*, i8** %4, align 8
  %189 = load i64, i64* @R_EB23, align 8
  %190 = getelementptr inbounds i8, i8* %188, i64 %189
  store i8 -80, i8* %190, align 1
  %191 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %192 = load i32, i32* @TDA18271_NUM_REGS, align 4
  %193 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %191, i64 0, i32 %192, i32 0)
  %194 = load i8*, i8** %4, align 8
  %195 = load i64, i64* @R_EB17, align 8
  %196 = getelementptr inbounds i8, i8* %194, i64 %195
  store i8 0, i8* %196, align 1
  %197 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %198 = load i64, i64* @R_EB17, align 8
  %199 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %197, i64 %198, i32 1, i32 0)
  %200 = load i8*, i8** %4, align 8
  %201 = load i64, i64* @R_EB17, align 8
  %202 = getelementptr inbounds i8, i8* %200, i64 %201
  store i8 3, i8* %202, align 1
  %203 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %204 = load i64, i64* @R_EB17, align 8
  %205 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %203, i64 %204, i32 1, i32 0)
  %206 = load i8*, i8** %4, align 8
  %207 = load i64, i64* @R_EB17, align 8
  %208 = getelementptr inbounds i8, i8* %206, i64 %207
  store i8 67, i8* %208, align 1
  %209 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %210 = load i64, i64* @R_EB17, align 8
  %211 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %209, i64 %210, i32 1, i32 0)
  %212 = load i8*, i8** %4, align 8
  %213 = load i64, i64* @R_EB17, align 8
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  store i8 76, i8* %214, align 1
  %215 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %216 = load i64, i64* @R_EB17, align 8
  %217 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %215, i64 %216, i32 1, i32 0)
  %218 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %219 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %220, 129
  br i1 %221, label %222, label %247

222:                                              ; preds = %184
  %223 = load i8*, i8** %4, align 8
  %224 = load i64, i64* @R_EB20, align 8
  %225 = getelementptr inbounds i8, i8* %223, i64 %224
  store i8 -96, i8* %225, align 1
  %226 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %227 = load i64, i64* @R_EB20, align 8
  %228 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %226, i64 %227, i32 1, i32 0)
  %229 = load i8*, i8** %4, align 8
  %230 = load i64, i64* @R_EB20, align 8
  %231 = getelementptr inbounds i8, i8* %229, i64 %230
  store i8 -89, i8* %231, align 1
  %232 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %233 = load i64, i64* @R_EB20, align 8
  %234 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %232, i64 %233, i32 1, i32 0)
  %235 = load i8*, i8** %4, align 8
  %236 = load i64, i64* @R_EB20, align 8
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  store i8 -25, i8* %237, align 1
  %238 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %239 = load i64, i64* @R_EB20, align 8
  %240 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %238, i64 %239, i32 1, i32 0)
  %241 = load i8*, i8** %4, align 8
  %242 = load i64, i64* @R_EB20, align 8
  %243 = getelementptr inbounds i8, i8* %241, i64 %242
  store i8 -20, i8* %243, align 1
  %244 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %245 = load i64, i64* @R_EB20, align 8
  %246 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %244, i64 %245, i32 1, i32 0)
  br label %247

247:                                              ; preds = %222, %184
  %248 = load i8*, i8** %4, align 8
  %249 = load i64, i64* @R_EP3, align 8
  %250 = getelementptr inbounds i8, i8* %248, i64 %249
  store i8 31, i8* %250, align 1
  %251 = load i8*, i8** %4, align 8
  %252 = load i64, i64* @R_EP4, align 8
  %253 = getelementptr inbounds i8, i8* %251, i64 %252
  store i8 102, i8* %253, align 1
  %254 = load i8*, i8** %4, align 8
  %255 = load i64, i64* @R_EP5, align 8
  %256 = getelementptr inbounds i8, i8* %254, i64 %255
  store i8 -127, i8* %256, align 1
  %257 = load i8*, i8** %4, align 8
  %258 = load i64, i64* @R_CPD, align 8
  %259 = getelementptr inbounds i8, i8* %257, i64 %258
  store i8 -52, i8* %259, align 1
  %260 = load i8*, i8** %4, align 8
  %261 = load i64, i64* @R_CD1, align 8
  %262 = getelementptr inbounds i8, i8* %260, i64 %261
  store i8 108, i8* %262, align 1
  %263 = load i8*, i8** %4, align 8
  %264 = load i64, i64* @R_CD2, align 8
  %265 = getelementptr inbounds i8, i8* %263, i64 %264
  store i8 0, i8* %265, align 1
  %266 = load i8*, i8** %4, align 8
  %267 = load i64, i64* @R_CD3, align 8
  %268 = getelementptr inbounds i8, i8* %266, i64 %267
  store i8 0, i8* %268, align 1
  %269 = load i8*, i8** %4, align 8
  %270 = load i64, i64* @R_MPD, align 8
  %271 = getelementptr inbounds i8, i8* %269, i64 %270
  store i8 -51, i8* %271, align 1
  %272 = load i8*, i8** %4, align 8
  %273 = load i64, i64* @R_MD1, align 8
  %274 = getelementptr inbounds i8, i8* %272, i64 %273
  store i8 119, i8* %274, align 1
  %275 = load i8*, i8** %4, align 8
  %276 = load i64, i64* @R_MD2, align 8
  %277 = getelementptr inbounds i8, i8* %275, i64 %276
  store i8 8, i8* %277, align 1
  %278 = load i8*, i8** %4, align 8
  %279 = load i64, i64* @R_MD3, align 8
  %280 = getelementptr inbounds i8, i8* %278, i64 %279
  store i8 0, i8* %280, align 1
  %281 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %282 = load i64, i64* @R_EP3, align 8
  %283 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %281, i64 %282, i32 11, i32 0)
  %284 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %285 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = icmp eq i32 %286, 128
  br i1 %287, label %288, label %296

288:                                              ; preds = %247
  %289 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %290 = load i32, i32* @TDA18271_MAIN_PLL, align 4
  %291 = call i32 @__tda18271_charge_pump_source(%struct.dvb_frontend* %289, i32 %290, i32 1, i32 0)
  %292 = call i32 @msleep(i32 1)
  %293 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %294 = load i32, i32* @TDA18271_MAIN_PLL, align 4
  %295 = call i32 @__tda18271_charge_pump_source(%struct.dvb_frontend* %293, i32 %294, i32 0, i32 0)
  br label %296

296:                                              ; preds = %288, %247
  %297 = call i32 @msleep(i32 5)
  %298 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %299 = load i64, i64* @R_EP1, align 8
  %300 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %298, i64 %299, i32 1, i32 0)
  %301 = call i32 @msleep(i32 5)
  %302 = load i8*, i8** %4, align 8
  %303 = load i64, i64* @R_EP5, align 8
  %304 = getelementptr inbounds i8, i8* %302, i64 %303
  store i8 -123, i8* %304, align 1
  %305 = load i8*, i8** %4, align 8
  %306 = load i64, i64* @R_CPD, align 8
  %307 = getelementptr inbounds i8, i8* %305, i64 %306
  store i8 -53, i8* %307, align 1
  %308 = load i8*, i8** %4, align 8
  %309 = load i64, i64* @R_CD1, align 8
  %310 = getelementptr inbounds i8, i8* %308, i64 %309
  store i8 102, i8* %310, align 1
  %311 = load i8*, i8** %4, align 8
  %312 = load i64, i64* @R_CD2, align 8
  %313 = getelementptr inbounds i8, i8* %311, i64 %312
  store i8 112, i8* %313, align 1
  %314 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %315 = load i64, i64* @R_EP3, align 8
  %316 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %314, i64 %315, i32 7, i32 0)
  %317 = call i32 @msleep(i32 5)
  %318 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %319 = load i64, i64* @R_EP2, align 8
  %320 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %318, i64 %319, i32 1, i32 0)
  %321 = call i32 @msleep(i32 30)
  %322 = load i8*, i8** %4, align 8
  %323 = load i64, i64* @R_EP5, align 8
  %324 = getelementptr inbounds i8, i8* %322, i64 %323
  store i8 -126, i8* %324, align 1
  %325 = load i8*, i8** %4, align 8
  %326 = load i64, i64* @R_CPD, align 8
  %327 = getelementptr inbounds i8, i8* %325, i64 %326
  store i8 -88, i8* %327, align 1
  %328 = load i8*, i8** %4, align 8
  %329 = load i64, i64* @R_CD2, align 8
  %330 = getelementptr inbounds i8, i8* %328, i64 %329
  store i8 0, i8* %330, align 1
  %331 = load i8*, i8** %4, align 8
  %332 = load i64, i64* @R_MPD, align 8
  %333 = getelementptr inbounds i8, i8* %331, i64 %332
  store i8 -87, i8* %333, align 1
  %334 = load i8*, i8** %4, align 8
  %335 = load i64, i64* @R_MD1, align 8
  %336 = getelementptr inbounds i8, i8* %334, i64 %335
  store i8 115, i8* %336, align 1
  %337 = load i8*, i8** %4, align 8
  %338 = load i64, i64* @R_MD2, align 8
  %339 = getelementptr inbounds i8, i8* %337, i64 %338
  store i8 26, i8* %339, align 1
  %340 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %341 = load i64, i64* @R_EP3, align 8
  %342 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %340, i64 %341, i32 11, i32 0)
  %343 = call i32 @msleep(i32 5)
  %344 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %345 = load i64, i64* @R_EP1, align 8
  %346 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %344, i64 %345, i32 1, i32 0)
  %347 = call i32 @msleep(i32 5)
  %348 = load i8*, i8** %4, align 8
  %349 = load i64, i64* @R_EP5, align 8
  %350 = getelementptr inbounds i8, i8* %348, i64 %349
  store i8 -122, i8* %350, align 1
  %351 = load i8*, i8** %4, align 8
  %352 = load i64, i64* @R_CPD, align 8
  %353 = getelementptr inbounds i8, i8* %351, i64 %352
  store i8 -88, i8* %353, align 1
  %354 = load i8*, i8** %4, align 8
  %355 = load i64, i64* @R_CD1, align 8
  %356 = getelementptr inbounds i8, i8* %354, i64 %355
  store i8 102, i8* %356, align 1
  %357 = load i8*, i8** %4, align 8
  %358 = load i64, i64* @R_CD2, align 8
  %359 = getelementptr inbounds i8, i8* %357, i64 %358
  store i8 -96, i8* %359, align 1
  %360 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %361 = load i64, i64* @R_EP3, align 8
  %362 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %360, i64 %361, i32 7, i32 0)
  %363 = call i32 @msleep(i32 5)
  %364 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %365 = load i64, i64* @R_EP2, align 8
  %366 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %364, i64 %365, i32 1, i32 0)
  %367 = call i32 @msleep(i32 30)
  %368 = load i8*, i8** %4, align 8
  %369 = load i64, i64* @R_EP5, align 8
  %370 = getelementptr inbounds i8, i8* %368, i64 %369
  store i8 -125, i8* %370, align 1
  %371 = load i8*, i8** %4, align 8
  %372 = load i64, i64* @R_CPD, align 8
  %373 = getelementptr inbounds i8, i8* %371, i64 %372
  store i8 -104, i8* %373, align 1
  %374 = load i8*, i8** %4, align 8
  %375 = load i64, i64* @R_CD1, align 8
  %376 = getelementptr inbounds i8, i8* %374, i64 %375
  store i8 101, i8* %376, align 1
  %377 = load i8*, i8** %4, align 8
  %378 = load i64, i64* @R_CD2, align 8
  %379 = getelementptr inbounds i8, i8* %377, i64 %378
  store i8 0, i8* %379, align 1
  %380 = load i8*, i8** %4, align 8
  %381 = load i64, i64* @R_MPD, align 8
  %382 = getelementptr inbounds i8, i8* %380, i64 %381
  store i8 -103, i8* %382, align 1
  %383 = load i8*, i8** %4, align 8
  %384 = load i64, i64* @R_MD1, align 8
  %385 = getelementptr inbounds i8, i8* %383, i64 %384
  store i8 113, i8* %385, align 1
  %386 = load i8*, i8** %4, align 8
  %387 = load i64, i64* @R_MD2, align 8
  %388 = getelementptr inbounds i8, i8* %386, i64 %387
  store i8 -51, i8* %388, align 1
  %389 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %390 = load i64, i64* @R_EP3, align 8
  %391 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %389, i64 %390, i32 11, i32 0)
  %392 = call i32 @msleep(i32 5)
  %393 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %394 = load i64, i64* @R_EP1, align 8
  %395 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %393, i64 %394, i32 1, i32 0)
  %396 = call i32 @msleep(i32 5)
  %397 = load i8*, i8** %4, align 8
  %398 = load i64, i64* @R_EP5, align 8
  %399 = getelementptr inbounds i8, i8* %397, i64 %398
  store i8 -121, i8* %399, align 1
  %400 = load i8*, i8** %4, align 8
  %401 = load i64, i64* @R_CD1, align 8
  %402 = getelementptr inbounds i8, i8* %400, i64 %401
  store i8 101, i8* %402, align 1
  %403 = load i8*, i8** %4, align 8
  %404 = load i64, i64* @R_CD2, align 8
  %405 = getelementptr inbounds i8, i8* %403, i64 %404
  store i8 80, i8* %405, align 1
  %406 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %407 = load i64, i64* @R_EP3, align 8
  %408 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %406, i64 %407, i32 7, i32 0)
  %409 = call i32 @msleep(i32 5)
  %410 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %411 = load i64, i64* @R_EP2, align 8
  %412 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %410, i64 %411, i32 1, i32 0)
  %413 = call i32 @msleep(i32 30)
  %414 = load i8*, i8** %4, align 8
  %415 = load i64, i64* @R_EP4, align 8
  %416 = getelementptr inbounds i8, i8* %414, i64 %415
  store i8 100, i8* %416, align 1
  %417 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %418 = load i64, i64* @R_EP4, align 8
  %419 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %417, i64 %418, i32 1, i32 0)
  %420 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %421 = load i64, i64* @R_EP1, align 8
  %422 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %420, i64 %421, i32 1, i32 0)
  %423 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %424 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %423, i32 0, i32 2
  %425 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = load i32, i32* @I2C_LOCK_SEGMENT, align 4
  %428 = call i32 @i2c_unlock_bus(i32 %426, i32 %427)
  %429 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %430 = call i32 @tda18271_i2c_gate_ctrl(%struct.dvb_frontend* %429, i32 0)
  ret i32 0
}

declare dso_local i32 @tda_dbg(i8*, i32, i32) #1

declare dso_local i32 @i2c_adapter_id(i32) #1

declare dso_local i32 @tda18271_i2c_gate_ctrl(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @i2c_lock_bus(i32, i32) #1

declare dso_local i32 @__tda18271_write_regs(%struct.dvb_frontend*, i64, i32, i32) #1

declare dso_local i32 @__tda18271_charge_pump_source(%struct.dvb_frontend*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_unlock_bus(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
