; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_post_rx_mpwqes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_post_rx_mpwqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i64, %struct.TYPE_6__, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i64, i64, i32, %struct.mlx5_wq_ll }
%struct.mlx5_wq_ll = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.mlx5e_icosq }
%struct.mlx5e_icosq = type { i32*, i32, i32, i32 }

@MLX5E_RQ_STATE_ENABLED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UMR_WQE_BULK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_post_rx_mpwqes(%struct.mlx5e_rq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_rq*, align 8
  %4 = alloca %struct.mlx5e_icosq*, align 8
  %5 = alloca %struct.mlx5_wq_ll*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %3, align 8
  %11 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %11, i32 0, i32 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.mlx5e_icosq* %14, %struct.mlx5e_icosq** %4, align 8
  %15 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 4
  store %struct.mlx5_wq_ll* %17, %struct.mlx5_wq_ll** %5, align 8
  %18 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %22 = load i32, i32* @MLX5E_RQ_STATE_ENABLED, align 4
  %23 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %23, i32 0, i32 3
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %160

32:                                               ; preds = %1
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @mlx5e_post_rx_mpwqe(%struct.mlx5e_rq* %36, i64 %37)
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %41 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, %39
  store i64 %44, i64* %42, align 8
  %45 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %46 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %35, %32
  %49 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %5, align 8
  %50 = call i64 @mlx5_wq_ll_missing(%struct.mlx5_wq_ll* %49)
  %51 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %52 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %50, %54
  store i64 %55, i64* %8, align 8
  %56 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %57 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %61 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %59, %63
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %48
  %69 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %70 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %68, %48
  %76 = load i64, i64* %8, align 8
  %77 = icmp slt i64 %76, 2
  %78 = zext i1 %77 to i32
  %79 = call i64 @likely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %160

82:                                               ; preds = %75
  %83 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %84 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %10, align 4
  %87 = load i64, i64* %8, align 8
  store i64 %87, i64* %9, align 8
  br label %88

88:                                               ; preds = %100, %82
  %89 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @mlx5e_alloc_rx_mpwqe(%struct.mlx5e_rq* %89, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %104

96:                                               ; preds = %88
  %97 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %5, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @mlx5_wq_ll_get_wqe_next_ix(%struct.mlx5_wq_ll* %97, i32 %98)
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %96
  %101 = load i64, i64* %9, align 8
  %102 = add nsw i64 %101, -1
  store i64 %102, i64* %9, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %88, label %104

104:                                              ; preds = %100, %95
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* %9, align 8
  %107 = sub nsw i64 %105, %106
  %108 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %109 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  store i64 %107, i64* %110, align 8
  %111 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %4, align 8
  %112 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %130

115:                                              ; preds = %104
  %116 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %4, align 8
  %117 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %116, i32 0, i32 3
  %118 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %4, align 8
  %119 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %4, align 8
  %122 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %4, align 8
  %125 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @mlx5e_notify_hw(i32* %117, i32 %120, i32 %123, i32* %126)
  %128 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %4, align 8
  %129 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %128, i32 0, i32 0
  store i32* null, i32** %129, align 8
  br label %130

130:                                              ; preds = %115, %104
  %131 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %132 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %136 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, %134
  store i64 %139, i64* %137, align 8
  %140 = load i32, i32* %10, align 4
  %141 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %142 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 3
  store i32 %140, i32* %143, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %130
  %149 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %150 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br label %153

153:                                              ; preds = %148, %130
  %154 = phi i1 [ false, %130 ], [ %152, %148 ]
  %155 = zext i1 %154 to i32
  %156 = call i64 @unlikely(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  store i32 1, i32* %2, align 4
  br label %160

159:                                              ; preds = %153
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %159, %158, %81, %31
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mlx5e_post_rx_mpwqe(%struct.mlx5e_rq*, i64) #1

declare dso_local i64 @mlx5_wq_ll_missing(%struct.mlx5_wq_ll*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mlx5e_alloc_rx_mpwqe(%struct.mlx5e_rq*, i32) #1

declare dso_local i32 @mlx5_wq_ll_get_wqe_next_ix(%struct.mlx5_wq_ll*, i32) #1

declare dso_local i32 @mlx5e_notify_hw(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
