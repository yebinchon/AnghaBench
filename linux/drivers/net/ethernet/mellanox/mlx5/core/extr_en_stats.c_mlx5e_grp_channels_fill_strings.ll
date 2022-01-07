; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_channels_fill_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_channels_fill_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_12__ = type { i8* }
%struct.mlx5e_priv = type { i32, i32, i32**, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@NUM_CH_STATS = common dso_local global i32 0, align 4
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@ch_stats_desc = common dso_local global %struct.TYPE_16__* null, align 8
@NUM_RQ_STATS = common dso_local global i32 0, align 4
@rq_stats_desc = common dso_local global %struct.TYPE_15__* null, align 8
@NUM_XSKRQ_STATS = common dso_local global i32 0, align 4
@xskrq_stats_desc = common dso_local global %struct.TYPE_11__* null, align 8
@NUM_RQ_XDPSQ_STATS = common dso_local global i32 0, align 4
@rq_xdpsq_stats_desc = common dso_local global %struct.TYPE_14__* null, align 8
@NUM_SQ_STATS = common dso_local global i32 0, align 4
@sq_stats_desc = common dso_local global %struct.TYPE_13__* null, align 8
@NUM_XSKSQ_STATS = common dso_local global i32 0, align 4
@xsksq_stats_desc = common dso_local global %struct.TYPE_10__* null, align 8
@NUM_XDPSQ_STATS = common dso_local global i32 0, align 4
@xdpsq_stats_desc = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i32*, i32)* @mlx5e_grp_channels_fill_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_grp_channels_fill_strings(%struct.mlx5e_priv* %0, i32* %1, i32 %2) #0 {
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
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
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
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %33 = mul nsw i32 %30, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %29, i64 %34
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** @ch_stats_desc, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @sprintf(i32* %35, i8* %41, i32 %42)
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
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %66 = mul nsw i32 %63, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %62, i64 %67
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** @rq_stats_desc, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @sprintf(i32* %68, i8* %74, i32 %75)
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
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %92 = mul nsw i32 %89, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %88, i64 %93
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** @xskrq_stats_desc, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @sprintf(i32* %94, i8* %100, i32 %101)
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
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %116 = mul nsw i32 %113, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %112, i64 %117
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** @rq_xdpsq_stats_desc, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @sprintf(i32* %118, i8* %124, i32 %125)
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

135:                                              ; preds = %185, %134
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %138 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %188

141:                                              ; preds = %135
  store i32 0, i32* %9, align 4
  br label %142

142:                                              ; preds = %181, %141
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %184

146:                                              ; preds = %142
  store i32 0, i32* %10, align 4
  br label %147

147:                                              ; preds = %177, %146
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @NUM_SQ_STATS, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %180

151:                                              ; preds = %147
  %152 = load i32*, i32** %5, align 8
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %156 = mul nsw i32 %153, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %152, i64 %157
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sq_stats_desc, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %166 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %165, i32 0, i32 2
  %167 = load i32**, i32*** %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32*, i32** %167, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @sprintf(i32* %158, i8* %164, i32 %175)
  br label %177

177:                                              ; preds = %151
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %10, align 4
  br label %147

180:                                              ; preds = %147
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %9, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %9, align 4
  br label %142

184:                                              ; preds = %142
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %11, align 4
  br label %135

188:                                              ; preds = %135
  store i32 0, i32* %9, align 4
  br label %189

189:                                              ; preds = %244, %188
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* %8, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %247

193:                                              ; preds = %189
  store i32 0, i32* %10, align 4
  br label %194

194:                                              ; preds = %216, %193
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* @NUM_XSKSQ_STATS, align 4
  %197 = load i32, i32* %7, align 4
  %198 = mul nsw i32 %196, %197
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %200, label %219

200:                                              ; preds = %194
  %201 = load i32*, i32** %5, align 8
  %202 = load i32, i32* %6, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %205 = mul nsw i32 %202, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %201, i64 %206
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** @xsksq_stats_desc, align 8
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = call i32 @sprintf(i32* %207, i8* %213, i32 %214)
  br label %216

216:                                              ; preds = %200
  %217 = load i32, i32* %10, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %10, align 4
  br label %194

219:                                              ; preds = %194
  store i32 0, i32* %10, align 4
  br label %220

220:                                              ; preds = %240, %219
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* @NUM_XDPSQ_STATS, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %243

224:                                              ; preds = %220
  %225 = load i32*, i32** %5, align 8
  %226 = load i32, i32* %6, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %6, align 4
  %228 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %229 = mul nsw i32 %226, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %225, i64 %230
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** @xdpsq_stats_desc, align 8
  %233 = load i32, i32* %10, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 0
  %237 = load i8*, i8** %236, align 8
  %238 = load i32, i32* %9, align 4
  %239 = call i32 @sprintf(i32* %231, i8* %237, i32 %238)
  br label %240

240:                                              ; preds = %224
  %241 = load i32, i32* %10, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %10, align 4
  br label %220

243:                                              ; preds = %220
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %9, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %9, align 4
  br label %189

247:                                              ; preds = %189
  %248 = load i32, i32* %6, align 4
  ret i32 %248
}

declare dso_local i32 @sprintf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
