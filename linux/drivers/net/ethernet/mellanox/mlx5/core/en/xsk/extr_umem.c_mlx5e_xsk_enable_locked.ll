; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_umem.c_mlx5e_xsk_enable_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_umem.c_mlx5e_xsk_enable_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.mlx5e_channel**, %struct.mlx5e_params }
%struct.mlx5e_channel = type { i32 }
%struct.mlx5e_params = type { i32 }
%struct.xdp_umem = type { i32 }
%struct.mlx5e_xsk_param = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX5E_STATE_OPENED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.xdp_umem*, i64)* @mlx5e_xsk_enable_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_xsk_enable_locked(%struct.mlx5e_priv* %0, %struct.xdp_umem* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.xdp_umem*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mlx5e_params*, align 8
  %9 = alloca %struct.mlx5e_xsk_param, align 4
  %10 = alloca %struct.mlx5e_channel*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store %struct.xdp_umem* %1, %struct.xdp_umem** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.mlx5e_params* %14, %struct.mlx5e_params** %8, align 8
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %19 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %18, i32 0, i32 1
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @mlx5e_xsk_get_umem(%struct.mlx5e_params* %17, i32* %19, i64 %20)
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %132

27:                                               ; preds = %3
  %28 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %29 = call i32 @mlx5e_xsk_is_umem_sane(%struct.xdp_umem* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %132

38:                                               ; preds = %27
  %39 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %40 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %41 = call i32 @mlx5e_xsk_map_umem(%struct.mlx5e_priv* %39, %struct.xdp_umem* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %4, align 4
  br label %132

47:                                               ; preds = %38
  %48 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %49 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %48, i32 0, i32 1
  %50 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @mlx5e_xsk_add_umem(i32* %49, %struct.xdp_umem* %50, i64 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %116

57:                                               ; preds = %47
  %58 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %59 = call i32 @mlx5e_build_xsk_param(%struct.xdp_umem* %58, %struct.mlx5e_xsk_param* %9)
  %60 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %61 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %62 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %61, i32 0, i32 3
  %63 = call i32 @test_bit(i32 %60, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %57
  br label %121

66:                                               ; preds = %57
  %67 = load %struct.mlx5e_params*, %struct.mlx5e_params** %8, align 8
  %68 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %121

72:                                               ; preds = %66
  %73 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %74 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %struct.mlx5e_channel**, %struct.mlx5e_channel*** %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds %struct.mlx5e_channel*, %struct.mlx5e_channel** %76, i64 %77
  %79 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %78, align 8
  store %struct.mlx5e_channel* %79, %struct.mlx5e_channel** %10, align 8
  %80 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %81 = load %struct.mlx5e_params*, %struct.mlx5e_params** %8, align 8
  %82 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %83 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %10, align 8
  %84 = call i32 @mlx5e_open_xsk(%struct.mlx5e_priv* %80, %struct.mlx5e_params* %81, %struct.mlx5e_xsk_param* %9, %struct.xdp_umem* %82, %struct.mlx5e_channel* %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %72
  br label %111

89:                                               ; preds = %72
  %90 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %10, align 8
  %91 = call i32 @mlx5e_activate_xsk(%struct.mlx5e_channel* %90)
  %92 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %93 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %94 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load %struct.mlx5e_channel**, %struct.mlx5e_channel*** %95, align 8
  %97 = load i64, i64* %7, align 8
  %98 = getelementptr inbounds %struct.mlx5e_channel*, %struct.mlx5e_channel** %96, i64 %97
  %99 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %98, align 8
  %100 = call i32 @mlx5e_xsk_redirect_rqt_to_channel(%struct.mlx5e_priv* %92, %struct.mlx5e_channel* %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %89
  br label %106

105:                                              ; preds = %89
  store i32 0, i32* %4, align 4
  br label %132

106:                                              ; preds = %104
  %107 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %10, align 8
  %108 = call i32 @mlx5e_deactivate_xsk(%struct.mlx5e_channel* %107)
  %109 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %10, align 8
  %110 = call i32 @mlx5e_close_xsk(%struct.mlx5e_channel* %109)
  br label %111

111:                                              ; preds = %128, %106, %88
  %112 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %113 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %112, i32 0, i32 1
  %114 = load i64, i64* %7, align 8
  %115 = call i32 @mlx5e_xsk_remove_umem(i32* %113, i64 %114)
  br label %116

116:                                              ; preds = %111, %56
  %117 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %118 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %119 = call i32 @mlx5e_xsk_unmap_umem(%struct.mlx5e_priv* %117, %struct.xdp_umem* %118)
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %4, align 4
  br label %132

121:                                              ; preds = %71, %65
  %122 = load %struct.mlx5e_params*, %struct.mlx5e_params** %8, align 8
  %123 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %124 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @mlx5e_validate_xsk_param(%struct.mlx5e_params* %122, %struct.mlx5e_xsk_param* %9, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %121
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %11, align 4
  br label %111

131:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %131, %116, %105, %45, %35, %24
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5e_xsk_get_umem(%struct.mlx5e_params*, i32*, i64) #1

declare dso_local i32 @mlx5e_xsk_is_umem_sane(%struct.xdp_umem*) #1

declare dso_local i32 @mlx5e_xsk_map_umem(%struct.mlx5e_priv*, %struct.xdp_umem*) #1

declare dso_local i32 @mlx5e_xsk_add_umem(i32*, %struct.xdp_umem*, i64) #1

declare dso_local i32 @mlx5e_build_xsk_param(%struct.xdp_umem*, %struct.mlx5e_xsk_param*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mlx5e_open_xsk(%struct.mlx5e_priv*, %struct.mlx5e_params*, %struct.mlx5e_xsk_param*, %struct.xdp_umem*, %struct.mlx5e_channel*) #1

declare dso_local i32 @mlx5e_activate_xsk(%struct.mlx5e_channel*) #1

declare dso_local i32 @mlx5e_xsk_redirect_rqt_to_channel(%struct.mlx5e_priv*, %struct.mlx5e_channel*) #1

declare dso_local i32 @mlx5e_deactivate_xsk(%struct.mlx5e_channel*) #1

declare dso_local i32 @mlx5e_close_xsk(%struct.mlx5e_channel*) #1

declare dso_local i32 @mlx5e_xsk_remove_umem(i32*, i64) #1

declare dso_local i32 @mlx5e_xsk_unmap_umem(%struct.mlx5e_priv*, %struct.xdp_umem*) #1

declare dso_local i32 @mlx5e_validate_xsk_param(%struct.mlx5e_params*, %struct.mlx5e_xsk_param*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
