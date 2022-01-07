; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_tls_del_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_tls_del_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlx5_fpga_tls* }
%struct.mlx5_fpga_tls = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"No flow information for swid %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_fpga_tls_del_flow(%struct.mlx5_core_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_fpga_tls*, align 8
  %10 = alloca i8*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %12 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %14, align 8
  store %struct.mlx5_fpga_tls* %15, %struct.mlx5_fpga_tls** %9, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %9, align 8
  %20 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %19, i32 0, i32 3
  %21 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %9, align 8
  %22 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %21, i32 0, i32 2
  %23 = load i32, i32* %6, align 4
  %24 = call i8* @mlx5_fpga_tls_release_swid(i32* %20, i32* %22, i32 %23)
  store i8* %24, i8** %10, align 8
  br label %32

25:                                               ; preds = %4
  %26 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %9, align 8
  %27 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %26, i32 0, i32 1
  %28 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %9, align 8
  %29 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %28, i32 0, i32 0
  %30 = load i32, i32* %6, align 4
  %31 = call i8* @mlx5_fpga_tls_release_swid(i32* %27, i32* %29, i32 %30)
  store i8* %31, i8** %10, align 8
  br label %32

32:                                               ; preds = %25, %18
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %37 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @mlx5_fpga_err(%struct.TYPE_2__* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %48

41:                                               ; preds = %32
  %42 = call i32 (...) @synchronize_rcu()
  %43 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @mlx5_fpga_tls_send_teardown_cmd(%struct.mlx5_core_dev* %43, i8* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %35
  ret void
}

declare dso_local i8* @mlx5_fpga_tls_release_swid(i32*, i32*, i32) #1

declare dso_local i32 @mlx5_fpga_err(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @mlx5_fpga_tls_send_teardown_cmd(%struct.mlx5_core_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
