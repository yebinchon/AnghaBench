; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_icm.c_mlx4_init_icm_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_icm.c_mlx4_init_icm_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_icm_table = type { i32, i32, i32, i32, i32, %struct.TYPE_6__**, i32, i64 }
%struct.TYPE_6__ = type { i32 }

@MLX4_TABLE_CHUNK_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@MLX4_ICM_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_init_icm_table(%struct.mlx4_dev* %0, %struct.mlx4_icm_table* %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_dev*, align 8
  %11 = alloca %struct.mlx4_icm_table*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %10, align 8
  store %struct.mlx4_icm_table* %1, %struct.mlx4_icm_table** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %23 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  %24 = load i32, i32* %13, align 4
  %25 = sdiv i32 %23, %24
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %18, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %8
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %226

35:                                               ; preds = %8
  %36 = load i64, i64* %14, align 8
  %37 = load i32, i32* %18, align 4
  %38 = call i32 @DIV_ROUND_UP(i64 %36, i32 %37)
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* %19, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.TYPE_6__** @kvcalloc(i32 %39, i32 8, i32 %40)
  %42 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %43 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %42, i32 0, i32 5
  store %struct.TYPE_6__** %41, %struct.TYPE_6__*** %43, align 8
  %44 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %45 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %44, i32 0, i32 5
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %45, align 8
  %47 = icmp ne %struct.TYPE_6__** %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %35
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %9, align 4
  br label %226

51:                                               ; preds = %35
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %54 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %19, align 4
  %56 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %57 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i64, i64* %14, align 8
  %59 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %60 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %59, i32 0, i32 7
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %63 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %16, align 4
  %65 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %66 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %69 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %71 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %70, i32 0, i32 6
  %72 = call i32 @mutex_init(i32* %71)
  %73 = load i64, i64* %14, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* %13, align 4
  %76 = mul nsw i32 %74, %75
  store i32 %76, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %77

77:                                               ; preds = %176, %51
  %78 = load i32, i32* %21, align 4
  %79 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %13, align 4
  %83 = mul nsw i32 %81, %82
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %179

85:                                               ; preds = %77
  %86 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  store i32 %86, i32* %20, align 4
  %87 = load i32, i32* %21, align 4
  %88 = add nsw i32 %87, 1
  %89 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32, i32* %22, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %85
  %94 = load i32, i32* %22, align 4
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  %97 = mul nsw i32 %95, %96
  %98 = sub nsw i32 %94, %97
  %99 = call i32 @PAGE_ALIGN(i32 %98)
  store i32 %99, i32* %20, align 4
  br label %100

100:                                              ; preds = %93, %85
  %101 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %102 = load i32, i32* %20, align 4
  %103 = load i32, i32* @PAGE_SHIFT, align 4
  %104 = lshr i32 %102, %103
  %105 = load i32, i32* %16, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i32, i32* @GFP_KERNEL, align 4
  br label %111

109:                                              ; preds = %100
  %110 = load i32, i32* @GFP_HIGHUSER, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = load i32, i32* @__GFP_NOWARN, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* %17, align 4
  %116 = call %struct.TYPE_6__* @mlx4_alloc_icm(%struct.mlx4_dev* %101, i32 %104, i32 %114, i32 %115)
  %117 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %118 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %117, i32 0, i32 5
  %119 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %118, align 8
  %120 = load i32, i32* %21, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %119, i64 %121
  store %struct.TYPE_6__* %116, %struct.TYPE_6__** %122, align 8
  %123 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %124 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %123, i32 0, i32 5
  %125 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %124, align 8
  %126 = load i32, i32* %21, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %125, i64 %127
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = icmp ne %struct.TYPE_6__* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %111
  br label %180

132:                                              ; preds = %111
  %133 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %134 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %135 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %134, i32 0, i32 5
  %136 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %135, align 8
  %137 = load i32, i32* %21, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %136, i64 %138
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %21, align 4
  %143 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  %144 = mul nsw i32 %142, %143
  %145 = add nsw i32 %141, %144
  %146 = call i64 @mlx4_MAP_ICM(%struct.mlx4_dev* %133, %struct.TYPE_6__* %140, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %165

148:                                              ; preds = %132
  %149 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %150 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %151 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %150, i32 0, i32 5
  %152 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %151, align 8
  %153 = load i32, i32* %21, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %152, i64 %154
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = load i32, i32* %17, align 4
  %158 = call i32 @mlx4_free_icm(%struct.mlx4_dev* %149, %struct.TYPE_6__* %156, i32 %157)
  %159 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %160 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %159, i32 0, i32 5
  %161 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %160, align 8
  %162 = load i32, i32* %21, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %161, i64 %163
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %164, align 8
  br label %180

165:                                              ; preds = %132
  %166 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %167 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %166, i32 0, i32 5
  %168 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %167, align 8
  %169 = load i32, i32* %21, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %168, i64 %170
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %165
  %177 = load i32, i32* %21, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %21, align 4
  br label %77

179:                                              ; preds = %77
  store i32 0, i32* %9, align 4
  br label %226

180:                                              ; preds = %148, %131
  store i32 0, i32* %21, align 4
  br label %181

181:                                              ; preds = %216, %180
  %182 = load i32, i32* %21, align 4
  %183 = load i32, i32* %19, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %219

185:                                              ; preds = %181
  %186 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %187 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %186, i32 0, i32 5
  %188 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %187, align 8
  %189 = load i32, i32* %21, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %188, i64 %190
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = icmp ne %struct.TYPE_6__* %192, null
  br i1 %193, label %194, label %215

194:                                              ; preds = %185
  %195 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* %21, align 4
  %198 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  %199 = mul nsw i32 %197, %198
  %200 = add nsw i32 %196, %199
  %201 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  %202 = load i32, i32* @MLX4_ICM_PAGE_SIZE, align 4
  %203 = sdiv i32 %201, %202
  %204 = call i32 @mlx4_UNMAP_ICM(%struct.mlx4_dev* %195, i32 %200, i32 %203)
  %205 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %206 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %207 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %206, i32 0, i32 5
  %208 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %207, align 8
  %209 = load i32, i32* %21, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %208, i64 %210
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = load i32, i32* %17, align 4
  %214 = call i32 @mlx4_free_icm(%struct.mlx4_dev* %205, %struct.TYPE_6__* %212, i32 %213)
  br label %215

215:                                              ; preds = %194, %185
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %21, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %21, align 4
  br label %181

219:                                              ; preds = %181
  %220 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %11, align 8
  %221 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %220, i32 0, i32 5
  %222 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %221, align 8
  %223 = call i32 @kvfree(%struct.TYPE_6__** %222)
  %224 = load i32, i32* @ENOMEM, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %9, align 4
  br label %226

226:                                              ; preds = %219, %179, %48, %32
  %227 = load i32, i32* %9, align 4
  ret i32 %227
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local %struct.TYPE_6__** @kvcalloc(i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local %struct.TYPE_6__* @mlx4_alloc_icm(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i64 @mlx4_MAP_ICM(%struct.mlx4_dev*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @mlx4_free_icm(%struct.mlx4_dev*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @mlx4_UNMAP_ICM(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @kvfree(%struct.TYPE_6__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
