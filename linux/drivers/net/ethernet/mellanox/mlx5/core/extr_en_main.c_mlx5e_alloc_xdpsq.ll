; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_alloc_xdpsq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_alloc_xdpsq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_wq_cyc = type { i32* }
%struct.mlx5e_channel = type { i64, i32, %struct.TYPE_9__*, i32, i32, %struct.mlx5_core_dev* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5e_params = type { i32, i32 }
%struct.xdp_umem = type { i32 }
%struct.mlx5e_sq_param = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.mlx5e_xdpsq = type { i32, %struct.xdp_umem*, i32*, i32, i32, i32, %struct.mlx5e_channel*, i32, i32, %struct.mlx5_wq_cyc }

@sqc = common dso_local global i32 0, align 4
@wq = common dso_local global %struct.mlx5_wq_cyc* null, align 8
@MLX5_SND_DBR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_channel*, %struct.mlx5e_params*, %struct.xdp_umem*, %struct.mlx5e_sq_param*, %struct.mlx5e_xdpsq*, i32)* @mlx5e_alloc_xdpsq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_alloc_xdpsq(%struct.mlx5e_channel* %0, %struct.mlx5e_params* %1, %struct.xdp_umem* %2, %struct.mlx5e_sq_param* %3, %struct.mlx5e_xdpsq* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_channel*, align 8
  %9 = alloca %struct.mlx5e_params*, align 8
  %10 = alloca %struct.xdp_umem*, align 8
  %11 = alloca %struct.mlx5e_sq_param*, align 8
  %12 = alloca %struct.mlx5e_xdpsq*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.mlx5_core_dev*, align 8
  %16 = alloca %struct.mlx5_wq_cyc*, align 8
  %17 = alloca i32, align 4
  store %struct.mlx5e_channel* %0, %struct.mlx5e_channel** %8, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %9, align 8
  store %struct.xdp_umem* %2, %struct.xdp_umem** %10, align 8
  store %struct.mlx5e_sq_param* %3, %struct.mlx5e_sq_param** %11, align 8
  store %struct.mlx5e_xdpsq* %4, %struct.mlx5e_xdpsq** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* @sqc, align 4
  %19 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %11, align 8
  %20 = getelementptr inbounds %struct.mlx5e_sq_param, %struct.mlx5e_sq_param* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** @wq, align 8
  %23 = ptrtoint %struct.mlx5_wq_cyc* %22 to i32
  %24 = call i8* @MLX5_ADDR_OF(i32 %18, i32 %21, i32 %23)
  store i8* %24, i8** %14, align 8
  %25 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %26 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %25, i32 0, i32 5
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %26, align 8
  store %struct.mlx5_core_dev* %27, %struct.mlx5_core_dev** %15, align 8
  %28 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %29 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %28, i32 0, i32 9
  store %struct.mlx5_wq_cyc* %29, %struct.mlx5_wq_cyc** %16, align 8
  %30 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %31 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %34 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 4
  %35 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %36 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %39 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 8
  %40 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %41 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %42 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %41, i32 0, i32 6
  store %struct.mlx5e_channel* %40, %struct.mlx5e_channel** %42, align 8
  %43 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %15, align 8
  %44 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %49 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  %50 = load %struct.mlx5e_params*, %struct.mlx5e_params** %9, align 8
  %51 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %54 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load %struct.mlx5e_params*, %struct.mlx5e_params** %9, align 8
  %56 = load %struct.mlx5e_params*, %struct.mlx5e_params** %9, align 8
  %57 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @MLX5E_SW2HW_MTU(%struct.mlx5e_params* %55, i32 %58)
  %60 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %61 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.xdp_umem*, %struct.xdp_umem** %10, align 8
  %63 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %64 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %63, i32 0, i32 1
  store %struct.xdp_umem* %62, %struct.xdp_umem** %64, align 8
  %65 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %66 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %65, i32 0, i32 1
  %67 = load %struct.xdp_umem*, %struct.xdp_umem** %66, align 8
  %68 = icmp ne %struct.xdp_umem* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %6
  %70 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %71 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %70, i32 0, i32 2
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %76 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  br label %107

80:                                               ; preds = %6
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %85 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %84, i32 0, i32 2
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %90 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  br label %105

94:                                               ; preds = %80
  %95 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %96 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %95, i32 0, i32 2
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %101 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  br label %105

105:                                              ; preds = %94, %83
  %106 = phi i32* [ %93, %83 ], [ %104, %94 ]
  br label %107

107:                                              ; preds = %105, %69
  %108 = phi i32* [ %79, %69 ], [ %106, %105 ]
  %109 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %110 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %109, i32 0, i32 2
  store i32* %108, i32** %110, align 8
  %111 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %112 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @cpu_to_node(i32 %113)
  %115 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %11, align 8
  %116 = getelementptr inbounds %struct.mlx5e_sq_param, %struct.mlx5e_sq_param* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 4
  %118 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %15, align 8
  %119 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %11, align 8
  %120 = getelementptr inbounds %struct.mlx5e_sq_param, %struct.mlx5e_sq_param* %119, i32 0, i32 0
  %121 = load i8*, i8** %14, align 8
  %122 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %16, align 8
  %123 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %124 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %123, i32 0, i32 0
  %125 = call i32 @mlx5_wq_cyc_create(%struct.mlx5_core_dev* %118, %struct.TYPE_10__* %120, i8* %121, %struct.mlx5_wq_cyc* %122, i32* %124)
  store i32 %125, i32* %17, align 4
  %126 = load i32, i32* %17, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %107
  %129 = load i32, i32* %17, align 4
  store i32 %129, i32* %7, align 4
  br label %153

130:                                              ; preds = %107
  %131 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %16, align 8
  %132 = getelementptr inbounds %struct.mlx5_wq_cyc, %struct.mlx5_wq_cyc* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @MLX5_SND_DBR, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %16, align 8
  %137 = getelementptr inbounds %struct.mlx5_wq_cyc, %struct.mlx5_wq_cyc* %136, i32 0, i32 0
  store i32* %135, i32** %137, align 8
  %138 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %139 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %140 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @cpu_to_node(i32 %141)
  %143 = call i32 @mlx5e_alloc_xdpsq_db(%struct.mlx5e_xdpsq* %138, i32 %142)
  store i32 %143, i32* %17, align 4
  %144 = load i32, i32* %17, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %130
  br label %148

147:                                              ; preds = %130
  store i32 0, i32* %7, align 4
  br label %153

148:                                              ; preds = %146
  %149 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %150 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %149, i32 0, i32 0
  %151 = call i32 @mlx5_wq_destroy(i32* %150)
  %152 = load i32, i32* %17, align 4
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %148, %147, %128
  %154 = load i32, i32* %7, align 4
  ret i32 %154
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i32, i32) #1

declare dso_local i32 @MLX5E_SW2HW_MTU(%struct.mlx5e_params*, i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @mlx5_wq_cyc_create(%struct.mlx5_core_dev*, %struct.TYPE_10__*, i8*, %struct.mlx5_wq_cyc*, i32*) #1

declare dso_local i32 @mlx5e_alloc_xdpsq_db(%struct.mlx5e_xdpsq*, i32) #1

declare dso_local i32 @mlx5_wq_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
