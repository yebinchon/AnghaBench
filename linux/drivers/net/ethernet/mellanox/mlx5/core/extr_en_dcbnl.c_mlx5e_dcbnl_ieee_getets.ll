; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_ieee_getets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_ieee_getets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee_ets = type { i32, i64*, i32, i32* }
%struct.mlx5e_priv = type { %struct.TYPE_2__, %struct.mlx5_core_dev* }
%struct.TYPE_2__ = type { i32* }
%struct.mlx5_core_dev = type { i32 }

@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX5E_MAX_BW_ALLOC = common dso_local global i64 0, align 8
@MLX5E_LOWEST_PRIO_GROUP = common dso_local global i32 0, align 4
@MLX5E_VENDOR_TC_GROUP_NUM = common dso_local global i32 0, align 4
@IEEE_8021QAZ_TSA_ETS = common dso_local global i32 0, align 4
@IEEE_8021QAZ_TSA_VENDOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee_ets*)* @mlx5e_dcbnl_ieee_getets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_dcbnl_ieee_getets(%struct.net_device* %0, %struct.ieee_ets* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ieee_ets*, align 8
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ieee_ets* %1, %struct.ieee_ets** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.mlx5e_priv* %16, %struct.mlx5e_priv** %6, align 8
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %18 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %17, i32 0, i32 1
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %18, align 8
  store %struct.mlx5_core_dev* %19, %struct.mlx5_core_dev** %7, align 8
  %20 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %24 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %25 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %24, i32 0, i32 1
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %25, align 8
  %27 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %28 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %26, %struct.ieee_ets* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %207

33:                                               ; preds = %2
  %34 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %35 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %34, i32 0, i32 1
  %36 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %35, align 8
  %37 = call i32 @mlx5_max_tc(%struct.mlx5_core_dev* %36)
  %38 = add nsw i32 %37, 1
  %39 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %40 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %115, %33
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %44 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %118

47:                                               ; preds = %41
  %48 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %51 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call i32 @mlx5_query_port_prio_tc(%struct.mlx5_core_dev* %48, i32 %49, i32* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %207

61:                                               ; preds = %47
  %62 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %23, i64 %65
  %67 = call i32 @mlx5_query_port_tc_group(%struct.mlx5_core_dev* %62, i32 %63, i32* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %207

72:                                               ; preds = %61
  %73 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %76 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = call i32 @mlx5_query_port_tc_bw_alloc(%struct.mlx5_core_dev* %73, i32 %74, i64* %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %72
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %207

86:                                               ; preds = %72
  %87 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %88 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @MLX5E_MAX_BW_ALLOC, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %86
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %23, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @MLX5E_LOWEST_PRIO_GROUP, align 4
  %102 = add nsw i32 %101, 1
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  store i32 1, i32* %11, align 4
  br label %105

105:                                              ; preds = %104, %96, %86
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %23, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @MLX5E_VENDOR_TC_GROUP_NUM, align 4
  %111 = sub nsw i32 %110, 1
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  store i32 1, i32* %10, align 4
  br label %114

114:                                              ; preds = %113, %105
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %13, align 4
  br label %41

118:                                              ; preds = %41
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %147

121:                                              ; preds = %118
  store i32 0, i32* %13, align 4
  br label %122

122:                                              ; preds = %143, %121
  %123 = load i32, i32* %13, align 4
  %124 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %125 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %122
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %23, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @MLX5E_LOWEST_PRIO_GROUP, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %128
  %136 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %137 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %136, i32 0, i32 1
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  store i64 0, i64* %141, align 8
  br label %142

142:                                              ; preds = %135, %128
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %122

146:                                              ; preds = %122
  br label %147

147:                                              ; preds = %146, %118
  store i32 0, i32* %13, align 4
  br label %148

148:                                              ; preds = %194, %147
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %151 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %197

154:                                              ; preds = %148
  %155 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %156 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %155, i32 0, i32 1
  %157 = load i64*, i64** %156, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @MLX5E_MAX_BW_ALLOC, align 8
  %163 = icmp slt i64 %161, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %154
  %165 = load i32, i32* @IEEE_8021QAZ_TSA_ETS, align 4
  %166 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %167 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %165, i32* %172, align 4
  br label %193

173:                                              ; preds = %154
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %23, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @MLX5E_VENDOR_TC_GROUP_NUM, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %192

180:                                              ; preds = %173
  %181 = load i32, i32* %10, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %192, label %183

183:                                              ; preds = %180
  %184 = load i32, i32* @IEEE_8021QAZ_TSA_VENDOR, align 4
  %185 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %186 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  store i32 %184, i32* %191, align 4
  br label %192

192:                                              ; preds = %183, %180, %173
  br label %193

193:                                              ; preds = %192, %164
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %13, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %13, align 4
  br label %148

197:                                              ; preds = %148
  %198 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %199 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %202 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = call i32 @memcpy(i32 %200, i32* %204, i32 4)
  %206 = load i32, i32* %12, align 4
  store i32 %206, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %207

207:                                              ; preds = %197, %84, %70, %59, %30
  %208 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %208)
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, %struct.ieee_ets*) #1

declare dso_local i32 @mlx5_max_tc(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_query_port_prio_tc(%struct.mlx5_core_dev*, i32, i32*) #1

declare dso_local i32 @mlx5_query_port_tc_group(%struct.mlx5_core_dev*, i32, i32*) #1

declare dso_local i32 @mlx5_query_port_tc_bw_alloc(%struct.mlx5_core_dev*, i32, i64*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
