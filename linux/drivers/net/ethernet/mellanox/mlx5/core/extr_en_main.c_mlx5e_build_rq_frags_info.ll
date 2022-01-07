; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_rq_frags_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_rq_frags_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_params = type { i32 }
%struct.mlx5e_xsk_param = type { i32 }
%struct.mlx5e_rq_frags_info = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@DEFAULT_FRAG_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MLX5E_MAX_RX_FRAGS = common dso_local global i32 0, align 4
@u8 = common dso_local global i32 0, align 4
@MLX5E_METADATA_ETHER_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*, %struct.mlx5e_params*, %struct.mlx5e_xsk_param*, %struct.mlx5e_rq_frags_info*)* @mlx5e_build_rq_frags_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_build_rq_frags_info(%struct.mlx5_core_dev* %0, %struct.mlx5e_params* %1, %struct.mlx5e_xsk_param* %2, %struct.mlx5e_rq_frags_info* %3) #0 {
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5e_params*, align 8
  %7 = alloca %struct.mlx5e_xsk_param*, align 8
  %8 = alloca %struct.mlx5e_rq_frags_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %6, align 8
  store %struct.mlx5e_xsk_param* %2, %struct.mlx5e_xsk_param** %7, align 8
  store %struct.mlx5e_rq_frags_info* %3, %struct.mlx5e_rq_frags_info** %8, align 8
  %15 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %16 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %17 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @MLX5E_SW2HW_MTU(%struct.mlx5e_params* %15, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @DEFAULT_FRAG_SIZE, align 4
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %22 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %7, align 8
  %23 = call i64 @mlx5e_rx_is_linear_skb(%struct.mlx5e_params* %21, %struct.mlx5e_xsk_param* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %4
  %26 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %27 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %7, align 8
  %28 = call i32 @mlx5e_rx_get_linear_frag_sz(%struct.mlx5e_params* %26, %struct.mlx5e_xsk_param* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call i8* @roundup_pow_of_two(i32 %29)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.mlx5e_rq_frags_info*, %struct.mlx5e_rq_frags_info** %8, align 8
  %34 = getelementptr inbounds %struct.mlx5e_rq_frags_info, %struct.mlx5e_rq_frags_info* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %32, i32* %37, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.mlx5e_rq_frags_info*, %struct.mlx5e_rq_frags_info** %8, align 8
  %40 = getelementptr inbounds %struct.mlx5e_rq_frags_info, %struct.mlx5e_rq_frags_info* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 %38, i32* %43, align 4
  %44 = load %struct.mlx5e_rq_frags_info*, %struct.mlx5e_rq_frags_info** %8, align 8
  %45 = getelementptr inbounds %struct.mlx5e_rq_frags_info, %struct.mlx5e_rq_frags_info* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = load i32, i32* %13, align 4
  %48 = sdiv i32 %46, %47
  %49 = load %struct.mlx5e_rq_frags_info*, %struct.mlx5e_rq_frags_info** %8, align 8
  %50 = getelementptr inbounds %struct.mlx5e_rq_frags_info, %struct.mlx5e_rq_frags_info* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %114

51:                                               ; preds = %4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = load i32, i32* @MLX5E_MAX_RX_FRAGS, align 4
  %55 = sub nsw i32 %54, 1
  %56 = load i32, i32* %10, align 4
  %57 = mul nsw i32 %55, %56
  %58 = add nsw i32 %53, %57
  %59 = icmp sgt i32 %52, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %60, %51
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %79, %62
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %103

67:                                               ; preds = %63
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %11, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @MLX5E_MAX_RX_FRAGS, align 4
  %73 = sub nsw i32 %72, 1
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @min(i32 %76, i32 %77)
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %75, %67
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.mlx5e_rq_frags_info*, %struct.mlx5e_rq_frags_info** %8, align 8
  %82 = getelementptr inbounds %struct.mlx5e_rq_frags_info, %struct.mlx5e_rq_frags_info* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 %80, i32* %87, align 4
  %88 = load i32, i32* %14, align 4
  %89 = call i8* @roundup_pow_of_two(i32 %88)
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.mlx5e_rq_frags_info*, %struct.mlx5e_rq_frags_info** %8, align 8
  %92 = getelementptr inbounds %struct.mlx5e_rq_frags_info, %struct.mlx5e_rq_frags_info* %91, i32 0, i32 3
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  store i32 %90, i32* %97, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %63

103:                                              ; preds = %63
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.mlx5e_rq_frags_info*, %struct.mlx5e_rq_frags_info** %8, align 8
  %106 = getelementptr inbounds %struct.mlx5e_rq_frags_info, %struct.mlx5e_rq_frags_info* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.mlx5e_rq_frags_info*, %struct.mlx5e_rq_frags_info** %8, align 8
  %108 = getelementptr inbounds %struct.mlx5e_rq_frags_info, %struct.mlx5e_rq_frags_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = srem i32 %109, 2
  %111 = add nsw i32 1, %110
  %112 = load %struct.mlx5e_rq_frags_info*, %struct.mlx5e_rq_frags_info** %8, align 8
  %113 = getelementptr inbounds %struct.mlx5e_rq_frags_info, %struct.mlx5e_rq_frags_info* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %103, %25
  %115 = load i32, i32* @u8, align 4
  %116 = load %struct.mlx5e_rq_frags_info*, %struct.mlx5e_rq_frags_info** %8, align 8
  %117 = getelementptr inbounds %struct.mlx5e_rq_frags_info, %struct.mlx5e_rq_frags_info* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @max_t(i32 %115, i32 %118, i32 8)
  %120 = load %struct.mlx5e_rq_frags_info*, %struct.mlx5e_rq_frags_info** %8, align 8
  %121 = getelementptr inbounds %struct.mlx5e_rq_frags_info, %struct.mlx5e_rq_frags_info* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.mlx5e_rq_frags_info*, %struct.mlx5e_rq_frags_info** %8, align 8
  %123 = getelementptr inbounds %struct.mlx5e_rq_frags_info, %struct.mlx5e_rq_frags_info* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @order_base_2(i32 %124)
  %126 = load %struct.mlx5e_rq_frags_info*, %struct.mlx5e_rq_frags_info** %8, align 8
  %127 = getelementptr inbounds %struct.mlx5e_rq_frags_info, %struct.mlx5e_rq_frags_info* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  ret void
}

declare dso_local i32 @MLX5E_SW2HW_MTU(%struct.mlx5e_params*, i32) #1

declare dso_local i64 @mlx5e_rx_is_linear_skb(%struct.mlx5e_params*, %struct.mlx5e_xsk_param*) #1

declare dso_local i32 @mlx5e_rx_get_linear_frag_sz(%struct.mlx5e_params*, %struct.mlx5e_xsk_param*) #1

declare dso_local i8* @roundup_pow_of_two(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @order_base_2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
