; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_build_ste_arr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_build_ste_arr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_matcher = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.mlx5dr_domain* }
%struct.mlx5dr_domain = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mlx5dr_matcher_rx_tx = type { i32, %struct.mlx5dr_ste_build*, %struct.TYPE_5__* }
%struct.mlx5dr_ste_build = type { i32 (%struct.mlx5dr_match_param*, %struct.mlx5dr_ste_build*, i32*)*, i32, i32, i32 }
%struct.mlx5dr_match_param = type opaque
%struct.TYPE_5__ = type { %struct.mlx5dr_domain_rx_tx* }
%struct.mlx5dr_domain_rx_tx = type { i32 }
%struct.mlx5dr_match_param.0 = type { i32 }

@ste_general = common dso_local global i32 0, align 4
@next_lu_type = common dso_local global i32 0, align 4
@byte_mask = common dso_local global i32 0, align 4
@DR_STE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5dr_ste_build_ste_arr(%struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher_rx_tx* %1, %struct.mlx5dr_match_param.0* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5dr_matcher*, align 8
  %7 = alloca %struct.mlx5dr_matcher_rx_tx*, align 8
  %8 = alloca %struct.mlx5dr_match_param.0*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mlx5dr_domain_rx_tx*, align 8
  %11 = alloca %struct.mlx5dr_domain*, align 8
  %12 = alloca %struct.mlx5dr_ste_build*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher** %6, align 8
  store %struct.mlx5dr_matcher_rx_tx* %1, %struct.mlx5dr_matcher_rx_tx** %7, align 8
  store %struct.mlx5dr_match_param.0* %2, %struct.mlx5dr_match_param.0** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %7, align 8
  %16 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.mlx5dr_domain_rx_tx*, %struct.mlx5dr_domain_rx_tx** %18, align 8
  store %struct.mlx5dr_domain_rx_tx* %19, %struct.mlx5dr_domain_rx_tx** %10, align 8
  %20 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %6, align 8
  %21 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %23, align 8
  store %struct.mlx5dr_domain* %24, %struct.mlx5dr_domain** %11, align 8
  %25 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %11, align 8
  %26 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %6, align 8
  %27 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %6, align 8
  %30 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %29, i32 0, i32 0
  %31 = load %struct.mlx5dr_match_param.0*, %struct.mlx5dr_match_param.0** %8, align 8
  %32 = call i32 @mlx5dr_ste_build_pre_check(%struct.mlx5dr_domain* %25, i32 %28, i32* %30, %struct.mlx5dr_match_param.0* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %5, align 4
  br label %111

37:                                               ; preds = %4
  %38 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %7, align 8
  %39 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %38, i32 0, i32 1
  %40 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %39, align 8
  store %struct.mlx5dr_ste_build* %40, %struct.mlx5dr_ste_build** %12, align 8
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %107, %37
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %7, align 8
  %44 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %110

47:                                               ; preds = %41
  %48 = load i32*, i32** %9, align 8
  %49 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %50 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mlx5dr_domain_rx_tx*, %struct.mlx5dr_domain_rx_tx** %10, align 8
  %53 = getelementptr inbounds %struct.mlx5dr_domain_rx_tx, %struct.mlx5dr_domain_rx_tx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %11, align 8
  %56 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @mlx5dr_ste_init(i32* %48, i32 %51, i32 %54, i32 %59)
  %61 = load i32*, i32** %9, align 8
  %62 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %63 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @mlx5dr_ste_set_bit_mask(i32* %61, i32 %64)
  %66 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %67 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %66, i32 0, i32 0
  %68 = load i32 (%struct.mlx5dr_match_param*, %struct.mlx5dr_ste_build*, i32*)*, i32 (%struct.mlx5dr_match_param*, %struct.mlx5dr_ste_build*, i32*)** %67, align 8
  %69 = load %struct.mlx5dr_match_param.0*, %struct.mlx5dr_match_param.0** %8, align 8
  %70 = bitcast %struct.mlx5dr_match_param.0* %69 to %struct.mlx5dr_match_param*
  %71 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 %68(%struct.mlx5dr_match_param* %70, %struct.mlx5dr_ste_build* %71, i32* %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %47
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %5, align 4
  br label %111

78:                                               ; preds = %47
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %7, align 8
  %81 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %82, 1
  %84 = icmp slt i32 %79, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %78
  %86 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %87 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %86, i32 1
  store %struct.mlx5dr_ste_build* %87, %struct.mlx5dr_ste_build** %12, align 8
  %88 = load i32, i32* @ste_general, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* @next_lu_type, align 4
  %91 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %92 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @MLX5_SET(i32 %88, i32* %89, i32 %90, i32 %93)
  %95 = load i32, i32* @ste_general, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* @byte_mask, align 4
  %98 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %99 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @MLX5_SET(i32 %95, i32* %96, i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %85, %78
  %103 = load i32, i32* @DR_STE_SIZE, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %9, align 8
  br label %107

107:                                              ; preds = %102
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %14, align 4
  br label %41

110:                                              ; preds = %41
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %110, %76, %35
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @mlx5dr_ste_build_pre_check(%struct.mlx5dr_domain*, i32, i32*, %struct.mlx5dr_match_param.0*) #1

declare dso_local i32 @mlx5dr_ste_init(i32*, i32, i32, i32) #1

declare dso_local i32 @mlx5dr_ste_set_bit_mask(i32*, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
