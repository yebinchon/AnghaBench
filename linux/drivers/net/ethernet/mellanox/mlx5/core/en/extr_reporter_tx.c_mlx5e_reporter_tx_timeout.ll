; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_tx.c_mlx5e_reporter_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_tx.c_mlx5e_reporter_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_txqsq = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.mlx5e_priv* }
%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_err_ctx = type { i32, %struct.mlx5e_txqsq* }

@MLX5E_REPORTER_PER_Q_MAX_LEN = common dso_local global i32 0, align 4
@mlx5e_tx_reporter_timeout_recover = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"TX timeout on queue: %d, SQ: 0x%x, CQ: 0x%x, SQ Cons: 0x%x SQ Prod: 0x%x, usecs since last trans: %u\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_reporter_tx_timeout(%struct.mlx5e_txqsq* %0) #0 {
  %2 = alloca %struct.mlx5e_txqsq*, align 8
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlx5e_err_ctx, align 8
  store %struct.mlx5e_txqsq* %0, %struct.mlx5e_txqsq** %2, align 8
  %7 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %7, i32 0, i32 5
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  store %struct.mlx5e_priv* %11, %struct.mlx5e_priv** %3, align 8
  %12 = load i32, i32* @MLX5E_REPORTER_PER_Q_MAX_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %17 = getelementptr inbounds %struct.mlx5e_err_ctx, %struct.mlx5e_err_ctx* %6, i32 0, i32 1
  store %struct.mlx5e_txqsq* %16, %struct.mlx5e_txqsq** %17, align 8
  %18 = load i32, i32* @mlx5e_tx_reporter_timeout_recover, align 4
  %19 = getelementptr inbounds %struct.mlx5e_err_ctx, %struct.mlx5e_err_ctx* %6, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %21 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %20, i32 0, i32 5
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %26 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %29 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %34 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %37 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* @jiffies, align 8
  %40 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %41 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %40, i32 0, i32 3
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %39, %44
  %46 = call i32 @jiffies_to_usecs(i64 %45)
  %47 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %32, i32 %35, i32 %38, i32 %46)
  %48 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %49 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %50 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mlx5e_health_report(%struct.mlx5e_priv* %48, i32 %51, i8* %15, %struct.mlx5e_err_ctx* %6)
  %53 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %53)
  ret i32 %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @jiffies_to_usecs(i64) #2

declare dso_local i32 @mlx5e_health_report(%struct.mlx5e_priv*, i32, i8*, %struct.mlx5e_err_ctx*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
