; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_set_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_set_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i64, i32, %struct.TYPE_2__*, i64, %struct.mlx4_en_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_en_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ETH_RSS_HASH_NO_CHANGE = common dso_local global i64 0, align 8
@MLX4_EN_RSS_KEY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed starting port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i64*, i64)* @mlx4_en_set_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_set_rxfh(%struct.net_device* %0, i32* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mlx4_en_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx4_en_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %17)
  store %struct.mlx4_en_priv* %18, %struct.mlx4_en_priv** %10, align 8
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = call i32 @mlx4_en_get_rxfh_indir_size(%struct.net_device* %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %10, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %21, i32 0, i32 4
  %23 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %22, align 8
  store %struct.mlx4_en_dev* %23, %struct.mlx4_en_dev** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %24

24:                                               ; preds = %67, %4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %24
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  br label %70

32:                                               ; preds = %28
  %33 = load i32, i32* %15, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* %16, align 4
  br label %47

47:                                               ; preds = %45, %42, %35, %32
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %11, align 4
  br label %59

59:                                               ; preds = %57, %56
  %60 = phi i32 [ %54, %56 ], [ %58, %57 ]
  %61 = srem i32 %53, %60
  %62 = icmp ne i32 %52, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %150

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %15, align 4
  br label %24

70:                                               ; preds = %31, %24
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %16, align 4
  br label %75

75:                                               ; preds = %73, %70
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @is_power_of_2(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %150

82:                                               ; preds = %75
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* @ETH_RSS_HASH_NO_CHANGE, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = load %struct.net_device*, %struct.net_device** %6, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @mlx4_en_check_rxfh_func(%struct.net_device* %87, i64 %88)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %14, align 4
  store i32 %93, i32* %5, align 4
  br label %150

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %82
  %96 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %97 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %96, i32 0, i32 0
  %98 = call i32 @mutex_lock(i32* %97)
  %99 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %10, align 8
  %100 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  store i32 1, i32* %13, align 4
  %104 = load %struct.net_device*, %struct.net_device** %6, align 8
  %105 = call i32 @mlx4_en_stop_port(%struct.net_device* %104, i32 1)
  br label %106

106:                                              ; preds = %103, %95
  %107 = load i32*, i32** %7, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i32, i32* %16, align 4
  %111 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %10, align 8
  %112 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %111, i32 0, i32 2
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i32 %110, i32* %114, align 4
  br label %115

115:                                              ; preds = %109, %106
  %116 = load i64*, i64** %8, align 8
  %117 = icmp ne i64* %116, null
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %10, align 8
  %120 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i64*, i64** %8, align 8
  %123 = load i32, i32* @MLX4_EN_RSS_KEY_SIZE, align 4
  %124 = call i32 @memcpy(i32 %121, i64* %122, i32 %123)
  br label %125

125:                                              ; preds = %118, %115
  %126 = load i64, i64* %9, align 8
  %127 = load i64, i64* @ETH_RSS_HASH_NO_CHANGE, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i64, i64* %9, align 8
  %131 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %10, align 8
  %132 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %129, %125
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %133
  %137 = load %struct.net_device*, %struct.net_device** %6, align 8
  %138 = call i32 @mlx4_en_start_port(%struct.net_device* %137)
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %10, align 8
  %143 = call i32 @en_err(%struct.mlx4_en_priv* %142, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %136
  br label %145

145:                                              ; preds = %144, %133
  %146 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %147 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %146, i32 0, i32 0
  %148 = call i32 @mutex_unlock(i32* %147)
  %149 = load i32, i32* %14, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %145, %92, %79, %63
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx4_en_get_rxfh_indir_size(%struct.net_device*) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @mlx4_en_check_rxfh_func(%struct.net_device*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_en_stop_port(%struct.net_device*, i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @mlx4_en_start_port(%struct.net_device*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
