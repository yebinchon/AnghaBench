; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_write_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_write_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32, %struct.docg3* }
%struct.docg3 = type { i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.mtd_oob_ops = type { i64, i64, i32, i64, i64, i32, i32*, i32* }

@DOC_LAYOUT_OOB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"doc_write_oob(from=%lld, mode=%d, data=(%p:%zu), oob=(%p:%zu))\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DOC_LAYOUT_PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)* @doc_write_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doc_write_oob(%struct.mtd_info* %0, i64 %1, %struct.mtd_oob_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mtd_oob_ops*, align 8
  %8 = alloca %struct.docg3*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.mtd_oob_ops* %2, %struct.mtd_oob_ops** %7, align 8
  %19 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %20 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %19, i32 0, i32 2
  %21 = load %struct.docg3*, %struct.docg3** %20, align 8
  store %struct.docg3* %21, %struct.docg3** %8, align 8
  %22 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %23 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %12, align 8
  %25 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %26 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %25, i32 0, i32 6
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %13, align 8
  %28 = load i32, i32* @DOC_LAYOUT_OOB_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %16, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %17, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %36 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %14, align 8
  br label %39

38:                                               ; preds = %3
  store i64 0, i64* %14, align 8
  br label %39

39:                                               ; preds = %38, %34
  %40 = load i32*, i32** %12, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %44 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %15, align 8
  br label %47

46:                                               ; preds = %39
  store i64 0, i64* %15, align 8
  br label %47

47:                                               ; preds = %46, %42
  %48 = load i32*, i32** %12, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %52 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 129
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %57 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %12, align 8
  br label %62

62:                                               ; preds = %55, %50, %47
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %65 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = load i64, i64* %14, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = load i64, i64* %15, align 8
  %71 = call i32 @doc_dbg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %63, i32 %66, i32* %67, i64 %68, i32* %69, i64 %70)
  %72 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %73 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  switch i32 %74, label %83 [
    i32 129, label %75
    i32 128, label %75
    i32 130, label %79
  ]

75:                                               ; preds = %62, %62
  %76 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %77 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %11, align 4
  br label %86

79:                                               ; preds = %62
  %80 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %81 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %11, align 4
  br label %86

83:                                               ; preds = %62
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %250

86:                                               ; preds = %79, %75
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* @DOC_LAYOUT_PAGE_SIZE, align 8
  %89 = urem i64 %87, %88
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %86
  %92 = load i64, i64* %15, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = urem i64 %92, %94
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %91
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* @DOC_LAYOUT_PAGE_SIZE, align 8
  %100 = urem i64 %98, %99
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97, %91, %86
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %250

105:                                              ; preds = %97
  %106 = load i64, i64* %14, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %105
  %109 = load i64, i64* %15, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %108
  %112 = load i64, i64* %14, align 8
  %113 = load i64, i64* @DOC_LAYOUT_PAGE_SIZE, align 8
  %114 = udiv i64 %112, %113
  %115 = load i64, i64* %15, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = udiv i64 %115, %117
  %119 = icmp ne i64 %114, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %111
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %250

123:                                              ; preds = %111, %108, %105
  %124 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %125 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %124, i32 0, i32 4
  store i64 0, i64* %125, align 8
  %126 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %127 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %126, i32 0, i32 3
  store i64 0, i64* %127, align 8
  store i32 0, i32* %9, align 4
  %128 = load i64, i64* %14, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %123
  %131 = load i64, i64* %15, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %250

136:                                              ; preds = %130, %123
  %137 = load i64, i64* %14, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = load i64, i64* %15, align 8
  %141 = icmp ugt i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load %struct.docg3*, %struct.docg3** %8, align 8
  %144 = load i64, i64* %6, align 8
  %145 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %146 = call i32 @doc_backup_oob(%struct.docg3* %143, i64 %144, %struct.mtd_oob_ops* %145)
  store i32 %146, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %250

147:                                              ; preds = %139, %136
  %148 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %149 = call i32 @doc_guess_autoecc(%struct.mtd_oob_ops* %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = load i32, i32* %10, align 4
  store i32 %153, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %250

154:                                              ; preds = %147
  %155 = load %struct.docg3*, %struct.docg3** %8, align 8
  %156 = getelementptr inbounds %struct.docg3, %struct.docg3* %155, i32 0, i32 1
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = call i32 @mutex_lock(i32* %158)
  br label %160

160:                                              ; preds = %235, %154
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %160
  %164 = load i64, i64* %14, align 8
  %165 = icmp ugt i64 %164, 0
  br label %166

166:                                              ; preds = %163, %160
  %167 = phi i1 [ false, %160 ], [ %165, %163 ]
  br i1 %167, label %168, label %241

168:                                              ; preds = %166
  %169 = mul nuw i64 4, %29
  %170 = trunc i64 %169 to i32
  %171 = call i32 @memset(i32* %31, i32 0, i32 %170)
  %172 = load i64, i64* %6, align 8
  %173 = load %struct.docg3*, %struct.docg3** %8, align 8
  %174 = getelementptr inbounds %struct.docg3, %struct.docg3* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %172, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %168
  %178 = load %struct.docg3*, %struct.docg3** %8, align 8
  %179 = getelementptr inbounds %struct.docg3, %struct.docg3* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* @DOC_LAYOUT_OOB_SIZE, align 4
  %182 = call i32 @memcpy(i32* %31, i32* %180, i32 %181)
  br label %203

183:                                              ; preds = %168
  %184 = load i64, i64* %15, align 8
  %185 = icmp ugt i64 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %183
  %187 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %188 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %189, 130
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load i32*, i32** %12, align 8
  %193 = call i32 @doc_fill_autooob(i32* %31, i32* %192)
  br label %202

194:                                              ; preds = %186, %183
  %195 = load i64, i64* %15, align 8
  %196 = icmp ugt i64 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %194
  %198 = load i32*, i32** %12, align 8
  %199 = load i32, i32* @DOC_LAYOUT_OOB_SIZE, align 4
  %200 = call i32 @memcpy(i32* %31, i32* %198, i32 %199)
  br label %201

201:                                              ; preds = %197, %194
  br label %202

202:                                              ; preds = %201, %191
  br label %203

203:                                              ; preds = %202, %177
  %204 = load %struct.docg3*, %struct.docg3** %8, align 8
  %205 = load i64, i64* %6, align 8
  %206 = load i32*, i32** %13, align 8
  %207 = load i32, i32* %10, align 4
  %208 = call i32 @doc_write_page(%struct.docg3* %204, i64 %205, i32* %206, i32* %31, i32 %207)
  store i32 %208, i32* %9, align 4
  %209 = load i64, i64* @DOC_LAYOUT_PAGE_SIZE, align 8
  %210 = load i64, i64* %6, align 8
  %211 = add i64 %210, %209
  store i64 %211, i64* %6, align 8
  %212 = load i64, i64* @DOC_LAYOUT_PAGE_SIZE, align 8
  %213 = load i64, i64* %14, align 8
  %214 = sub i64 %213, %212
  store i64 %214, i64* %14, align 8
  %215 = load i64, i64* @DOC_LAYOUT_PAGE_SIZE, align 8
  %216 = load i32*, i32** %13, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 %215
  store i32* %217, i32** %13, align 8
  %218 = load i64, i64* %15, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %235

220:                                              ; preds = %203
  %221 = load i32, i32* %11, align 4
  %222 = load i32*, i32** %12, align 8
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  store i32* %224, i32** %12, align 8
  %225 = load i32, i32* %11, align 4
  %226 = sext i32 %225 to i64
  %227 = load i64, i64* %15, align 8
  %228 = sub i64 %227, %226
  store i64 %228, i64* %15, align 8
  %229 = load i32, i32* %11, align 4
  %230 = sext i32 %229 to i64
  %231 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %232 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %231, i32 0, i32 4
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %233, %230
  store i64 %234, i64* %232, align 8
  br label %235

235:                                              ; preds = %220, %203
  %236 = load i64, i64* @DOC_LAYOUT_PAGE_SIZE, align 8
  %237 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %238 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %237, i32 0, i32 3
  %239 = load i64, i64* %238, align 8
  %240 = add i64 %239, %236
  store i64 %240, i64* %238, align 8
  br label %160

241:                                              ; preds = %166
  %242 = load %struct.docg3*, %struct.docg3** %8, align 8
  %243 = call i32 @doc_set_device_id(%struct.docg3* %242, i32 0)
  %244 = load %struct.docg3*, %struct.docg3** %8, align 8
  %245 = getelementptr inbounds %struct.docg3, %struct.docg3* %244, i32 0, i32 1
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 0
  %248 = call i32 @mutex_unlock(i32* %247)
  %249 = load i32, i32* %9, align 4
  store i32 %249, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %250

250:                                              ; preds = %241, %152, %142, %133, %120, %102, %83
  %251 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %251)
  %252 = load i32, i32* %4, align 4
  ret i32 %252
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @doc_dbg(i8*, i64, i32, i32*, i64, i32*, i64) #2

declare dso_local i32 @doc_backup_oob(%struct.docg3*, i64, %struct.mtd_oob_ops*) #2

declare dso_local i32 @doc_guess_autoecc(%struct.mtd_oob_ops*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @doc_fill_autooob(i32*, i32*) #2

declare dso_local i32 @doc_write_page(%struct.docg3*, i64, i32*, i32*, i32) #2

declare dso_local i32 @doc_set_device_id(%struct.docg3*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
