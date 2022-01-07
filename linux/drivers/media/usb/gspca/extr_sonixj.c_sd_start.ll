; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixj.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixj.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, i32, %struct.TYPE_5__, i64, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sd = type { i64, i32, i32, i32, i32, i64, i64, i64, i64, i32 }

@sd_start.reg9a_def = internal constant [6 x i32] [i32 0, i32 64, i32 32, i32 0, i32 0, i32 0], align 16
@sd_start.reg9a_spec = internal constant [6 x i32] [i32 0, i32 64, i32 56, i32 48, i32 0, i32 32], align 16
@sd_start.regd4 = internal constant [3 x i32] [i32 96, i32 0, i32 0], align 4
@sd_start.C0 = internal constant [6 x i32] [i32 45, i32 45, i32 58, i32 5, i32 4, i32 63], align 16
@sd_start.CA = internal constant [4 x i32] [i32 40, i32 216, i32 20, i32 236], align 16
@sd_start.CA_adcm1700 = internal constant [4 x i32] [i32 20, i32 236, i32 10, i32 246], align 16
@sd_start.CA_po2030n = internal constant [4 x i32] [i32 30, i32 226, i32 20, i32 236], align 16
@sd_start.CE = internal constant [4 x i32] [i32 50, i32 221, i32 45, i32 221], align 16
@sd_start.CE_gc0307 = internal constant [4 x i32] [i32 50, i32 206, i32 45, i32 211], align 16
@sd_start.CE_ov76xx = internal constant [4 x i32] [i32 50, i32 221, i32 50, i32 221], align 16
@sd_start.CE_po2030n = internal constant [4 x i32] [i32 20, i32 231, i32 30, i32 221], align 16
@sn_tb = common dso_local global i32** null, align 8
@F_PDN_INV = common dso_local global i32 0, align 4
@S_PDN_INV = common dso_local global i32 0, align 4
@SEN_CLK_EN = common dso_local global i32 0, align 4
@SCL_SEL_OD = common dso_local global i32 0, align 4
@MCK_SIZE_MASK = common dso_local global i32 0, align 4
@SYS_SEL_48M = common dso_local global i32 0, align 4
@S_PWR_DN = common dso_local global i32 0, align 4
@om6802_init0 = common dso_local global i32* null, align 8
@sensor_init = common dso_local global i32*** null, align 8
@DEF_EN = common dso_local global i32 0, align 4
@reg84 = common dso_local global i32* null, align 8
@V_TX_EN = common dso_local global i32 0, align 4
@adcm1700_sensor_param1 = common dso_local global i32** null, align 8
@gc0307_sensor_param1 = common dso_local global i32** null, align 8
@mi0360b_sensor_param1 = common dso_local global i32** null, align 8
@mt9v111_sensor_param1 = common dso_local global i32** null, align 8
@om6802_sensor_param1 = common dso_local global i32** null, align 8
@ov7630_sensor_param1 = common dso_local global i32** null, align 8
@ov7648_sensor_param1 = common dso_local global i32** null, align 8
@ov7660_sensor_param1 = common dso_local global i32** null, align 8
@po1030_sensor_param1 = common dso_local global i32** null, align 8
@po2030n_sensor_param1 = common dso_local global i32** null, align 8
@soi768_sensor_param1 = common dso_local global i32** null, align 8
@sp80708_sensor_param1 = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32*, align 8
  %9 = alloca [8 x i32]*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = bitcast %struct.gspca_dev* %12 to %struct.sd*
  store %struct.sd* %13, %struct.sd** %3, align 8
  %14 = load %struct.sd*, %struct.sd** %3, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %22 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @jpeg_define(i32 %16, i32 %20, i32 %24, i32 33)
  %26 = load i32**, i32*** @sn_tb, align 8
  %27 = load %struct.sd*, %struct.sd** %3, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32*, i32** %26, i64 %29
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  %35 = load %struct.sd*, %struct.sd** %3, align 8
  %36 = getelementptr inbounds %struct.sd, %struct.sd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @F_PDN_INV, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %1
  %42 = load i32, i32* @S_PDN_INV, align 4
  %43 = load i32, i32* %5, align 4
  %44 = xor i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %1
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @reg_w1(%struct.gspca_dev* %46, i32 1, i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %53, i32* %54, align 4
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %56 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %45
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, 4
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %59, %45
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %66 = call i32 @reg_w(%struct.gspca_dev* %64, i32 1, i32* %65, i32 2)
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 8
  %70 = call i32 @reg_w(%struct.gspca_dev* %67, i32 8, i32* %69, i32 2)
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 23
  %74 = call i32 @reg_w(%struct.gspca_dev* %71, i32 23, i32* %73, i32 5)
  %75 = load %struct.sd*, %struct.sd** %3, align 8
  %76 = getelementptr inbounds %struct.sd, %struct.sd* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  switch i64 %77, label %79 [
    i64 141, label %78
    i64 132, label %78
    i64 131, label %78
    i64 130, label %78
    i64 129, label %78
    i64 128, label %78
  ]

78:                                               ; preds = %63, %63, %63, %63, %63, %63
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @sd_start.reg9a_spec, i64 0, i64 0), i32** %10, align 8
  br label %80

79:                                               ; preds = %63
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @sd_start.reg9a_def, i64 0, i64 0), i32** %10, align 8
  br label %80

80:                                               ; preds = %79, %78
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @reg_w(%struct.gspca_dev* %81, i32 154, i32* %82, i32 6)
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %85 = call i32 @reg_w(%struct.gspca_dev* %84, i32 212, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @sd_start.regd4, i64 0, i64 0), i32 12)
  %86 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  %89 = call i32 @reg_w(%struct.gspca_dev* %86, i32 3, i32* %88, i32 15)
  %90 = load i32*, i32** %8, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 23
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %6, align 4
  %93 = load %struct.sd*, %struct.sd** %3, align 8
  %94 = getelementptr inbounds %struct.sd, %struct.sd* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  switch i64 %95, label %120 [
    i64 141, label %96
    i64 135, label %98
  ]

96:                                               ; preds = %80
  %97 = call i32 @msleep(i32 50)
  br label %120

98:                                               ; preds = %80
  %99 = call i32 @msleep(i32 10)
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %101 = call i32 @reg_w1(%struct.gspca_dev* %100, i32 2, i32 115)
  %102 = load i32, i32* @SEN_CLK_EN, align 4
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %6, align 4
  %105 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @reg_w1(%struct.gspca_dev* %105, i32 23, i32 %106)
  %108 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %109 = call i32 @reg_w1(%struct.gspca_dev* %108, i32 1, i32 34)
  %110 = call i32 @msleep(i32 100)
  %111 = load i32, i32* @SCL_SEL_OD, align 4
  %112 = load i32, i32* @S_PDN_INV, align 4
  %113 = or i32 %111, %112
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* @MCK_SIZE_MASK, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %6, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = or i32 %118, 4
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %80, %98, %96
  %121 = load i32, i32* @SYS_SEL_48M, align 4
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %5, align 4
  %124 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @reg_w1(%struct.gspca_dev* %124, i32 1, i32 %125)
  %127 = load i32, i32* @SEN_CLK_EN, align 4
  %128 = load i32, i32* %6, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %6, align 4
  %130 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @reg_w1(%struct.gspca_dev* %130, i32 23, i32 %131)
  %133 = load i32, i32* @S_PWR_DN, align 4
  %134 = xor i32 %133, -1
  %135 = load i32, i32* %5, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %5, align 4
  %137 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @reg_w1(%struct.gspca_dev* %137, i32 1, i32 %138)
  %140 = load i32, i32* @SCL_SEL_OD, align 4
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %5, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %5, align 4
  %144 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @reg_w1(%struct.gspca_dev* %144, i32 1, i32 %145)
  %147 = load %struct.sd*, %struct.sd** %3, align 8
  %148 = getelementptr inbounds %struct.sd, %struct.sd* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  switch i64 %149, label %176 [
    i64 140, label %150
    i64 135, label %153
    i64 128, label %172
  ]

150:                                              ; preds = %120
  %151 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %152 = call i32 @hv7131r_probe(%struct.gspca_dev* %151)
  br label %176

153:                                              ; preds = %120
  %154 = call i32 @msleep(i32 10)
  %155 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @reg_w1(%struct.gspca_dev* %155, i32 1, i32 %156)
  %158 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %159 = load i32*, i32** @om6802_init0, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @i2c_w8(%struct.gspca_dev* %158, i32 %161)
  %163 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %164 = load i32*, i32** @om6802_init0, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @i2c_w8(%struct.gspca_dev* %163, i32 %166)
  %168 = call i32 @msleep(i32 15)
  %169 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %170 = call i32 @reg_w1(%struct.gspca_dev* %169, i32 2, i32 113)
  %171 = call i32 @msleep(i32 150)
  br label %176

172:                                              ; preds = %120
  %173 = call i32 @msleep(i32 100)
  %174 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %175 = call i32 @reg_w1(%struct.gspca_dev* %174, i32 2, i32 98)
  br label %176

176:                                              ; preds = %120, %172, %153, %150
  %177 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %178 = load i32***, i32**** @sensor_init, align 8
  %179 = load %struct.sd*, %struct.sd** %3, align 8
  %180 = getelementptr inbounds %struct.sd, %struct.sd* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds i32**, i32*** %178, i64 %181
  %183 = load i32**, i32*** %182, align 8
  %184 = call i32 @i2c_w_seq(%struct.gspca_dev* %177, i32** %183)
  %185 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %186 = load i32*, i32** %8, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 21
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @reg_w1(%struct.gspca_dev* %185, i32 21, i32 %188)
  %190 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %191 = load i32*, i32** %8, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 22
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @reg_w1(%struct.gspca_dev* %190, i32 22, i32 %193)
  %195 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %196 = load i32*, i32** %8, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 18
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @reg_w1(%struct.gspca_dev* %195, i32 18, i32 %198)
  %200 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %201 = load i32*, i32** %8, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 19
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @reg_w1(%struct.gspca_dev* %200, i32 19, i32 %203)
  %205 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %206 = load i32*, i32** %8, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 24
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @reg_w1(%struct.gspca_dev* %205, i32 24, i32 %208)
  %210 = load %struct.sd*, %struct.sd** %3, align 8
  %211 = getelementptr inbounds %struct.sd, %struct.sd* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %212, 142
  br i1 %213, label %214, label %219

214:                                              ; preds = %176
  %215 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %216 = call i32 @reg_w1(%struct.gspca_dev* %215, i32 210, i32 58)
  %217 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %218 = call i32 @reg_w1(%struct.gspca_dev* %217, i32 211, i32 48)
  br label %224

219:                                              ; preds = %176
  %220 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %221 = call i32 @reg_w1(%struct.gspca_dev* %220, i32 210, i32 106)
  %222 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %223 = call i32 @reg_w1(%struct.gspca_dev* %222, i32 211, i32 80)
  br label %224

224:                                              ; preds = %219, %214
  %225 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %226 = call i32 @reg_w1(%struct.gspca_dev* %225, i32 198, i32 0)
  %227 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %228 = call i32 @reg_w1(%struct.gspca_dev* %227, i32 199, i32 0)
  %229 = load %struct.sd*, %struct.sd** %3, align 8
  %230 = getelementptr inbounds %struct.sd, %struct.sd* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp eq i64 %231, 142
  br i1 %232, label %233, label %238

233:                                              ; preds = %224
  %234 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %235 = call i32 @reg_w1(%struct.gspca_dev* %234, i32 200, i32 44)
  %236 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %237 = call i32 @reg_w1(%struct.gspca_dev* %236, i32 201, i32 36)
  br label %243

238:                                              ; preds = %224
  %239 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %240 = call i32 @reg_w1(%struct.gspca_dev* %239, i32 200, i32 80)
  %241 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %242 = call i32 @reg_w1(%struct.gspca_dev* %241, i32 201, i32 60)
  br label %243

243:                                              ; preds = %238, %233
  %244 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %245 = load i32*, i32** %8, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 24
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @reg_w1(%struct.gspca_dev* %244, i32 24, i32 %247)
  %249 = load %struct.sd*, %struct.sd** %3, align 8
  %250 = getelementptr inbounds %struct.sd, %struct.sd* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  switch i64 %251, label %253 [
    i64 135, label %252
  ]

252:                                              ; preds = %243
  br label %257

253:                                              ; preds = %243
  %254 = load i32, i32* @DEF_EN, align 4
  %255 = load i32, i32* %6, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %6, align 4
  br label %257

257:                                              ; preds = %253, %252
  %258 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %259 = load i32, i32* %6, align 4
  %260 = call i32 @reg_w1(%struct.gspca_dev* %258, i32 23, i32 %259)
  %261 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %262 = call i32 @reg_w1(%struct.gspca_dev* %261, i32 5, i32 0)
  %263 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %264 = call i32 @reg_w1(%struct.gspca_dev* %263, i32 7, i32 0)
  %265 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %266 = call i32 @reg_w1(%struct.gspca_dev* %265, i32 6, i32 0)
  %267 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %268 = load i32*, i32** %8, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 20
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @reg_w1(%struct.gspca_dev* %267, i32 20, i32 %270)
  %272 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %273 = call i32 @setgamma(%struct.gspca_dev* %272)
  store i32 0, i32* %4, align 4
  br label %274

274:                                              ; preds = %281, %257
  %275 = load i32, i32* %4, align 4
  %276 = icmp slt i32 %275, 8
  br i1 %276, label %277, label %284

277:                                              ; preds = %274
  %278 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %279 = load i32*, i32** @reg84, align 8
  %280 = call i32 @reg_w(%struct.gspca_dev* %278, i32 132, i32* %279, i32 8)
  br label %281

281:                                              ; preds = %277
  %282 = load i32, i32* %4, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %4, align 4
  br label %274

284:                                              ; preds = %274
  %285 = load %struct.sd*, %struct.sd** %3, align 8
  %286 = getelementptr inbounds %struct.sd, %struct.sd* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  switch i64 %287, label %300 [
    i64 142, label %288
    i64 132, label %288
    i64 128, label %288
    i64 141, label %291
    i64 136, label %291
    i64 138, label %291
    i64 134, label %294
    i64 133, label %294
    i64 130, label %297
    i64 129, label %297
  ]

288:                                              ; preds = %284, %284, %284
  %289 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %290 = call i32 @reg_w1(%struct.gspca_dev* %289, i32 154, i32 5)
  br label %303

291:                                              ; preds = %284, %284, %284
  %292 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %293 = call i32 @reg_w1(%struct.gspca_dev* %292, i32 154, i32 7)
  br label %303

294:                                              ; preds = %284, %284
  %295 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %296 = call i32 @reg_w1(%struct.gspca_dev* %295, i32 154, i32 10)
  br label %303

297:                                              ; preds = %284, %284
  %298 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %299 = call i32 @reg_w1(%struct.gspca_dev* %298, i32 154, i32 6)
  br label %303

300:                                              ; preds = %284
  %301 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %302 = call i32 @reg_w1(%struct.gspca_dev* %301, i32 154, i32 8)
  br label %303

303:                                              ; preds = %300, %297, %294, %291, %288
  %304 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %305 = call i32 @setsharpness(%struct.gspca_dev* %304)
  %306 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %307 = load i32*, i32** @reg84, align 8
  %308 = call i32 @reg_w(%struct.gspca_dev* %306, i32 132, i32* %307, i32 8)
  %309 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %310 = call i32 @reg_w1(%struct.gspca_dev* %309, i32 5, i32 32)
  %311 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %312 = call i32 @reg_w1(%struct.gspca_dev* %311, i32 7, i32 32)
  %313 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %314 = call i32 @reg_w1(%struct.gspca_dev* %313, i32 6, i32 32)
  store [8 x i32]* null, [8 x i32]** %9, align 8
  %315 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %316 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %315, i32 0, i32 2
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 0
  %318 = load %struct.TYPE_4__*, %struct.TYPE_4__** %317, align 8
  %319 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %320 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  store i32 %324, i32* %11, align 4
  %325 = load i32, i32* @SYS_SEL_48M, align 4
  %326 = load i32, i32* @V_TX_EN, align 4
  %327 = or i32 %325, %326
  %328 = load i32, i32* %5, align 4
  %329 = or i32 %328, %327
  store i32 %329, i32* %5, align 4
  %330 = load i32, i32* @MCK_SIZE_MASK, align 4
  %331 = xor i32 %330, -1
  %332 = load i32, i32* %6, align 4
  %333 = and i32 %332, %331
  store i32 %333, i32* %6, align 4
  %334 = load i32, i32* %6, align 4
  %335 = or i32 %334, 2
  store i32 %335, i32* %6, align 4
  %336 = load %struct.sd*, %struct.sd** %3, align 8
  %337 = getelementptr inbounds %struct.sd, %struct.sd* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  switch i64 %338, label %432 [
    i64 142, label %339
    i64 141, label %342
    i64 140, label %345
    i64 139, label %345
    i64 138, label %360
    i64 137, label %363
    i64 136, label %378
    i64 135, label %381
    i64 134, label %405
    i64 133, label %408
    i64 132, label %417
    i64 131, label %420
    i64 130, label %423
    i64 129, label %426
    i64 128, label %429
  ]

339:                                              ; preds = %303
  %340 = load i32**, i32*** @adcm1700_sensor_param1, align 8
  %341 = bitcast i32** %340 to [8 x i32]*
  store [8 x i32]* %341, [8 x i32]** %9, align 8
  br label %432

342:                                              ; preds = %303
  %343 = load i32**, i32*** @gc0307_sensor_param1, align 8
  %344 = bitcast i32** %343 to [8 x i32]*
  store [8 x i32]* %344, [8 x i32]** %9, align 8
  br label %432

345:                                              ; preds = %303, %303
  %346 = load i32, i32* %11, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %353, label %348

348:                                              ; preds = %345
  %349 = load i32, i32* @SYS_SEL_48M, align 4
  %350 = xor i32 %349, -1
  %351 = load i32, i32* %5, align 4
  %352 = and i32 %351, %350
  store i32 %352, i32* %5, align 4
  br label %353

353:                                              ; preds = %348, %345
  %354 = load i32, i32* @MCK_SIZE_MASK, align 4
  %355 = xor i32 %354, -1
  %356 = load i32, i32* %6, align 4
  %357 = and i32 %356, %355
  store i32 %357, i32* %6, align 4
  %358 = load i32, i32* %6, align 4
  %359 = or i32 %358, 1
  store i32 %359, i32* %6, align 4
  br label %432

360:                                              ; preds = %303
  %361 = load i32**, i32*** @mi0360b_sensor_param1, align 8
  %362 = bitcast i32** %361 to [8 x i32]*
  store [8 x i32]* %362, [8 x i32]** %9, align 8
  br label %432

363:                                              ; preds = %303
  %364 = load i32, i32* %11, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %377

366:                                              ; preds = %363
  %367 = load i32, i32* @SYS_SEL_48M, align 4
  %368 = xor i32 %367, -1
  %369 = load i32, i32* %5, align 4
  %370 = and i32 %369, %368
  store i32 %370, i32* %5, align 4
  %371 = load i32, i32* @MCK_SIZE_MASK, align 4
  %372 = xor i32 %371, -1
  %373 = load i32, i32* %6, align 4
  %374 = and i32 %373, %372
  store i32 %374, i32* %6, align 4
  %375 = load i32, i32* %6, align 4
  %376 = or i32 %375, 1
  store i32 %376, i32* %6, align 4
  br label %377

377:                                              ; preds = %366, %363
  br label %432

378:                                              ; preds = %303
  %379 = load i32**, i32*** @mt9v111_sensor_param1, align 8
  %380 = bitcast i32** %379 to [8 x i32]*
  store [8 x i32]* %380, [8 x i32]** %9, align 8
  br label %432

381:                                              ; preds = %303
  %382 = load i32**, i32*** @om6802_sensor_param1, align 8
  %383 = bitcast i32** %382 to [8 x i32]*
  store [8 x i32]* %383, [8 x i32]** %9, align 8
  %384 = load i32, i32* %11, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %393, label %386

386:                                              ; preds = %381
  %387 = load i32, i32* @MCK_SIZE_MASK, align 4
  %388 = xor i32 %387, -1
  %389 = load i32, i32* %6, align 4
  %390 = and i32 %389, %388
  store i32 %390, i32* %6, align 4
  %391 = load i32, i32* %6, align 4
  %392 = or i32 %391, 4
  store i32 %392, i32* %6, align 4
  br label %404

393:                                              ; preds = %381
  %394 = load i32, i32* @SYS_SEL_48M, align 4
  %395 = xor i32 %394, -1
  %396 = load i32, i32* %5, align 4
  %397 = and i32 %396, %395
  store i32 %397, i32* %5, align 4
  %398 = load i32, i32* @MCK_SIZE_MASK, align 4
  %399 = xor i32 %398, -1
  %400 = load i32, i32* %6, align 4
  %401 = and i32 %400, %399
  store i32 %401, i32* %6, align 4
  %402 = load i32, i32* %6, align 4
  %403 = or i32 %402, 2
  store i32 %403, i32* %6, align 4
  br label %404

404:                                              ; preds = %393, %386
  br label %432

405:                                              ; preds = %303
  %406 = load i32**, i32*** @ov7630_sensor_param1, align 8
  %407 = bitcast i32** %406 to [8 x i32]*
  store [8 x i32]* %407, [8 x i32]** %9, align 8
  br label %432

408:                                              ; preds = %303
  %409 = load i32**, i32*** @ov7648_sensor_param1, align 8
  %410 = bitcast i32** %409 to [8 x i32]*
  store [8 x i32]* %410, [8 x i32]** %9, align 8
  %411 = load i32, i32* @MCK_SIZE_MASK, align 4
  %412 = xor i32 %411, -1
  %413 = load i32, i32* %6, align 4
  %414 = and i32 %413, %412
  store i32 %414, i32* %6, align 4
  %415 = load i32, i32* %6, align 4
  %416 = or i32 %415, 1
  store i32 %416, i32* %6, align 4
  br label %432

417:                                              ; preds = %303
  %418 = load i32**, i32*** @ov7660_sensor_param1, align 8
  %419 = bitcast i32** %418 to [8 x i32]*
  store [8 x i32]* %419, [8 x i32]** %9, align 8
  br label %432

420:                                              ; preds = %303
  %421 = load i32**, i32*** @po1030_sensor_param1, align 8
  %422 = bitcast i32** %421 to [8 x i32]*
  store [8 x i32]* %422, [8 x i32]** %9, align 8
  br label %432

423:                                              ; preds = %303
  %424 = load i32**, i32*** @po2030n_sensor_param1, align 8
  %425 = bitcast i32** %424 to [8 x i32]*
  store [8 x i32]* %425, [8 x i32]** %9, align 8
  br label %432

426:                                              ; preds = %303
  %427 = load i32**, i32*** @soi768_sensor_param1, align 8
  %428 = bitcast i32** %427 to [8 x i32]*
  store [8 x i32]* %428, [8 x i32]** %9, align 8
  br label %432

429:                                              ; preds = %303
  %430 = load i32**, i32*** @sp80708_sensor_param1, align 8
  %431 = bitcast i32** %430 to [8 x i32]*
  store [8 x i32]* %431, [8 x i32]** %9, align 8
  br label %432

432:                                              ; preds = %303, %429, %426, %423, %420, %417, %408, %405, %404, %378, %377, %360, %353, %342, %339
  %433 = load [8 x i32]*, [8 x i32]** %9, align 8
  %434 = icmp ne [8 x i32]* %433, null
  br i1 %434, label %435, label %440

435:                                              ; preds = %432
  %436 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %437 = load [8 x i32]*, [8 x i32]** %9, align 8
  %438 = bitcast [8 x i32]* %437 to i32**
  %439 = call i32 @i2c_w_seq(%struct.gspca_dev* %436, i32** %438)
  br label %440

440:                                              ; preds = %435, %432
  %441 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %442 = call i32 @reg_w(%struct.gspca_dev* %441, i32 192, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @sd_start.C0, i64 0, i64 0), i32 6)
  %443 = load %struct.sd*, %struct.sd** %3, align 8
  %444 = getelementptr inbounds %struct.sd, %struct.sd* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  switch i64 %445, label %452 [
    i64 142, label %446
    i64 141, label %446
    i64 129, label %446
    i64 130, label %449
  ]

446:                                              ; preds = %440, %440, %440
  %447 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %448 = call i32 @reg_w(%struct.gspca_dev* %447, i32 202, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sd_start.CA_adcm1700, i64 0, i64 0), i32 4)
  br label %455

449:                                              ; preds = %440
  %450 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %451 = call i32 @reg_w(%struct.gspca_dev* %450, i32 202, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sd_start.CA_po2030n, i64 0, i64 0), i32 4)
  br label %455

452:                                              ; preds = %440
  %453 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %454 = call i32 @reg_w(%struct.gspca_dev* %453, i32 202, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sd_start.CA, i64 0, i64 0), i32 4)
  br label %455

455:                                              ; preds = %452, %449, %446
  %456 = load %struct.sd*, %struct.sd** %3, align 8
  %457 = getelementptr inbounds %struct.sd, %struct.sd* %456, i32 0, i32 0
  %458 = load i64, i64* %457, align 8
  switch i64 %458, label %468 [
    i64 142, label %459
    i64 134, label %459
    i64 133, label %459
    i64 132, label %459
    i64 129, label %459
    i64 141, label %462
    i64 130, label %465
  ]

459:                                              ; preds = %455, %455, %455, %455, %455
  %460 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %461 = call i32 @reg_w(%struct.gspca_dev* %460, i32 206, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sd_start.CE_ov76xx, i64 0, i64 0), i32 4)
  br label %471

462:                                              ; preds = %455
  %463 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %464 = call i32 @reg_w(%struct.gspca_dev* %463, i32 206, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sd_start.CE_gc0307, i64 0, i64 0), i32 4)
  br label %471

465:                                              ; preds = %455
  %466 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %467 = call i32 @reg_w(%struct.gspca_dev* %466, i32 206, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sd_start.CE_po2030n, i64 0, i64 0), i32 4)
  br label %471

468:                                              ; preds = %455
  %469 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %470 = call i32 @reg_w(%struct.gspca_dev* %469, i32 206, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @sd_start.CE, i64 0, i64 0), i32 4)
  br label %471

471:                                              ; preds = %468, %465, %462, %459
  %472 = load i32*, i32** %8, align 8
  %473 = getelementptr inbounds i32, i32* %472, i64 24
  %474 = load i32, i32* %473, align 4
  %475 = load i32, i32* %11, align 4
  %476 = shl i32 %475, 4
  %477 = or i32 %474, %476
  %478 = or i32 %477, 64
  %479 = load %struct.sd*, %struct.sd** %3, align 8
  %480 = getelementptr inbounds %struct.sd, %struct.sd* %479, i32 0, i32 2
  store i32 %478, i32* %480, align 4
  %481 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %482 = load %struct.sd*, %struct.sd** %3, align 8
  %483 = getelementptr inbounds %struct.sd, %struct.sd* %482, i32 0, i32 2
  %484 = load i32, i32* %483, align 4
  %485 = call i32 @reg_w1(%struct.gspca_dev* %481, i32 24, i32 %484)
  %486 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %487 = call i32 @setjpegqual(%struct.gspca_dev* %486)
  %488 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %489 = load i32, i32* %6, align 4
  %490 = call i32 @reg_w1(%struct.gspca_dev* %488, i32 23, i32 %489)
  %491 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %492 = load i32, i32* %5, align 4
  %493 = call i32 @reg_w1(%struct.gspca_dev* %491, i32 1, i32 %492)
  %494 = load i32, i32* %5, align 4
  %495 = load %struct.sd*, %struct.sd** %3, align 8
  %496 = getelementptr inbounds %struct.sd, %struct.sd* %495, i32 0, i32 3
  store i32 %494, i32* %496, align 8
  %497 = load i32, i32* %6, align 4
  %498 = load %struct.sd*, %struct.sd** %3, align 8
  %499 = getelementptr inbounds %struct.sd, %struct.sd* %498, i32 0, i32 4
  store i32 %497, i32* %499, align 4
  %500 = load %struct.sd*, %struct.sd** %3, align 8
  %501 = getelementptr inbounds %struct.sd, %struct.sd* %500, i32 0, i32 7
  store i64 0, i64* %501, align 8
  %502 = load %struct.sd*, %struct.sd** %3, align 8
  %503 = getelementptr inbounds %struct.sd, %struct.sd* %502, i32 0, i32 8
  store i64 0, i64* %503, align 8
  %504 = load %struct.sd*, %struct.sd** %3, align 8
  %505 = getelementptr inbounds %struct.sd, %struct.sd* %504, i32 0, i32 5
  store i64 0, i64* %505, align 8
  %506 = load %struct.sd*, %struct.sd** %3, align 8
  %507 = getelementptr inbounds %struct.sd, %struct.sd* %506, i32 0, i32 6
  store i64 0, i64* %507, align 8
  %508 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %509 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 8
  ret i32 %510
}

declare dso_local i32 @jpeg_define(i32, i32, i32, i32) #1

declare dso_local i32 @reg_w1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hv7131r_probe(%struct.gspca_dev*) #1

declare dso_local i32 @i2c_w8(%struct.gspca_dev*, i32) #1

declare dso_local i32 @i2c_w_seq(%struct.gspca_dev*, i32**) #1

declare dso_local i32 @setgamma(%struct.gspca_dev*) #1

declare dso_local i32 @setsharpness(%struct.gspca_dev*) #1

declare dso_local i32 @setjpegqual(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
