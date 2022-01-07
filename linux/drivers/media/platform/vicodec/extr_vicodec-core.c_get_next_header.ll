; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_get_next_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_get_next_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vicodec_ctx = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@get_next_header.magic = internal constant [8 x i32] [i32 79, i32 79, i32 79, i32 79, i32 255, i32 255, i32 255, i32 255], align 16
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vicodec_ctx*, i32**, i32)* @get_next_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_next_header(%struct.vicodec_ctx* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vicodec_ctx*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vicodec_ctx* %0, %struct.vicodec_ctx** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32**, i32*** %6, align 8
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32* %17, i32** %10, align 8
  %18 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %139, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %124, %23
  %26 = load i32*, i32** %8, align 8
  %27 = load i32**, i32*** %6, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = icmp ult i32* %26, %31
  br i1 %32, label %33, label %127

33:                                               ; preds = %25
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* @get_next_header.magic, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32**, i32*** %6, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32*, i32** %8, align 8
  %46 = ptrtoint i32* %44 to i64
  %47 = ptrtoint i32* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = call i32* @memchr(i32* %34, i32 %39, i32 %50)
  store i32* %51, i32** %8, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %33
  %55 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %56 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load i32**, i32*** %6, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32* %61, i32** %8, align 8
  br label %127

62:                                               ; preds = %33
  %63 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %64 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub i64 32, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %11, align 4
  %68 = load i32**, i32*** %6, align 8
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32*, i32** %8, align 8
  %74 = ptrtoint i32* %72 to i64
  %75 = ptrtoint i32* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 4
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %62
  %82 = load i32**, i32*** %6, align 8
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32*, i32** %8, align 8
  %88 = ptrtoint i32* %86 to i64
  %89 = ptrtoint i32* %87 to i64
  %90 = sub i64 %88, %89
  %91 = sdiv exact i64 %90, 4
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %81, %62
  %94 = load i32*, i32** %10, align 8
  %95 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %96 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @memcpy(i32* %98, i32* %99, i32 %100)
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %105 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, %103
  store i64 %107, i64* %105, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %110 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @memcmp(i32* %108, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @get_next_header.magic, i64 0, i64 0), i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %93
  %116 = load i32, i32* %11, align 4
  %117 = load i32*, i32** %8, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %8, align 8
  %120 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  store i32 %120, i32* %9, align 4
  br label %127

121:                                              ; preds = %93
  %122 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %123 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %122, i32 0, i32 1
  store i64 0, i64* %123, align 8
  br label %124

124:                                              ; preds = %121
  %125 = load i32*, i32** %8, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %8, align 8
  br label %25

127:                                              ; preds = %115, %54, %25
  %128 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %129 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ult i64 %130, 32
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load i32*, i32** %8, align 8
  %134 = load i32**, i32*** %6, align 8
  store i32* %133, i32** %134, align 8
  %135 = load i32, i32* %9, align 4
  store i32 %135, i32* %4, align 4
  br label %200

136:                                              ; preds = %127
  %137 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %138 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %137, i32 0, i32 0
  store i32 32, i32* %138, align 8
  br label %139

139:                                              ; preds = %136, %3
  %140 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %141 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = icmp ult i64 %143, 4
  br i1 %144, label %145, label %196

145:                                              ; preds = %139
  %146 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %147 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = sub i64 4, %149
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %12, align 4
  %152 = load i32**, i32*** %6, align 8
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32*, i32** %8, align 8
  %158 = ptrtoint i32* %156 to i64
  %159 = ptrtoint i32* %157 to i64
  %160 = sub i64 %158, %159
  %161 = sdiv exact i64 %160, 4
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = icmp slt i64 %161, %163
  br i1 %164, label %165, label %177

165:                                              ; preds = %145
  %166 = load i32**, i32*** %6, align 8
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32*, i32** %8, align 8
  %172 = ptrtoint i32* %170 to i64
  %173 = ptrtoint i32* %171 to i64
  %174 = sub i64 %172, %173
  %175 = sdiv exact i64 %174, 4
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %12, align 4
  br label %177

177:                                              ; preds = %165, %145
  %178 = load i32*, i32** %10, align 8
  %179 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %180 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %178, i64 %182
  %184 = load i32*, i32** %8, align 8
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @memcpy(i32* %183, i32* %184, i32 %185)
  %187 = load i32, i32* %12, align 4
  %188 = load i32*, i32** %8, align 8
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  store i32* %190, i32** %8, align 8
  %191 = load i32, i32* %12, align 4
  %192 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %193 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %194, %191
  store i32 %195, i32* %193, align 8
  br label %196

196:                                              ; preds = %177, %139
  %197 = load i32*, i32** %8, align 8
  %198 = load i32**, i32*** %6, align 8
  store i32* %197, i32** %198, align 8
  %199 = load i32, i32* %9, align 4
  store i32 %199, i32* %4, align 4
  br label %200

200:                                              ; preds = %196, %132
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local i32* @memchr(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
