; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_set_priv_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_set_priv_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i32, i32*, i32, %struct.TYPE_2__***, %struct.mlx4_en_dev* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mlx4_en_dev = type { i32 }

@MLX4_EN_PRIV_FLAGS_BLUEFLAME = common dso_local global i32 0, align 4
@MLX4_EN_PRIV_FLAGS_PHV = common dso_local global i32 0, align 4
@MLX4_EN_NUM_TX_TYPES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"BlueFlame is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"BlueFlame %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"PHV bit %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @mlx4_en_set_priv_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_set_priv_flags(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.mlx4_en_priv* %17, %struct.mlx4_en_priv** %6, align 8
  %18 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %18, i32 0, i32 4
  %20 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %19, align 8
  store %struct.mlx4_en_dev* %20, %struct.mlx4_en_dev** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MLX4_EN_PRIV_FLAGS_BLUEFLAME, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %29 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MLX4_EN_PRIV_FLAGS_BLUEFLAME, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @MLX4_EN_PRIV_FLAGS_PHV, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %45 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MLX4_EN_PRIV_FLAGS_PHV, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %163

56:                                               ; preds = %2
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %112

59:                                               ; preds = %56
  store i32 1, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %60

60:                                               ; preds = %95, %59
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @MLX4_EN_NUM_TX_TYPES, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %98

64:                                               ; preds = %60
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %91, %64
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %68 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %66, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %65
  %76 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %77 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %76, i32 0, i32 3
  %78 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %78, i64 %80
  %82 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %82, i64 %84
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %15, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %75
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %65

94:                                               ; preds = %65
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %14, align 4
  br label %60

98:                                               ; preds = %60
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  %102 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %103 = call i32 @en_err(%struct.mlx4_en_priv* %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %205

106:                                              ; preds = %98
  %107 = load i32, i32* @MLX4_EN_PRIV_FLAGS_BLUEFLAME, align 4
  %108 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %109 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %119

112:                                              ; preds = %56
  %113 = load i32, i32* @MLX4_EN_PRIV_FLAGS_BLUEFLAME, align 4
  %114 = xor i32 %113, -1
  %115 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %116 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %112, %106
  store i32 0, i32* %14, align 4
  br label %120

120:                                              ; preds = %153, %119
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* @MLX4_EN_NUM_TX_TYPES, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %156

124:                                              ; preds = %120
  store i32 0, i32* %12, align 4
  br label %125

125:                                              ; preds = %149, %124
  %126 = load i32, i32* %12, align 4
  %127 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %128 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %126, %133
  br i1 %134, label %135, label %152

135:                                              ; preds = %125
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %138 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %137, i32 0, i32 3
  %139 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %138, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %139, i64 %141
  %143 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %143, i64 %145
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  store i32 %136, i32* %148, align 4
  br label %149

149:                                              ; preds = %135
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %12, align 4
  br label %125

152:                                              ; preds = %125
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %14, align 4
  br label %120

156:                                              ; preds = %120
  %157 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %162 = call i32 @en_info(%struct.mlx4_en_priv* %157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %161)
  br label %163

163:                                              ; preds = %156, %2
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %204

167:                                              ; preds = %163
  %168 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %169 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %172 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = call i32 @set_phv_bit(i32 %170, i32 %173, i32 %174)
  store i32 %175, i32* %13, align 4
  %176 = load i32, i32* %13, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %167
  %179 = load i32, i32* %13, align 4
  store i32 %179, i32* %3, align 4
  br label %205

180:                                              ; preds = %167
  %181 = load i32, i32* %10, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load i32, i32* @MLX4_EN_PRIV_FLAGS_PHV, align 4
  %185 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %186 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 8
  br label %196

189:                                              ; preds = %180
  %190 = load i32, i32* @MLX4_EN_PRIV_FLAGS_PHV, align 4
  %191 = xor i32 %190, -1
  %192 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %193 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = and i32 %194, %191
  store i32 %195, i32* %193, align 8
  br label %196

196:                                              ; preds = %189, %183
  br label %197

197:                                              ; preds = %196
  %198 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %199 = load i32, i32* %10, align 4
  %200 = icmp ne i32 %199, 0
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %203 = call i32 @en_info(%struct.mlx4_en_priv* %198, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %202)
  br label %204

204:                                              ; preds = %197, %163
  store i32 0, i32* %3, align 4
  br label %205

205:                                              ; preds = %204, %178, %101
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @en_info(%struct.mlx4_en_priv*, i8*, i8*) #1

declare dso_local i32 @set_phv_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
