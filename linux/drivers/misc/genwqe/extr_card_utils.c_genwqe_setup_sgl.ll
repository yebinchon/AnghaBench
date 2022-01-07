; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_utils.c_genwqe_setup_sgl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_utils.c_genwqe_setup_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { i32 }
%struct.genwqe_sgl = type { i64, i64, i32, i64, i64, i64, i32*, i32*, %struct.sg_entry* }
%struct.sg_entry = type { i8*, i8*, i8* }

@SG_CHAINED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@SG_DATA = common dso_local global i32 0, align 4
@SG_END_LIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genwqe_setup_sgl(%struct.genwqe_dev* %0, %struct.genwqe_sgl* %1, i64* %2) #0 {
  %4 = alloca %struct.genwqe_dev*, align 8
  %5 = alloca %struct.genwqe_sgl*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.sg_entry*, align 8
  %14 = alloca %struct.sg_entry*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %4, align 8
  store %struct.genwqe_sgl* %1, %struct.genwqe_sgl** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %12, align 8
  store %struct.sg_entry* null, %struct.sg_entry** %14, align 8
  %19 = load %struct.genwqe_sgl*, %struct.genwqe_sgl** %5, align 8
  %20 = getelementptr inbounds %struct.genwqe_sgl, %struct.genwqe_sgl* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %15, align 8
  store i64 128, i64* %10, align 8
  %22 = load %struct.genwqe_sgl*, %struct.genwqe_sgl** %5, align 8
  %23 = getelementptr inbounds %struct.genwqe_sgl, %struct.genwqe_sgl* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %11, align 8
  %25 = load %struct.genwqe_sgl*, %struct.genwqe_sgl** %5, align 8
  %26 = getelementptr inbounds %struct.genwqe_sgl, %struct.genwqe_sgl* %25, i32 0, i32 8
  %27 = load %struct.sg_entry*, %struct.sg_entry** %26, align 8
  %28 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %27, i64 0
  store %struct.sg_entry* %28, %struct.sg_entry** %13, align 8
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %182, %3
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.genwqe_sgl*, %struct.genwqe_sgl** %5, align 8
  %32 = getelementptr inbounds %struct.genwqe_sgl, %struct.genwqe_sgl* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %187

35:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  %36 = load %struct.genwqe_sgl*, %struct.genwqe_sgl** %5, align 8
  %37 = getelementptr inbounds %struct.genwqe_sgl, %struct.genwqe_sgl* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %38, %39
  %41 = call i8* @cpu_to_be64(i64 %40)
  %42 = load %struct.sg_entry*, %struct.sg_entry** %13, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %42, i64 %44
  %46 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %45, i32 0, i32 2
  store i8* %41, i8** %46, align 8
  %47 = call i8* @cpu_to_be32(i32 128)
  %48 = load %struct.sg_entry*, %struct.sg_entry** %13, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %48, i64 %50
  %52 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %51, i32 0, i32 1
  store i8* %47, i8** %52, align 8
  %53 = load i32, i32* @SG_CHAINED, align 4
  %54 = call i8* @cpu_to_be32(i32 %53)
  %55 = load %struct.sg_entry*, %struct.sg_entry** %13, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %55, i64 %57
  %59 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %58, i32 0, i32 0
  store i8* %54, i8** %59, align 8
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %181, %136, %35
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 8
  br i1 %64, label %65, label %182

65:                                               ; preds = %62
  %66 = load i64, i64* %15, align 8
  %67 = load i64, i64* @PAGE_SIZE, align 8
  %68 = load i64, i64* %11, align 8
  %69 = sub i64 %67, %68
  %70 = call i32 @min(i64 %66, i64 %69)
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %65
  %74 = load %struct.genwqe_sgl*, %struct.genwqe_sgl** %5, align 8
  %75 = getelementptr inbounds %struct.genwqe_sgl, %struct.genwqe_sgl* %74, i32 0, i32 7
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.genwqe_sgl*, %struct.genwqe_sgl** %5, align 8
  %80 = getelementptr inbounds %struct.genwqe_sgl, %struct.genwqe_sgl* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %11, align 8
  %83 = add i64 %81, %82
  store i64 %83, i64* %16, align 8
  br label %109

84:                                               ; preds = %73, %65
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.genwqe_sgl*, %struct.genwqe_sgl** %5, align 8
  %87 = getelementptr inbounds %struct.genwqe_sgl, %struct.genwqe_sgl* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, 1
  %90 = icmp eq i32 %85, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %84
  %92 = load %struct.genwqe_sgl*, %struct.genwqe_sgl** %5, align 8
  %93 = getelementptr inbounds %struct.genwqe_sgl, %struct.genwqe_sgl* %92, i32 0, i32 6
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.genwqe_sgl*, %struct.genwqe_sgl** %5, align 8
  %98 = getelementptr inbounds %struct.genwqe_sgl, %struct.genwqe_sgl* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %16, align 8
  br label %108

100:                                              ; preds = %91, %84
  %101 = load i64*, i64** %6, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %11, align 8
  %107 = add i64 %105, %106
  store i64 %107, i64* %16, align 8
  br label %108

108:                                              ; preds = %100, %96
  br label %109

109:                                              ; preds = %108, %78
  %110 = load i32, i32* %17, align 4
  %111 = zext i32 %110 to i64
  %112 = load i64, i64* %15, align 8
  %113 = sub i64 %112, %111
  store i64 %113, i64* %15, align 8
  store i64 0, i64* %11, align 8
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* %16, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %141

117:                                              ; preds = %109
  %118 = load %struct.sg_entry*, %struct.sg_entry** %14, align 8
  %119 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @be32_to_cpu(i8* %120)
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* %17, align 4
  %124 = add i32 %122, %123
  %125 = call i8* @cpu_to_be32(i32 %124)
  %126 = load %struct.sg_entry*, %struct.sg_entry** %14, align 8
  %127 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.genwqe_sgl*, %struct.genwqe_sgl** %5, align 8
  %132 = getelementptr inbounds %struct.genwqe_sgl, %struct.genwqe_sgl* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %130, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %117
  br label %188

136:                                              ; preds = %117
  %137 = load i64, i64* %16, align 8
  %138 = load i32, i32* %17, align 4
  %139 = zext i32 %138 to i64
  %140 = add nsw i64 %137, %139
  store i64 %140, i64* %12, align 8
  br label %62

141:                                              ; preds = %109
  %142 = load i64, i64* %16, align 8
  %143 = call i8* @cpu_to_be64(i64 %142)
  %144 = load %struct.sg_entry*, %struct.sg_entry** %13, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %144, i64 %146
  %148 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %147, i32 0, i32 2
  store i8* %143, i8** %148, align 8
  %149 = load i32, i32* %17, align 4
  %150 = call i8* @cpu_to_be32(i32 %149)
  %151 = load %struct.sg_entry*, %struct.sg_entry** %13, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %151, i64 %153
  %155 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %154, i32 0, i32 1
  store i8* %150, i8** %155, align 8
  %156 = load i32, i32* @SG_DATA, align 4
  %157 = call i8* @cpu_to_be32(i32 %156)
  %158 = load %struct.sg_entry*, %struct.sg_entry** %13, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %158, i64 %160
  %162 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %161, i32 0, i32 0
  store i8* %157, i8** %162, align 8
  %163 = load i64, i64* %16, align 8
  %164 = load i32, i32* %17, align 4
  %165 = zext i32 %164 to i64
  %166 = add nsw i64 %163, %165
  store i64 %166, i64* %12, align 8
  %167 = load %struct.sg_entry*, %struct.sg_entry** %13, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %167, i64 %169
  store %struct.sg_entry* %170, %struct.sg_entry** %14, align 8
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.genwqe_sgl*, %struct.genwqe_sgl** %5, align 8
  %177 = getelementptr inbounds %struct.genwqe_sgl, %struct.genwqe_sgl* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = icmp eq i32 %175, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %141
  br label %188

181:                                              ; preds = %141
  br label %62

182:                                              ; preds = %62
  %183 = load i64, i64* %10, align 8
  %184 = add i64 %183, 128
  store i64 %184, i64* %10, align 8
  %185 = load %struct.sg_entry*, %struct.sg_entry** %13, align 8
  %186 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %185, i64 8
  store %struct.sg_entry* %186, %struct.sg_entry** %13, align 8
  br label %29

187:                                              ; preds = %29
  br label %188

188:                                              ; preds = %187, %180, %135
  %189 = load i32, i32* %8, align 4
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load %struct.sg_entry*, %struct.sg_entry** %13, align 8
  %193 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %192, i64 -8
  store %struct.sg_entry* %193, %struct.sg_entry** %13, align 8
  store i32 7, i32* %8, align 4
  br label %194

194:                                              ; preds = %191, %188
  store i32 0, i32* %7, align 4
  br label %195

195:                                              ; preds = %211, %194
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* %8, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %214

199:                                              ; preds = %195
  %200 = load %struct.sg_entry*, %struct.sg_entry** %13, align 8
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %200, i64 %202
  %204 = load %struct.sg_entry*, %struct.sg_entry** %13, align 8
  %205 = load i32, i32* %7, align 4
  %206 = add nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %204, i64 %207
  %209 = bitcast %struct.sg_entry* %203 to i8*
  %210 = bitcast %struct.sg_entry* %208 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %209, i8* align 8 %210, i64 24, i1 false)
  br label %211

211:                                              ; preds = %199
  %212 = load i32, i32* %7, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %7, align 4
  br label %195

214:                                              ; preds = %195
  %215 = call i8* @cpu_to_be64(i64 0)
  %216 = load %struct.sg_entry*, %struct.sg_entry** %13, align 8
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %216, i64 %218
  %220 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %219, i32 0, i32 2
  store i8* %215, i8** %220, align 8
  %221 = call i8* @cpu_to_be32(i32 0)
  %222 = load %struct.sg_entry*, %struct.sg_entry** %13, align 8
  %223 = load i32, i32* %7, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %222, i64 %224
  %226 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %225, i32 0, i32 1
  store i8* %221, i8** %226, align 8
  %227 = load i32, i32* @SG_END_LIST, align 4
  %228 = call i8* @cpu_to_be32(i32 %227)
  %229 = load %struct.sg_entry*, %struct.sg_entry** %13, align 8
  %230 = load i32, i32* %7, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %229, i64 %231
  %233 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %232, i32 0, i32 0
  store i8* %228, i8** %233, align 8
  ret i32 0
}

declare dso_local i8* @cpu_to_be64(i64) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
