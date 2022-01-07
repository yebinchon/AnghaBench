; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_read_nvm_spt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_read_nvm_spt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.e1000_nvm_info }
%struct.TYPE_4__ = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.e1000_nvm_info = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [32 x i8] c"nvm parameter(s) out of bounds\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Could not detect valid bank, assuming bank 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"NVM read error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i64, i64, i64*)* @e1000_read_nvm_spt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_read_nvm_spt(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.e1000_nvm_info*, align 8
  %10 = alloca %struct.e1000_dev_spec_ich8lan*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 1
  store %struct.e1000_nvm_info* %18, %struct.e1000_nvm_info** %9, align 8
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.e1000_dev_spec_ich8lan* %21, %struct.e1000_dev_spec_ich8lan** %10, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %24 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %38, label %27

27:                                               ; preds = %4
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %30 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = sub nsw i64 %31, %32
  %34 = icmp sgt i64 %28, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35, %27, %4
  %39 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @E1000_ERR_NVM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %12, align 4
  br label %249

42:                                               ; preds = %35
  %43 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %44 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %45, align 8
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %48 = bitcast %struct.e1000_hw* %47 to %struct.e1000_hw.1*
  %49 = call i32 %46(%struct.e1000_hw.1* %48)
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %51 = call i32 @e1000_valid_nvm_bank_detect_ich8lan(%struct.e1000_hw* %50, i64* %13)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %13, align 8
  br label %56

56:                                               ; preds = %54, %42
  %57 = load i64, i64* %13, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %61 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  br label %64

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i64 [ %62, %59 ], [ 0, %63 ]
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %11, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %16, align 8
  br label %69

69:                                               ; preds = %238, %64
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %241

73:                                               ; preds = %69
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %16, align 8
  %76 = sub nsw i64 %74, %75
  %77 = icmp eq i64 %76, 1
  br i1 %77, label %78, label %138

78:                                               ; preds = %73
  %79 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %10, align 8
  %80 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* %16, align 8
  %84 = add nsw i64 %82, %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %78
  %90 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %10, align 8
  %91 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* %16, align 8
  %95 = add nsw i64 %93, %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** %8, align 8
  %100 = load i64, i64* %16, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  store i64 %98, i64* %101, align 8
  br label %137

102:                                              ; preds = %78
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* %16, align 8
  %105 = add nsw i64 %103, %104
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* %16, align 8
  %108 = add nsw i64 %106, %107
  %109 = srem i64 %108, 2
  %110 = sub nsw i64 %105, %109
  store i64 %110, i64* %15, align 8
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %112 = load i64, i64* %15, align 8
  %113 = call i32 @e1000_read_flash_dword_ich8lan(%struct.e1000_hw* %111, i64 %112, i64* %14)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %102
  br label %241

117:                                              ; preds = %102
  %118 = load i64, i64* %11, align 8
  %119 = load i64, i64* %16, align 8
  %120 = add nsw i64 %118, %119
  %121 = srem i64 %120, 2
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load i64, i64* %14, align 8
  %125 = and i64 %124, 65535
  %126 = load i64*, i64** %8, align 8
  %127 = load i64, i64* %16, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  store i64 %125, i64* %128, align 8
  br label %136

129:                                              ; preds = %117
  %130 = load i64, i64* %14, align 8
  %131 = ashr i64 %130, 16
  %132 = and i64 %131, 65535
  %133 = load i64*, i64** %8, align 8
  %134 = load i64, i64* %16, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  store i64 %132, i64* %135, align 8
  br label %136

136:                                              ; preds = %129, %123
  br label %137

137:                                              ; preds = %136, %89
  br label %237

138:                                              ; preds = %73
  %139 = load i64, i64* %11, align 8
  %140 = load i64, i64* %16, align 8
  %141 = add nsw i64 %139, %140
  store i64 %141, i64* %15, align 8
  %142 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %10, align 8
  %143 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %142, i32 0, i32 0
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = load i64, i64* %6, align 8
  %146 = load i64, i64* %16, align 8
  %147 = add nsw i64 %145, %146
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %138
  %153 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %10, align 8
  %154 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %153, i32 0, i32 0
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = load i64, i64* %6, align 8
  %157 = load i64, i64* %16, align 8
  %158 = add nsw i64 %156, %157
  %159 = add nsw i64 %158, 1
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %172, label %164

164:                                              ; preds = %152, %138
  %165 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %166 = load i64, i64* %15, align 8
  %167 = call i32 @e1000_read_flash_dword_ich8lan(%struct.e1000_hw* %165, i64 %166, i64* %14)
  store i32 %167, i32* %12, align 4
  %168 = load i32, i32* %12, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  br label %241

171:                                              ; preds = %164
  br label %172

172:                                              ; preds = %171, %152
  %173 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %10, align 8
  %174 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %173, i32 0, i32 0
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = load i64, i64* %6, align 8
  %177 = load i64, i64* %16, align 8
  %178 = add nsw i64 %176, %177
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %196

183:                                              ; preds = %172
  %184 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %10, align 8
  %185 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %184, i32 0, i32 0
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = load i64, i64* %6, align 8
  %188 = load i64, i64* %16, align 8
  %189 = add nsw i64 %187, %188
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64*, i64** %8, align 8
  %194 = load i64, i64* %16, align 8
  %195 = getelementptr inbounds i64, i64* %193, i64 %194
  store i64 %192, i64* %195, align 8
  br label %202

196:                                              ; preds = %172
  %197 = load i64, i64* %14, align 8
  %198 = and i64 %197, 65535
  %199 = load i64*, i64** %8, align 8
  %200 = load i64, i64* %16, align 8
  %201 = getelementptr inbounds i64, i64* %199, i64 %200
  store i64 %198, i64* %201, align 8
  br label %202

202:                                              ; preds = %196, %183
  %203 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %10, align 8
  %204 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %203, i32 0, i32 0
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %204, align 8
  %206 = load i64, i64* %6, align 8
  %207 = load i64, i64* %16, align 8
  %208 = add nsw i64 %206, %207
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %228

213:                                              ; preds = %202
  %214 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %10, align 8
  %215 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %214, i32 0, i32 0
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %215, align 8
  %217 = load i64, i64* %6, align 8
  %218 = load i64, i64* %16, align 8
  %219 = add nsw i64 %217, %218
  %220 = add nsw i64 %219, 1
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64*, i64** %8, align 8
  %225 = load i64, i64* %16, align 8
  %226 = add nsw i64 %225, 1
  %227 = getelementptr inbounds i64, i64* %224, i64 %226
  store i64 %223, i64* %227, align 8
  br label %236

228:                                              ; preds = %202
  %229 = load i64, i64* %14, align 8
  %230 = ashr i64 %229, 16
  %231 = and i64 %230, 65535
  %232 = load i64*, i64** %8, align 8
  %233 = load i64, i64* %16, align 8
  %234 = add nsw i64 %233, 1
  %235 = getelementptr inbounds i64, i64* %232, i64 %234
  store i64 %231, i64* %235, align 8
  br label %236

236:                                              ; preds = %228, %213
  br label %237

237:                                              ; preds = %236, %137
  br label %238

238:                                              ; preds = %237
  %239 = load i64, i64* %16, align 8
  %240 = add nsw i64 %239, 2
  store i64 %240, i64* %16, align 8
  br label %69

241:                                              ; preds = %170, %116, %69
  %242 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %243 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 0
  %245 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %244, align 8
  %246 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %247 = bitcast %struct.e1000_hw* %246 to %struct.e1000_hw.0*
  %248 = call i32 %245(%struct.e1000_hw.0* %247)
  br label %249

249:                                              ; preds = %241, %38
  %250 = load i32, i32* %12, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = load i32, i32* %12, align 4
  %254 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %253)
  br label %255

255:                                              ; preds = %252, %249
  %256 = load i32, i32* %12, align 4
  ret i32 %256
}

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i32 @e1000_valid_nvm_bank_detect_ich8lan(%struct.e1000_hw*, i64*) #1

declare dso_local i32 @e1000_read_flash_dword_ich8lan(%struct.e1000_hw*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
