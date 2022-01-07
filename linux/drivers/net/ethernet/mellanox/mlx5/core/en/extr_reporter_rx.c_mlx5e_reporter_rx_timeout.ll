; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_rx.c_mlx5e_reporter_rx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_rx.c_mlx5e_reporter_rx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i32, %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.mlx5e_priv*, %struct.mlx5e_icosq }
%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_icosq = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5e_err_ctx = type { i32, %struct.mlx5e_rq* }

@MLX5E_REPORTER_PER_Q_MAX_LEN = common dso_local global i32 0, align 4
@mlx5e_rx_reporter_timeout_recover = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"RX timeout on channel: %d, ICOSQ: 0x%x RQ: 0x%x, CQ: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_reporter_rx_timeout(%struct.mlx5e_rq* %0) #0 {
  %2 = alloca %struct.mlx5e_rq*, align 8
  %3 = alloca %struct.mlx5e_icosq*, align 8
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mlx5e_err_ctx, align 8
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %2, align 8
  %8 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %8, i32 0, i32 2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store %struct.mlx5e_icosq* %11, %struct.mlx5e_icosq** %3, align 8
  %12 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %13 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %12, i32 0, i32 2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %15, align 8
  store %struct.mlx5e_priv* %16, %struct.mlx5e_priv** %4, align 8
  %17 = load i32, i32* @MLX5E_REPORTER_PER_Q_MAX_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %5, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %21 = bitcast %struct.mlx5e_err_ctx* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 16, i1 false)
  %22 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %23 = getelementptr inbounds %struct.mlx5e_err_ctx, %struct.mlx5e_err_ctx* %7, i32 0, i32 1
  store %struct.mlx5e_rq* %22, %struct.mlx5e_rq** %23, align 8
  %24 = load i32, i32* @mlx5e_rx_reporter_timeout_recover, align 4
  %25 = getelementptr inbounds %struct.mlx5e_err_ctx, %struct.mlx5e_err_ctx* %7, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %3, align 8
  %27 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %3, align 8
  %32 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %35 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %38 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33, i32 %36, i32 %41)
  %43 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %44 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %45 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mlx5e_health_report(%struct.mlx5e_priv* %43, i32 %46, i8* %20, %struct.mlx5e_err_ctx* %7)
  %48 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %48)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32) #3

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
