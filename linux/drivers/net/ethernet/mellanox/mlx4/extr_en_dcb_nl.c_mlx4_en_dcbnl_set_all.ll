; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_dcb_nl.c_mlx4_en_dcbnl_set_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_dcb_nl.c_mlx4_en_dcbnl_set_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i32, i64, i32, %struct.TYPE_2__, %struct.mlx4_en_dev*, %struct.mlx4_en_port_profile* }
%struct.TYPE_2__ = type { i32*, i64 }
%struct.mlx4_en_dev = type { i32 }
%struct.mlx4_en_port_profile = type { i32, i32, i32, i32 }

@DCB_CAP_DCBX_VER_CEE = common dso_local global i32 0, align 4
@CEE_DCBX_MAX_PRIO = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Failed setting pause params\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mlx4_en_dcbnl_set_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_dcbnl_set_all(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mlx4_en_priv*, align 8
  %5 = alloca %struct.mlx4_en_port_profile*, align 8
  %6 = alloca %struct.mlx4_en_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.mlx4_en_priv* %14, %struct.mlx4_en_priv** %4, align 8
  %15 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %15, i32 0, i32 5
  %17 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %16, align 8
  store %struct.mlx4_en_port_profile* %17, %struct.mlx4_en_port_profile** %5, align 8
  %18 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %18, i32 0, i32 4
  %20 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %19, align 8
  store %struct.mlx4_en_dev* %20, %struct.mlx4_en_dev** %6, align 8
  %21 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DCB_CAP_DCBX_VER_CEE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %159

28:                                               ; preds = %1
  %29 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %30 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %118

34:                                               ; preds = %28
  %35 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %5, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  %38 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %5, align 8
  %39 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %90, %34
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @CEE_DCBX_MAX_PRIO, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %93

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = shl i32 1, %46
  store i32 %47, i32* %12, align 4
  %48 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %49 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %88 [
    i32 131, label %56
    i32 130, label %65
    i32 128, label %72
    i32 129, label %80
  ]

56:                                               ; preds = %45
  %57 = load i32, i32* %12, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %12, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %10, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %10, align 4
  br label %89

65:                                               ; preds = %45
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %89

72:                                               ; preds = %45
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %12, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %10, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %10, align 4
  br label %89

80:                                               ; preds = %45
  %81 = load i32, i32* %12, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %10, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %10, align 4
  br label %89

88:                                               ; preds = %45
  br label %89

89:                                               ; preds = %88, %80, %72, %65, %56
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %41

93:                                               ; preds = %41
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96, %93
  br label %104

100:                                              ; preds = %96
  %101 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %5, align 8
  %102 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  br label %104

104:                                              ; preds = %100, %99
  %105 = phi i32 [ 0, %99 ], [ %103, %100 ]
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108, %104
  br label %116

112:                                              ; preds = %108
  %113 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %5, align 8
  %114 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  br label %116

116:                                              ; preds = %112, %111
  %117 = phi i32 [ 0, %111 ], [ %115, %112 ]
  store i32 %117, i32* %7, align 4
  br label %125

118:                                              ; preds = %28
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  %119 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %5, align 8
  %120 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %9, align 4
  %122 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %5, align 8
  %123 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %118, %116
  %126 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %6, align 8
  %127 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %130 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %133 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @ETH_FCS_LEN, align 8
  %136 = add nsw i64 %134, %135
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %10, align 4
  %141 = call i64 @mlx4_SET_PORT_general(i32 %128, i32 %131, i64 %136, i32 %137, i32 %138, i32 %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %125
  %144 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %145 = call i32 @en_err(%struct.mlx4_en_priv* %144, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %159

146:                                              ; preds = %125
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %5, align 8
  %149 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %5, align 8
  %152 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %5, align 8
  %155 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %5, align 8
  %158 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 4
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %146, %143, %27
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @mlx4_SET_PORT_general(i32, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
