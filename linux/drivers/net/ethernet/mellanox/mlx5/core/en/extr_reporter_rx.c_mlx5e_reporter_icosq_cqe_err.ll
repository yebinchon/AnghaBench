; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_rx.c_mlx5e_reporter_icosq_cqe_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_rx.c_mlx5e_reporter_icosq_cqe_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_icosq = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlx5e_priv* }
%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_err_ctx = type { i32, %struct.mlx5e_icosq* }

@MLX5E_REPORTER_PER_Q_MAX_LEN = common dso_local global i32 0, align 4
@mlx5e_rx_reporter_err_icosq_cqe_recover = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ERR CQE on ICOSQ: 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_reporter_icosq_cqe_err(%struct.mlx5e_icosq* %0) #0 {
  %2 = alloca %struct.mlx5e_icosq*, align 8
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlx5e_err_ctx, align 8
  store %struct.mlx5e_icosq* %0, %struct.mlx5e_icosq** %2, align 8
  %7 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  store %struct.mlx5e_priv* %11, %struct.mlx5e_priv** %3, align 8
  %12 = load i32, i32* @MLX5E_REPORTER_PER_Q_MAX_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = bitcast %struct.mlx5e_err_ctx* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %2, align 8
  %18 = getelementptr inbounds %struct.mlx5e_err_ctx, %struct.mlx5e_err_ctx* %6, i32 0, i32 1
  store %struct.mlx5e_icosq* %17, %struct.mlx5e_icosq** %18, align 8
  %19 = load i32, i32* @mlx5e_rx_reporter_err_icosq_cqe_recover, align 4
  %20 = getelementptr inbounds %struct.mlx5e_err_ctx, %struct.mlx5e_err_ctx* %6, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %2, align 8
  %22 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %26 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %27 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mlx5e_health_report(%struct.mlx5e_priv* %25, i32 %28, i8* %15, %struct.mlx5e_err_ctx* %6)
  %30 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %30)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #3

declare dso_local i32 @mlx5e_health_report(%struct.mlx5e_priv*, i32, i8*, %struct.mlx5e_err_ctx*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
