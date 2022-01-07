; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_channels_fill_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_channels_fill_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@NUM_CH_STATS = common dso_local global i32 0, align 4
@ch_stats_desc = common dso_local global i32 0, align 4
@NUM_RQ_STATS = common dso_local global i32 0, align 4
@rq_stats_desc = common dso_local global i32 0, align 4
@NUM_XSKRQ_STATS = common dso_local global i32 0, align 4
@xskrq_stats_desc = common dso_local global i32 0, align 4
@NUM_RQ_XDPSQ_STATS = common dso_local global i32 0, align 4
@rq_xdpsq_stats_desc = common dso_local global i32 0, align 4
@NUM_SQ_STATS = common dso_local global i32 0, align 4
@sq_stats_desc = common dso_local global i32 0, align 4
@NUM_XSKSQ_STATS = common dso_local global i32 0, align 4
@xsksq_stats_desc = common dso_local global i32 0, align 4
@NUM_XDPSQ_STATS = common dso_local global i32 0, align 4
@xdpsq_stats_desc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i32*, i32)* @mlx5e_grp_channels_fill_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_grp_channels_fill_stats(%struct.mlx5e_priv* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %48, %3
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %44, %23
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @NUM_CH_STATS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 6
  %36 = load i32, i32* @ch_stats_desc, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @MLX5E_READ_CTR64_CPU(i32* %35, i32 %36, i32 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32 %38, i32* %43, align 4
  br label %44

44:                                               ; preds = %28
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %24

47:                                               ; preds = %24
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %19

51:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %131, %51
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %134

56:                                               ; preds = %52
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %77, %56
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @NUM_RQ_STATS, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  %62 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %63 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 5
  %69 = load i32, i32* @rq_stats_desc, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @MLX5E_READ_CTR64_CPU(i32* %68, i32 %69, i32 %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  store i32 %71, i32* %76, align 4
  br label %77

77:                                               ; preds = %61
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %57

80:                                               ; preds = %57
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %103, %80
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @NUM_XSKRQ_STATS, align 4
  %84 = load i32, i32* %7, align 4
  %85 = mul nsw i32 %83, %84
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %81
  %88 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %89 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 4
  %95 = load i32, i32* @xskrq_stats_desc, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @MLX5E_READ_CTR64_CPU(i32* %94, i32 %95, i32 %96)
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  store i32 %97, i32* %102, align 4
  br label %103

103:                                              ; preds = %87
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %81

106:                                              ; preds = %81
  store i32 0, i32* %10, align 4
  br label %107

107:                                              ; preds = %127, %106
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @NUM_RQ_XDPSQ_STATS, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %130

111:                                              ; preds = %107
  %112 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %113 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %112, i32 0, i32 2
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  %119 = load i32, i32* @rq_xdpsq_stats_desc, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @MLX5E_READ_CTR64_CPU(i32* %118, i32 %119, i32 %120)
  %122 = load i32*, i32** %5, align 8
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  store i32 %121, i32* %126, align 4
  br label %127

127:                                              ; preds = %111
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  br label %107

130:                                              ; preds = %107
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %52

134:                                              ; preds = %52
  store i32 0, i32* %11, align 4
  br label %135

135:                                              ; preds = %179, %134
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %138 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %182

141:                                              ; preds = %135
  store i32 0, i32* %9, align 4
  br label %142

142:                                              ; preds = %175, %141
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %178

146:                                              ; preds = %142
  store i32 0, i32* %10, align 4
  br label %147

147:                                              ; preds = %171, %146
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @NUM_SQ_STATS, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %174

151:                                              ; preds = %147
  %152 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %153 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %152, i32 0, i32 2
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* @sq_stats_desc, align 4
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @MLX5E_READ_CTR64_CPU(i32* %162, i32 %163, i32 %164)
  %166 = load i32*, i32** %5, align 8
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  store i32 %165, i32* %170, align 4
  br label %171

171:                                              ; preds = %151
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %10, align 4
  br label %147

174:                                              ; preds = %147
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %9, align 4
  br label %142

178:                                              ; preds = %142
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %11, align 4
  br label %135

182:                                              ; preds = %135
  store i32 0, i32* %9, align 4
  br label %183

183:                                              ; preds = %238, %182
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %241

187:                                              ; preds = %183
  store i32 0, i32* %10, align 4
  br label %188

188:                                              ; preds = %210, %187
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* @NUM_XSKSQ_STATS, align 4
  %191 = load i32, i32* %7, align 4
  %192 = mul nsw i32 %190, %191
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %213

194:                                              ; preds = %188
  %195 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %196 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %195, i32 0, i32 2
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 1
  %202 = load i32, i32* @xsksq_stats_desc, align 4
  %203 = load i32, i32* %10, align 4
  %204 = call i32 @MLX5E_READ_CTR64_CPU(i32* %201, i32 %202, i32 %203)
  %205 = load i32*, i32** %5, align 8
  %206 = load i32, i32* %6, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %6, align 4
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  store i32 %204, i32* %209, align 4
  br label %210

210:                                              ; preds = %194
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %10, align 4
  br label %188

213:                                              ; preds = %188
  store i32 0, i32* %10, align 4
  br label %214

214:                                              ; preds = %234, %213
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* @NUM_XDPSQ_STATS, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %237

218:                                              ; preds = %214
  %219 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %220 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %219, i32 0, i32 2
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %220, align 8
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i32, i32* @xdpsq_stats_desc, align 4
  %227 = load i32, i32* %10, align 4
  %228 = call i32 @MLX5E_READ_CTR64_CPU(i32* %225, i32 %226, i32 %227)
  %229 = load i32*, i32** %5, align 8
  %230 = load i32, i32* %6, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %6, align 4
  %232 = sext i32 %230 to i64
  %233 = getelementptr inbounds i32, i32* %229, i64 %232
  store i32 %228, i32* %233, align 4
  br label %234

234:                                              ; preds = %218
  %235 = load i32, i32* %10, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %10, align 4
  br label %214

237:                                              ; preds = %214
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %9, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %9, align 4
  br label %183

241:                                              ; preds = %183
  %242 = load i32, i32* %6, align 4
  ret i32 %242
}

declare dso_local i32 @MLX5E_READ_CTR64_CPU(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
