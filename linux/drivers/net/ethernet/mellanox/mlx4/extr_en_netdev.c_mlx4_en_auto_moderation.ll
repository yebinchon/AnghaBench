; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_auto_moderation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_auto_moderation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i64, i32, i64*, i64*, i32, i32, i32*, i64, i64, %struct.mlx4_en_cq**, %struct.TYPE_2__**, i32, i32, i32 }
%struct.mlx4_en_cq = type { i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@MLX4_EN_RX_RATE_THRESH = common dso_local global i64 0, align 8
@MLX4_EN_AVG_PKT_SMALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Failed modifying moderation for cq:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_en_priv*)* @mlx4_en_auto_moderation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_auto_moderation(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca %struct.mlx4_en_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlx4_en_cq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %2, align 8
  %16 = load i64, i64* @jiffies, align 8
  %17 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %18 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %17, i32 0, i32 8
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  store i64 %20, i64* %3, align 8
  %21 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %21, i32 0, i32 13
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load i64, i64* %3, align 8
  %27 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HZ, align 8
  %31 = mul i64 %29, %30
  %32 = icmp ult i64 %26, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25, %1
  br label %232

34:                                               ; preds = %25
  %35 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %35, i32 0, i32 12
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @READ_ONCE(i32 %37)
  store i64 %38, i64* %5, align 8
  %39 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %39, i32 0, i32 11
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @READ_ONCE(i32 %41)
  store i64 %42, i64* %4, align 8
  store i32 0, i32* %14, align 4
  br label %43

43:                                               ; preds = %225, %34
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %46 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %228

49:                                               ; preds = %43
  %50 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %50, i32 0, i32 10
  %52 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %52, i64 %54
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @READ_ONCE(i32 %58)
  store i64 %59, i64* %10, align 8
  %60 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %61 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %60, i32 0, i32 10
  %62 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %62, i64 %64
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @READ_ONCE(i32 %68)
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %72 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = sub i64 %70, %77
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %12, align 8
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* @HZ, align 8
  %82 = mul i64 %80, %81
  %83 = load i64, i64* %3, align 8
  %84 = udiv i64 %82, %83
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %7, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %49
  %88 = load i64, i64* %11, align 8
  %89 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %90 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %89, i32 0, i32 3
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = sub i64 %88, %95
  %97 = load i64, i64* %7, align 8
  %98 = udiv i64 %96, %97
  br label %100

99:                                               ; preds = %49
  br label %100

100:                                              ; preds = %99, %87
  %101 = phi i64 [ %98, %87 ], [ 0, %99 ]
  store i64 %101, i64* %9, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* @MLX4_EN_RX_RATE_THRESH, align 8
  %104 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %105 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = udiv i64 %103, %107
  %109 = icmp ugt i64 %102, %108
  br i1 %109, label %110, label %155

110:                                              ; preds = %100
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* @MLX4_EN_AVG_PKT_SMALL, align 8
  %113 = icmp ugt i64 %111, %112
  br i1 %113, label %114, label %155

114:                                              ; preds = %110
  %115 = load i64, i64* %8, align 8
  %116 = load i64, i64* %5, align 8
  %117 = icmp ule i64 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %120 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %13, align 4
  br label %154

122:                                              ; preds = %114
  %123 = load i64, i64* %8, align 8
  %124 = load i64, i64* %4, align 8
  %125 = icmp uge i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %128 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %13, align 4
  br label %153

130:                                              ; preds = %122
  %131 = load i64, i64* %8, align 8
  %132 = load i64, i64* %5, align 8
  %133 = sub i64 %131, %132
  %134 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %135 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %138 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %136, %139
  %141 = sext i32 %140 to i64
  %142 = mul i64 %133, %141
  %143 = load i64, i64* %4, align 8
  %144 = load i64, i64* %5, align 8
  %145 = sub i64 %143, %144
  %146 = udiv i64 %142, %145
  %147 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %148 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = add i64 %146, %150
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %13, align 4
  br label %153

153:                                              ; preds = %130, %126
  br label %154

154:                                              ; preds = %153, %118
  br label %159

155:                                              ; preds = %110, %100
  %156 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %157 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  store i32 %158, i32* %13, align 4
  br label %159

159:                                              ; preds = %155, %154
  %160 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %161 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %160, i32 0, i32 9
  %162 = load %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %161, align 8
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %162, i64 %164
  %166 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %165, align 8
  store %struct.mlx4_en_cq* %166, %struct.mlx4_en_cq** %6, align 8
  %167 = load i32, i32* %13, align 4
  %168 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %169 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %168, i32 0, i32 6
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %14, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %167, %174
  br i1 %175, label %184, label %176

176:                                              ; preds = %159
  %177 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %178 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %181 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %180, i32 0, i32 7
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %179, %182
  br i1 %183, label %184, label %210

184:                                              ; preds = %176, %159
  %185 = load i32, i32* %13, align 4
  %186 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %187 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %186, i32 0, i32 6
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %14, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  store i32 %185, i32* %191, align 4
  %192 = load i32, i32* %13, align 4
  %193 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %194 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 8
  %195 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %196 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %195, i32 0, i32 7
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %199 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %198, i32 0, i32 0
  store i64 %197, i64* %199, align 8
  %200 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %201 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %202 = call i32 @mlx4_en_set_cq_moder(%struct.mlx4_en_priv* %200, %struct.mlx4_en_cq* %201)
  store i32 %202, i32* %15, align 4
  %203 = load i32, i32* %15, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %184
  %206 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %207 = load i32, i32* %14, align 4
  %208 = call i32 @en_err(%struct.mlx4_en_priv* %206, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %207)
  br label %209

209:                                              ; preds = %205, %184
  br label %210

210:                                              ; preds = %209, %176
  %211 = load i64, i64* %10, align 8
  %212 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %213 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %212, i32 0, i32 2
  %214 = load i64*, i64** %213, align 8
  %215 = load i32, i32* %14, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  store i64 %211, i64* %217, align 8
  %218 = load i64, i64* %11, align 8
  %219 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %220 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %219, i32 0, i32 3
  %221 = load i64*, i64** %220, align 8
  %222 = load i32, i32* %14, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64, i64* %221, i64 %223
  store i64 %218, i64* %224, align 8
  br label %225

225:                                              ; preds = %210
  %226 = load i32, i32* %14, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %14, align 4
  br label %43

228:                                              ; preds = %43
  %229 = load i64, i64* @jiffies, align 8
  %230 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %231 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %230, i32 0, i32 8
  store i64 %229, i64* %231, align 8
  br label %232

232:                                              ; preds = %228, %33
  ret void
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @mlx4_en_set_cq_moder(%struct.mlx4_en_priv*, %struct.mlx4_en_cq*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
