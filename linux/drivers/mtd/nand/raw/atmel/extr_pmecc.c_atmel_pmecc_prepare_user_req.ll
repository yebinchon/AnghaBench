; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_prepare_user_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_prepare_user_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_pmecc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.atmel_pmecc_user_req = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ATMEL_PMECC_SECTOR_SIZE_AUTO = common dso_local global i32 0, align 4
@ATMEL_PMECC_MAXIMIZE_ECC_STRENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_pmecc*, %struct.atmel_pmecc_user_req*)* @atmel_pmecc_prepare_user_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_pmecc_prepare_user_req(%struct.atmel_pmecc* %0, %struct.atmel_pmecc_user_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atmel_pmecc*, align 8
  %5 = alloca %struct.atmel_pmecc_user_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.atmel_pmecc* %0, %struct.atmel_pmecc** %4, align 8
  store %struct.atmel_pmecc_user_req* %1, %struct.atmel_pmecc_user_req** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %13 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %2
  %17 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %18 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %23 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %16, %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %226

30:                                               ; preds = %21
  %31 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %32 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %30
  %37 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %38 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %42 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %40, %45
  %47 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %48 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %36
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %226

54:                                               ; preds = %36, %30
  %55 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %56 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ATMEL_PMECC_SECTOR_SIZE_AUTO, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %54
  %62 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %63 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ATMEL_PMECC_MAXIMIZE_ECC_STRENGTH, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %226

71:                                               ; preds = %61
  %72 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %73 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %74, 512
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %78 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i32 1024, i32* %79, align 8
  br label %84

80:                                               ; preds = %71
  %81 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %82 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  store i32 512, i32* %83, align 8
  br label %84

84:                                               ; preds = %80, %76
  br label %85

85:                                               ; preds = %84, %54
  %86 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %87 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 512
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %93 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 1024
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %226

100:                                              ; preds = %91, %85
  %101 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %102 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %105 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = srem i32 %103, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %100
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %226

113:                                              ; preds = %100
  %114 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %115 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %118 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = sdiv i32 %116, %120
  %122 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %123 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 4
  store i32 %121, i32* %124, align 8
  %125 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %126 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %129

129:                                              ; preds = %192, %113
  %130 = load i32, i32* %6, align 4
  %131 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %4, align 8
  %132 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %131, i32 0, i32 0
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %130, %135
  br i1 %136, label %137, label %195

137:                                              ; preds = %129
  %138 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %4, align 8
  %139 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %138, i32 0, i32 0
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %11, align 4
  %147 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %148 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @ATMEL_PMECC_MAXIMIZE_ECC_STRENGTH, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %137
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %156 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = icmp slt i32 %154, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  br label %192

161:                                              ; preds = %153, %137
  %162 = load i32, i32* %11, align 4
  %163 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %164 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = mul nsw i32 8, %166
  %168 = call i32 @fls(i32 %167)
  %169 = mul nsw i32 %162, %168
  %170 = call i32 @DIV_ROUND_UP(i32 %169, i32 8)
  store i32 %170, i32* %10, align 4
  %171 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %172 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = mul nsw i32 %175, %174
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %7, align 4
  %179 = icmp sgt i32 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %161
  br label %195

181:                                              ; preds = %161
  %182 = load i32, i32* %11, align 4
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %10, align 4
  store i32 %183, i32* %8, align 4
  %184 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %185 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @ATMEL_PMECC_MAXIMIZE_ECC_STRENGTH, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %181
  br label %195

191:                                              ; preds = %181
  br label %192

192:                                              ; preds = %191, %160
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %6, align 4
  br label %129

195:                                              ; preds = %190, %180, %129
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %195
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %3, align 4
  br label %226

201:                                              ; preds = %195
  %202 = load i32, i32* %8, align 4
  %203 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %204 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  store i32 %202, i32* %205, align 8
  %206 = load i32, i32* %9, align 4
  %207 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %208 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 3
  store i32 %206, i32* %209, align 4
  %210 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %211 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp slt i64 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %201
  %216 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %217 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load i32, i32* %8, align 4
  %220 = sext i32 %219 to i64
  %221 = sub nsw i64 %218, %220
  %222 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %223 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 1
  store i64 %221, i64* %224, align 8
  br label %225

225:                                              ; preds = %215, %201
  store i32 0, i32* %3, align 4
  br label %226

226:                                              ; preds = %225, %198, %110, %97, %68, %51, %27
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
