; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_dr_rdma_segments.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_dr_rdma_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_qp = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dr_data_seg = type { i32, i32, i32, i64 }
%struct.mlx5_wqe_raddr_seg = type { i64, i8*, i8* }
%struct.mlx5_wqe_ctrl_seg = type { i8*, i8*, i32, i64 }
%struct.mlx5_wqe_data_seg = type { i8*, i8*, i8* }

@MLX5_WQE_CTRL_CQ_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5dr_qp*, i32, i32, %struct.dr_data_seg*, i32, i32)* @dr_rdma_segments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_rdma_segments(%struct.mlx5dr_qp* %0, i32 %1, i32 %2, %struct.dr_data_seg* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.mlx5dr_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dr_data_seg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlx5_wqe_raddr_seg*, align 8
  %14 = alloca %struct.mlx5_wqe_ctrl_seg*, align 8
  %15 = alloca %struct.mlx5_wqe_data_seg*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlx5dr_qp* %0, %struct.mlx5dr_qp** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.dr_data_seg* %3, %struct.dr_data_seg** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 4, i32* %16, align 4
  %18 = load %struct.mlx5dr_qp*, %struct.mlx5dr_qp** %7, align 8
  %19 = getelementptr inbounds %struct.mlx5dr_qp, %struct.mlx5dr_qp* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mlx5dr_qp*, %struct.mlx5dr_qp** %7, align 8
  %23 = getelementptr inbounds %struct.mlx5dr_qp, %struct.mlx5dr_qp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = and i32 %21, %26
  store i32 %27, i32* %17, align 4
  %28 = load %struct.mlx5dr_qp*, %struct.mlx5dr_qp** %7, align 8
  %29 = getelementptr inbounds %struct.mlx5dr_qp, %struct.mlx5dr_qp* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %17, align 4
  %32 = call %struct.mlx5_wqe_ctrl_seg* @mlx5_wq_cyc_get_wqe(i32* %30, i32 %31)
  store %struct.mlx5_wqe_ctrl_seg* %32, %struct.mlx5_wqe_ctrl_seg** %14, align 8
  %33 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %14, align 8
  %34 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load %struct.dr_data_seg*, %struct.dr_data_seg** %10, align 8
  %36 = getelementptr inbounds %struct.dr_data_seg, %struct.dr_data_seg* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %6
  %40 = load i32, i32* @MLX5_WQE_CTRL_CQ_UPDATE, align 4
  br label %42

41:                                               ; preds = %6
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 0, %41 ]
  %44 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %14, align 8
  %45 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.mlx5dr_qp*, %struct.mlx5dr_qp** %7, align 8
  %47 = getelementptr inbounds %struct.mlx5dr_qp, %struct.mlx5dr_qp* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, 65535
  %51 = shl i32 %50, 8
  %52 = load i32, i32* %11, align 4
  %53 = or i32 %51, %52
  %54 = call i8* @cpu_to_be32(i32 %53)
  %55 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %14, align 8
  %56 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %16, align 4
  %58 = load %struct.mlx5dr_qp*, %struct.mlx5dr_qp** %7, align 8
  %59 = getelementptr inbounds %struct.mlx5dr_qp, %struct.mlx5dr_qp* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 %61, 8
  %63 = or i32 %57, %62
  %64 = call i8* @cpu_to_be32(i32 %63)
  %65 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %14, align 8
  %66 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %14, align 8
  %68 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %67, i64 1
  %69 = bitcast %struct.mlx5_wqe_ctrl_seg* %68 to i8*
  %70 = bitcast i8* %69 to %struct.mlx5_wqe_raddr_seg*
  store %struct.mlx5_wqe_raddr_seg* %70, %struct.mlx5_wqe_raddr_seg** %13, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i8* @cpu_to_be64(i32 %71)
  %73 = load %struct.mlx5_wqe_raddr_seg*, %struct.mlx5_wqe_raddr_seg** %13, align 8
  %74 = getelementptr inbounds %struct.mlx5_wqe_raddr_seg, %struct.mlx5_wqe_raddr_seg* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i8* @cpu_to_be32(i32 %75)
  %77 = load %struct.mlx5_wqe_raddr_seg*, %struct.mlx5_wqe_raddr_seg** %13, align 8
  %78 = getelementptr inbounds %struct.mlx5_wqe_raddr_seg, %struct.mlx5_wqe_raddr_seg* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.mlx5_wqe_raddr_seg*, %struct.mlx5_wqe_raddr_seg** %13, align 8
  %80 = getelementptr inbounds %struct.mlx5_wqe_raddr_seg, %struct.mlx5_wqe_raddr_seg* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load %struct.mlx5_wqe_raddr_seg*, %struct.mlx5_wqe_raddr_seg** %13, align 8
  %82 = getelementptr inbounds %struct.mlx5_wqe_raddr_seg, %struct.mlx5_wqe_raddr_seg* %81, i64 1
  %83 = bitcast %struct.mlx5_wqe_raddr_seg* %82 to i8*
  %84 = bitcast i8* %83 to %struct.mlx5_wqe_data_seg*
  store %struct.mlx5_wqe_data_seg* %84, %struct.mlx5_wqe_data_seg** %15, align 8
  %85 = load %struct.dr_data_seg*, %struct.dr_data_seg** %10, align 8
  %86 = getelementptr inbounds %struct.dr_data_seg, %struct.dr_data_seg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @cpu_to_be32(i32 %87)
  %89 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %15, align 8
  %90 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load %struct.dr_data_seg*, %struct.dr_data_seg** %10, align 8
  %92 = getelementptr inbounds %struct.dr_data_seg, %struct.dr_data_seg* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @cpu_to_be32(i32 %93)
  %95 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %15, align 8
  %96 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load %struct.dr_data_seg*, %struct.dr_data_seg** %10, align 8
  %98 = getelementptr inbounds %struct.dr_data_seg, %struct.dr_data_seg* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @cpu_to_be64(i32 %99)
  %101 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %15, align 8
  %102 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load %struct.mlx5dr_qp*, %struct.mlx5dr_qp** %7, align 8
  %104 = getelementptr inbounds %struct.mlx5dr_qp, %struct.mlx5dr_qp* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  %108 = load %struct.mlx5dr_qp*, %struct.mlx5dr_qp** %7, align 8
  %109 = getelementptr inbounds %struct.mlx5dr_qp, %struct.mlx5dr_qp* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %17, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %106, i32* %114, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %42
  %118 = load %struct.mlx5dr_qp*, %struct.mlx5dr_qp** %7, align 8
  %119 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %14, align 8
  %120 = call i32 @dr_cmd_notify_hw(%struct.mlx5dr_qp* %118, %struct.mlx5_wqe_ctrl_seg* %119)
  br label %121

121:                                              ; preds = %117, %42
  ret void
}

declare dso_local %struct.mlx5_wqe_ctrl_seg* @mlx5_wq_cyc_get_wqe(i32*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @dr_cmd_notify_hw(%struct.mlx5dr_qp*, %struct.mlx5_wqe_ctrl_seg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
