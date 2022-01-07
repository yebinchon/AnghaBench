; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_mps_trc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_mps_trc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.trace_params = type { i32, i32, i32, i32*, i32*, i64, i32, i32 }
%struct.adapter = type { i32*, %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"tracer is disabled\0A\00", align 1
@TRACE_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"illegal trace pattern skip offset\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_NPORTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"tracer %u is assigned to non-existing port\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"tracer is capturing %s %s, \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"Rx\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"Tx\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"tracer is capturing loopback %d, \00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"snap length: %u, min length: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"packets captured %smatch filter\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"do not \00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"filter pattern: \00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"%08x%08x\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"@0\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"@%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mps_trc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mps_trc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.trace_params, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.adapter*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = zext i32 %13 to i64
  %15 = and i64 %14, 3
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %18 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sub i32 %19, %20
  %22 = zext i32 %21 to i64
  %23 = inttoptr i64 %22 to %struct.adapter*
  store %struct.adapter* %23, %struct.adapter** %10, align 8
  %24 = load %struct.adapter*, %struct.adapter** %10, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @t4_get_trace_filter(%struct.adapter* %24, %struct.trace_params* %8, i32 %25, i32* %6)
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %31 = call i32 @seq_puts(%struct.seq_file* %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %238

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %34, 8
  %36 = load i32, i32* @TRACE_LEN, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.adapter*, %struct.adapter** %10, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i32, i8*, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %238

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %8, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 8
  br i1 %48, label %49, label %87

49:                                               ; preds = %45
  %50 = load %struct.adapter*, %struct.adapter** %10, align 8
  %51 = getelementptr inbounds %struct.adapter, %struct.adapter* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %8, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 3
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @MAX_NPORTS, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %49
  %63 = load %struct.adapter*, %struct.adapter** %10, align 8
  %64 = getelementptr inbounds %struct.adapter, %struct.adapter* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 (i32, i8*, ...) @dev_err(i32 %65, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %238

70:                                               ; preds = %49
  %71 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %72 = load %struct.adapter*, %struct.adapter** %10, align 8
  %73 = getelementptr inbounds %struct.adapter, %struct.adapter* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %74, i64 %76
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %8, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %82, 4
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %86 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %80, i8* %85)
  br label %93

87:                                               ; preds = %45
  %88 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %89 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %8, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 8
  %92 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %87, %70
  %94 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %95 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %8, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %8, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %96, i32 %98)
  %100 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %101 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %8, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %106 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %105)
  %107 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %8, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %169

110:                                              ; preds = %93
  %111 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %112 = call i32 @seq_puts(%struct.seq_file* %111, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %135, %110
  %114 = load i32, i32* %7, align 4
  %115 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %8, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = mul nsw i32 %116, 2
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %138

119:                                              ; preds = %113
  %120 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %121 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %8, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %8, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %126, i32 %133)
  br label %135

135:                                              ; preds = %119
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 2
  store i32 %137, i32* %7, align 4
  br label %113

138:                                              ; preds = %113
  %139 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %140 = call i32 @seq_putc(%struct.seq_file* %139, i8 signext 47)
  store i32 0, i32* %7, align 4
  br label %141

141:                                              ; preds = %163, %138
  %142 = load i32, i32* %7, align 4
  %143 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %8, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = mul nsw i32 %144, 2
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %166

147:                                              ; preds = %141
  %148 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %149 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %8, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %8, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %148, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %154, i32 %161)
  br label %163

163:                                              ; preds = %147
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 2
  store i32 %165, i32* %7, align 4
  br label %141

166:                                              ; preds = %141
  %167 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %168 = call i32 @seq_puts(%struct.seq_file* %167, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  br label %169

169:                                              ; preds = %166, %93
  %170 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %171 = call i32 @seq_puts(%struct.seq_file* %170, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %172 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %8, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = mul nsw i32 %173, 2
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %196, %169
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @TRACE_LEN, align 4
  %178 = sdiv i32 %177, 4
  %179 = icmp slt i32 %176, %178
  br i1 %179, label %180, label %199

180:                                              ; preds = %175
  %181 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %182 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %8, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %8, i32 0, i32 4
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %181, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %187, i32 %194)
  br label %196

196:                                              ; preds = %180
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %197, 2
  store i32 %198, i32* %7, align 4
  br label %175

199:                                              ; preds = %175
  %200 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %201 = call i32 @seq_putc(%struct.seq_file* %200, i8 signext 47)
  %202 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %8, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = mul nsw i32 %203, 2
  store i32 %204, i32* %7, align 4
  br label %205

205:                                              ; preds = %226, %199
  %206 = load i32, i32* %7, align 4
  %207 = load i32, i32* @TRACE_LEN, align 4
  %208 = sdiv i32 %207, 4
  %209 = icmp slt i32 %206, %208
  br i1 %209, label %210, label %229

210:                                              ; preds = %205
  %211 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %212 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %8, i32 0, i32 3
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %7, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %8, i32 0, i32 3
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %7, align 4
  %221 = add nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %211, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %217, i32 %224)
  br label %226

226:                                              ; preds = %210
  %227 = load i32, i32* %7, align 4
  %228 = add nsw i32 %227, 2
  store i32 %228, i32* %7, align 4
  br label %205

229:                                              ; preds = %205
  %230 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %231 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %8, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %8, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = add nsw i32 %232, %234
  %236 = mul nsw i32 %235, 8
  %237 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %230, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %236)
  store i32 0, i32* %3, align 4
  br label %238

238:                                              ; preds = %229, %62, %38, %29
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local i32 @t4_get_trace_filter(%struct.adapter*, %struct.trace_params*, i32, i32*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
