; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_sysfreq_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_sysfreq_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r820t_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [45 x i8] c"adjusting tuner parameters for the standard\0A\00", align 1
@CHIP_R820T = common dso_local global i64 0, align 8
@CHIP_R828S = common dso_local global i64 0, align 8
@CHIP_R820C = common dso_local global i64 0, align 8
@DIP_FREQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"adjusting LNA parameters\0A\00", align 1
@V4L2_TUNER_ANALOG_TV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r820t_priv*, i32, i32, i32, i32)* @r820t_sysfreq_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r820t_sysfreq_sel(%struct.r820t_priv* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.r820t_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.r820t_priv* %0, %struct.r820t_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %24 = call i32 @tuner_dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %11, align 4
  switch i32 %25, label %41 [
    i32 130, label %26
    i32 129, label %38
    i32 128, label %39
    i32 131, label %40
  ]

26:                                               ; preds = %5
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 506000000
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 666000000
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 818000000
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %29, %26
  store i32 20, i32* %13, align 4
  store i32 229, i32* %14, align 4
  store i32 40, i32* %15, align 4
  store i32 32, i32* %16, align 4
  br label %37

36:                                               ; preds = %32
  store i32 36, i32* %13, align 4
  store i32 229, i32* %14, align 4
  store i32 56, i32* %15, align 4
  store i32 48, i32* %16, align 4
  br label %37

37:                                               ; preds = %36, %35
  store i32 83, i32* %17, align 4
  store i32 117, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 64, i32* %21, align 4
  store i32 14, i32* %22, align 4
  store i32 64, i32* %23, align 4
  br label %42

38:                                               ; preds = %5
  store i32 36, i32* %13, align 4
  store i32 229, i32* %14, align 4
  store i32 83, i32* %17, align 4
  store i32 117, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 64, i32* %21, align 4
  store i32 14, i32* %22, align 4
  store i32 56, i32* %15, align 4
  store i32 48, i32* %16, align 4
  store i32 64, i32* %23, align 4
  br label %42

39:                                               ; preds = %5
  store i32 36, i32* %13, align 4
  store i32 229, i32* %14, align 4
  store i32 117, i32* %17, align 4
  store i32 117, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 64, i32* %21, align 4
  store i32 14, i32* %22, align 4
  store i32 56, i32* %15, align 4
  store i32 48, i32* %16, align 4
  store i32 64, i32* %23, align 4
  br label %42

40:                                               ; preds = %5
  store i32 36, i32* %13, align 4
  store i32 229, i32* %14, align 4
  store i32 98, i32* %17, align 4
  store i32 117, i32* %18, align 4
  store i32 96, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 64, i32* %21, align 4
  store i32 14, i32* %22, align 4
  store i32 56, i32* %15, align 4
  store i32 48, i32* %16, align 4
  store i32 64, i32* %23, align 4
  br label %42

41:                                               ; preds = %5
  store i32 36, i32* %13, align 4
  store i32 229, i32* %14, align 4
  store i32 83, i32* %17, align 4
  store i32 117, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 64, i32* %21, align 4
  store i32 14, i32* %22, align 4
  store i32 56, i32* %15, align 4
  store i32 48, i32* %16, align 4
  store i32 64, i32* %23, align 4
  br label %42

42:                                               ; preds = %41, %40, %39, %38, %37
  %43 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %44 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %42
  %50 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %51 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CHIP_R820T, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %73, label %57

57:                                               ; preds = %49
  %58 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %59 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CHIP_R828S, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %57
  %66 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %67 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CHIP_R820C, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %65, %57, %49
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @DIP_FREQ, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 0, i32* %19, align 4
  br label %79

78:                                               ; preds = %73
  store i32 96, i32* %19, align 4
  br label %79

79:                                               ; preds = %78, %77
  store i32 0, i32* %20, align 4
  br label %80

80:                                               ; preds = %79, %65, %42
  %81 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %82 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %80
  %88 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %89 = load i32, i32* %21, align 4
  %90 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %88, i32 6, i32 %89, i32 64)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %6, align 4
  br label %280

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %80
  %97 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %97, i32 29, i32 %98, i32 199)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %6, align 4
  br label %280

104:                                              ; preds = %96
  %105 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %105, i32 28, i32 %106, i32 248)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %6, align 4
  br label %280

112:                                              ; preds = %104
  %113 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %114 = load i32, i32* %17, align 4
  %115 = call i32 @r820t_write_reg(%struct.r820t_priv* %113, i32 13, i32 %114)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %6, align 4
  br label %280

120:                                              ; preds = %112
  %121 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %122 = load i32, i32* %18, align 4
  %123 = call i32 @r820t_write_reg(%struct.r820t_priv* %121, i32 14, i32 %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* %12, align 4
  store i32 %127, i32* %6, align 4
  br label %280

128:                                              ; preds = %120
  %129 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %130 = load i32, i32* %19, align 4
  %131 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %129, i32 5, i32 %130, i32 96)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* %6, align 4
  br label %280

136:                                              ; preds = %128
  %137 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %138 = load i32, i32* %20, align 4
  %139 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %137, i32 6, i32 %138, i32 8)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = load i32, i32* %12, align 4
  store i32 %143, i32* %6, align 4
  br label %280

144:                                              ; preds = %136
  %145 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %146 = load i32, i32* %15, align 4
  %147 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %145, i32 17, i32 %146, i32 56)
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = load i32, i32* %12, align 4
  store i32 %151, i32* %6, align 4
  br label %280

152:                                              ; preds = %144
  %153 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %154 = load i32, i32* %16, align 4
  %155 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %153, i32 23, i32 %154, i32 48)
  store i32 %155, i32* %12, align 4
  %156 = load i32, i32* %12, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = load i32, i32* %12, align 4
  store i32 %159, i32* %6, align 4
  br label %280

160:                                              ; preds = %152
  %161 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %162 = load i32, i32* %23, align 4
  %163 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %161, i32 10, i32 %162, i32 96)
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %12, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = load i32, i32* %12, align 4
  store i32 %167, i32* %6, align 4
  br label %280

168:                                              ; preds = %160
  %169 = call i32 @tuner_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %233

173:                                              ; preds = %168
  %174 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %175 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %174, i32 29, i32 0, i32 56)
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %12, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %173
  %179 = load i32, i32* %12, align 4
  store i32 %179, i32* %6, align 4
  br label %280

180:                                              ; preds = %173
  %181 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %182 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %181, i32 28, i32 0, i32 4)
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* %12, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = load i32, i32* %12, align 4
  store i32 %186, i32* %6, align 4
  br label %280

187:                                              ; preds = %180
  %188 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %189 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %188, i32 6, i32 0, i32 64)
  store i32 %189, i32* %12, align 4
  %190 = load i32, i32* %12, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load i32, i32* %12, align 4
  store i32 %193, i32* %6, align 4
  br label %280

194:                                              ; preds = %187
  %195 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %196 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %195, i32 26, i32 48, i32 48)
  store i32 %196, i32* %12, align 4
  %197 = load i32, i32* %12, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = load i32, i32* %12, align 4
  store i32 %200, i32* %6, align 4
  br label %280

201:                                              ; preds = %194
  %202 = call i32 @msleep(i32 250)
  %203 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %204 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %203, i32 29, i32 24, i32 56)
  store i32 %204, i32* %12, align 4
  %205 = load i32, i32* %12, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %201
  %208 = load i32, i32* %12, align 4
  store i32 %208, i32* %6, align 4
  br label %280

209:                                              ; preds = %201
  %210 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %211 = load i32, i32* %13, align 4
  %212 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %210, i32 28, i32 %211, i32 4)
  store i32 %212, i32* %12, align 4
  %213 = load i32, i32* %12, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %209
  %216 = load i32, i32* %12, align 4
  store i32 %216, i32* %6, align 4
  br label %280

217:                                              ; preds = %209
  %218 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %219 = load i32, i32* %22, align 4
  %220 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %218, i32 30, i32 %219, i32 31)
  store i32 %220, i32* %12, align 4
  %221 = load i32, i32* %12, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %217
  %224 = load i32, i32* %12, align 4
  store i32 %224, i32* %6, align 4
  br label %280

225:                                              ; preds = %217
  %226 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %227 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %226, i32 26, i32 32, i32 48)
  store i32 %227, i32* %12, align 4
  %228 = load i32, i32* %12, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %225
  %231 = load i32, i32* %12, align 4
  store i32 %231, i32* %6, align 4
  br label %280

232:                                              ; preds = %225
  br label %279

233:                                              ; preds = %168
  %234 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %235 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %234, i32 6, i32 0, i32 64)
  store i32 %235, i32* %12, align 4
  %236 = load i32, i32* %12, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %233
  %239 = load i32, i32* %12, align 4
  store i32 %239, i32* %6, align 4
  br label %280

240:                                              ; preds = %233
  %241 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %242 = load i32, i32* %14, align 4
  %243 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %241, i32 29, i32 %242, i32 56)
  store i32 %243, i32* %12, align 4
  %244 = load i32, i32* %12, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %240
  %247 = load i32, i32* %12, align 4
  store i32 %247, i32* %6, align 4
  br label %280

248:                                              ; preds = %240
  %249 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %250 = load i32, i32* %13, align 4
  %251 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %249, i32 28, i32 %250, i32 4)
  store i32 %251, i32* %12, align 4
  %252 = load i32, i32* %12, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %248
  %255 = load i32, i32* %12, align 4
  store i32 %255, i32* %6, align 4
  br label %280

256:                                              ; preds = %248
  %257 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %258 = load i32, i32* %22, align 4
  %259 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %257, i32 30, i32 %258, i32 31)
  store i32 %259, i32* %12, align 4
  %260 = load i32, i32* %12, align 4
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %256
  %263 = load i32, i32* %12, align 4
  store i32 %263, i32* %6, align 4
  br label %280

264:                                              ; preds = %256
  %265 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %266 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %265, i32 26, i32 0, i32 48)
  store i32 %266, i32* %12, align 4
  %267 = load i32, i32* %12, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %264
  %270 = load i32, i32* %12, align 4
  store i32 %270, i32* %6, align 4
  br label %280

271:                                              ; preds = %264
  %272 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %273 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %272, i32 16, i32 0, i32 4)
  store i32 %273, i32* %12, align 4
  %274 = load i32, i32* %12, align 4
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %271
  %277 = load i32, i32* %12, align 4
  store i32 %277, i32* %6, align 4
  br label %280

278:                                              ; preds = %271
  br label %279

279:                                              ; preds = %278, %232
  store i32 0, i32* %6, align 4
  br label %280

280:                                              ; preds = %279, %276, %269, %262, %254, %246, %238, %230, %223, %215, %207, %199, %192, %185, %178, %166, %158, %150, %142, %134, %126, %118, %110, %102, %93
  %281 = load i32, i32* %6, align 4
  ret i32 %281
}

declare dso_local i32 @tuner_dbg(i8*) #1

declare dso_local i32 @r820t_write_reg_mask(%struct.r820t_priv*, i32, i32, i32) #1

declare dso_local i32 @r820t_write_reg(%struct.r820t_priv*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
