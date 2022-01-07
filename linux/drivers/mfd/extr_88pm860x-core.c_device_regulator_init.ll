; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-core.c_device_regulator_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-core.c_device_regulator_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.pm860x_chip = type { i32 }
%struct.pm860x_platform_data = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@reg_devs = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Failed to add regulator subdev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm860x_chip*, %struct.pm860x_platform_data*)* @device_regulator_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_regulator_init(%struct.pm860x_chip* %0, %struct.pm860x_platform_data* %1) #0 {
  %3 = alloca %struct.pm860x_chip*, align 8
  %4 = alloca %struct.pm860x_platform_data*, align 8
  %5 = alloca i32, align 4
  store %struct.pm860x_chip* %0, %struct.pm860x_chip** %3, align 8
  store %struct.pm860x_platform_data* %1, %struct.pm860x_platform_data** %4, align 8
  %6 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %7 = icmp eq %struct.pm860x_platform_data* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %264

9:                                                ; preds = %2
  %10 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %11 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %10, i32 0, i32 15
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %16 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %15, i32 0, i32 15
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i64 %17, i64* %20, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 4, i32* %23, align 8
  br label %24

24:                                               ; preds = %14, %9
  %25 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %26 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %25, i32 0, i32 14
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %31 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %30, i32 0, i32 14
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i64 %32, i64* %35, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 4, i32* %38, align 8
  br label %39

39:                                               ; preds = %29, %24
  %40 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %41 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %40, i32 0, i32 13
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %46 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %45, i32 0, i32 13
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i64 %47, i64* %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 4, i32* %53, align 8
  br label %54

54:                                               ; preds = %44, %39
  %55 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %56 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %55, i32 0, i32 12
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %61 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %60, i32 0, i32 12
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 3
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i64 %62, i64* %65, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 3
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 4, i32* %68, align 8
  br label %69

69:                                               ; preds = %59, %54
  %70 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %71 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %70, i32 0, i32 11
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %76 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %75, i32 0, i32 11
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 4
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i64 %77, i64* %80, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 4
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 4, i32* %83, align 8
  br label %84

84:                                               ; preds = %74, %69
  %85 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %86 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %85, i32 0, i32 10
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %91 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %90, i32 0, i32 10
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 5
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i64 %92, i64* %95, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 5
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 4, i32* %98, align 8
  br label %99

99:                                               ; preds = %89, %84
  %100 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %101 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %100, i32 0, i32 9
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %106 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %105, i32 0, i32 9
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 6
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  store i64 %107, i64* %110, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 6
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 4, i32* %113, align 8
  br label %114

114:                                              ; preds = %104, %99
  %115 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %116 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %115, i32 0, i32 8
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %114
  %120 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %121 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %120, i32 0, i32 8
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 7
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  store i64 %122, i64* %125, align 8
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 7
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store i32 4, i32* %128, align 8
  br label %129

129:                                              ; preds = %119, %114
  %130 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %131 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %130, i32 0, i32 7
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %129
  %135 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %136 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %135, i32 0, i32 7
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  store i64 %137, i64* %140, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  store i32 4, i32* %143, align 8
  br label %144

144:                                              ; preds = %134, %129
  %145 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %146 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %145, i32 0, i32 6
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %144
  %150 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %151 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %150, i32 0, i32 6
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 9
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  store i64 %152, i64* %155, align 8
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 9
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  store i32 4, i32* %158, align 8
  br label %159

159:                                              ; preds = %149, %144
  %160 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %161 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %160, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %159
  %165 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %166 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i64 10
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  store i64 %167, i64* %170, align 8
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i64 10
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  store i32 4, i32* %173, align 8
  br label %174

174:                                              ; preds = %164, %159
  %175 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %176 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %174
  %180 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %181 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 11
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  store i64 %182, i64* %185, align 8
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i64 11
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  store i32 4, i32* %188, align 8
  br label %189

189:                                              ; preds = %179, %174
  %190 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %191 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %189
  %195 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %196 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i64 12
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  store i64 %197, i64* %200, align 8
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i64 12
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  store i32 4, i32* %203, align 8
  br label %204

204:                                              ; preds = %194, %189
  %205 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %206 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %204
  %210 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %211 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i64 13
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 1
  store i64 %212, i64* %215, align 8
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i64 13
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  store i32 4, i32* %218, align 8
  br label %219

219:                                              ; preds = %209, %204
  %220 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %221 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %219
  %225 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %226 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i64 14
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 1
  store i64 %227, i64* %230, align 8
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i64 14
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  store i32 4, i32* %233, align 8
  br label %234

234:                                              ; preds = %224, %219
  %235 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %236 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %249

239:                                              ; preds = %234
  %240 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %241 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i64 15
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 1
  store i64 %242, i64* %245, align 8
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i64 15
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  store i32 4, i32* %248, align 8
  br label %249

249:                                              ; preds = %239, %234
  %250 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %251 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_devs, align 8
  %255 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %254)
  %256 = call i32 @mfd_add_devices(i32 %252, i32 0, %struct.TYPE_4__* %253, i32 %255, i32* null, i32 0, i32* null)
  store i32 %256, i32* %5, align 4
  %257 = load i32, i32* %5, align 4
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %249
  %260 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %261 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @dev_err(i32 %262, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %264

264:                                              ; preds = %8, %259, %249
  ret void
}

declare dso_local i32 @mfd_add_devices(i32, i32, %struct.TYPE_4__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
