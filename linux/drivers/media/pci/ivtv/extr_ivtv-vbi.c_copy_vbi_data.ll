; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-vbi.c_copy_vbi_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-vbi.c_copy_vbi_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32**, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, i32, i32* }

@copy_vbi_data.mpeg_hdr_data = internal constant [32 x i32] [i32 0, i32 0, i32 1, i32 186, i32 68, i32 0, i32 12, i32 102, i32 36, i32 1, i32 1, i32 209, i32 211, i32 250, i32 255, i32 255, i32 0, i32 0, i32 1, i32 189, i32 0, i32 26, i32 132, i32 128, i32 7, i32 33, i32 0, i32 93, i32 99, i32 167, i32 255, i32 255], align 16
@IVTV_VBI_FRAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ITV0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"itv0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*, i32, i32)* @copy_vbi_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_vbi_data(%struct.ivtv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ivtv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 8, i1 false)
  store i32 128, i32* %11, align 4
  %17 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %18 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IVTV_VBI_FRAMES, align 4
  %22 = srem i32 %20, %21
  store i32 %22, i32* %12, align 4
  %23 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %24 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32* %31, i32** %13, align 8
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %126, %3
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %129

36:                                               ; preds = %32
  %37 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %38 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %126

48:                                               ; preds = %36
  %49 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %50 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 6
  store i32 %58, i32* %15, align 4
  %59 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %60 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %48
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, 18
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %70, %48
  %74 = load i32, i32* %15, align 4
  %75 = icmp slt i32 %74, 32
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i32, i32* %15, align 4
  %78 = shl i32 1, %77
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 4
  br label %89

82:                                               ; preds = %73
  %83 = load i32, i32* %15, align 4
  %84 = sub nsw i32 %83, 32
  %85 = shl i32 1, %84
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %85
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %82, %76
  %90 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %91 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @ivtv_service2vbi(i64 %98)
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* %7, align 4
  %102 = mul nsw i32 %101, 43
  %103 = add nsw i32 140, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  store i32 %99, i32* %105, align 4
  %106 = load i32*, i32** %13, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 128
  %108 = getelementptr inbounds i32, i32* %107, i64 12
  %109 = load i32, i32* %7, align 4
  %110 = mul nsw i32 %109, 43
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %115 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 (i32*, ...) @memcpy(i32* %113, i32* %122, i32 42)
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %89, %47
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %32

129:                                              ; preds = %32
  %130 = load i32*, i32** %13, align 8
  %131 = call i32 (i32*, ...) @memcpy(i32* %130, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @copy_vbi_data.mpeg_hdr_data, i64 0, i64 0), i64 128)
  %132 = load i32, i32* %7, align 4
  %133 = icmp eq i32 %132, 36
  br i1 %133, label %134, label %153

134:                                              ; preds = %129
  %135 = load i32*, i32** %13, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 128
  %137 = call i32 (i32*, ...) @memcpy(i32* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %138 = load i32*, i32** %13, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 128
  %140 = getelementptr inbounds i32, i32* %139, i64 4
  %141 = load i32*, i32** %13, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 128
  %143 = getelementptr inbounds i32, i32* %142, i64 12
  %144 = load i32, i32* %7, align 4
  %145 = mul nsw i32 %144, 43
  %146 = call i32 @memmove(i32* %140, i32* %143, i32 %145)
  %147 = load i32, i32* %7, align 4
  %148 = mul nsw i32 43, %147
  %149 = add nsw i32 %148, 3
  %150 = and i32 %149, -4
  %151 = add nsw i32 4, %150
  %152 = trunc i32 %151 to i16
  store i16 %152, i16* %10, align 2
  br label %172

153:                                              ; preds = %129
  %154 = load i32*, i32** %13, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 128
  %156 = call i32 (i32*, ...) @memcpy(i32* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %158 = call i32 @cpu_to_le32s(i32* %157)
  %159 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %160 = call i32 @cpu_to_le32s(i32* %159)
  %161 = load i32*, i32** %13, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 128
  %163 = getelementptr inbounds i32, i32* %162, i64 4
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %165 = call i32 (i32*, ...) @memcpy(i32* %163, i32* %164, i32 8)
  %166 = load i32, i32* %7, align 4
  %167 = mul nsw i32 43, %166
  %168 = add nsw i32 %167, 3
  %169 = and i32 %168, -4
  %170 = add nsw i32 12, %169
  %171 = trunc i32 %170 to i16
  store i16 %171, i16* %10, align 2
  br label %172

172:                                              ; preds = %153, %134
  %173 = load i16, i16* %10, align 2
  %174 = zext i16 %173 to i32
  %175 = add nsw i32 %174, 10
  %176 = ashr i32 %175, 8
  %177 = load i32*, i32** %13, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 20
  store i32 %176, i32* %178, align 4
  %179 = load i16, i16* %10, align 2
  %180 = zext i16 %179 to i32
  %181 = add nsw i32 %180, 10
  %182 = and i32 %181, 255
  %183 = load i32*, i32** %13, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 21
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* %6, align 4
  %186 = ashr i32 %185, 29
  %187 = and i32 %186, 6
  %188 = or i32 33, %187
  %189 = load i32*, i32** %13, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 25
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* %6, align 4
  %192 = ashr i32 %191, 22
  %193 = and i32 %192, 255
  %194 = load i32*, i32** %13, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 26
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* %6, align 4
  %197 = ashr i32 %196, 14
  %198 = and i32 %197, 255
  %199 = or i32 1, %198
  %200 = load i32*, i32** %13, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 27
  store i32 %199, i32* %201, align 4
  %202 = load i32, i32* %6, align 4
  %203 = ashr i32 %202, 7
  %204 = and i32 %203, 255
  %205 = load i32*, i32** %13, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 28
  store i32 %204, i32* %206, align 4
  %207 = load i32, i32* %6, align 4
  %208 = and i32 %207, 127
  %209 = shl i32 %208, 1
  %210 = or i32 1, %209
  %211 = load i32*, i32** %13, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 29
  store i32 %210, i32* %212, align 4
  %213 = load i16, i16* %10, align 2
  %214 = zext i16 %213 to i32
  %215 = add nsw i32 128, %214
  %216 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %217 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 2
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %12, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 %215, i32* %222, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ivtv_service2vbi(i64) #2

declare dso_local i32 @memcpy(i32*, ...) #2

declare dso_local i32 @memmove(i32*, i32*, i32) #2

declare dso_local i32 @cpu_to_le32s(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
