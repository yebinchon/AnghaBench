; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mcg.c_mlx4_flow_steer_promisc_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mcg.c_mlx4_flow_steer_promisc_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i64*, i64* }
%struct.mlx4_net_trans_rule = type { i32, i32, i64, i32, i32, i32, i32 }

@MLX4_NET_TRANS_Q_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"going promisc on %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_flow_steer_promisc_add(%struct.mlx4_dev* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_net_trans_rule, align 8
  %11 = alloca i64*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = bitcast %struct.mlx4_net_trans_rule* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 32, i1 false)
  %13 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %10, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %10, i32 0, i32 6
  %15 = load i32, i32* @MLX4_NET_TRANS_Q_FIFO, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %29 [
    i32 129, label %17
    i32 128, label %23
  ]

17:                                               ; preds = %4
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %19 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  store i64* %22, i64** %11, align 8
  br label %30

23:                                               ; preds = %4
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %25 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  store i64* %28, i64** %11, align 8
  br label %30

29:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %50

30:                                               ; preds = %23, %17
  %31 = load i64*, i64** %11, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 -1, i32* %5, align 4
  br label %50

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  %37 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %10, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %10, i32 0, i32 2
  store i64 %38, i64* %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %10, i32 0, i32 4
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %10, i32 0, i32 3
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @mlx4_info(%struct.mlx4_dev* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %48 = load i64*, i64** %11, align 8
  %49 = call i32 @mlx4_flow_attach(%struct.mlx4_dev* %47, %struct.mlx4_net_trans_rule* %10, i64* %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %35, %34, %29
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @mlx4_info(%struct.mlx4_dev*, i8*, i64) #2

declare dso_local i32 @mlx4_flow_attach(%struct.mlx4_dev*, %struct.mlx4_net_trans_rule*, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
