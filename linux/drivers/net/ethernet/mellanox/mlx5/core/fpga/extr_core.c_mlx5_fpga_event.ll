; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_core.c_mlx5_fpga_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_core.c_mlx5_fpga_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_device = type { i32, i32, i32 }
%struct.mlx5_eqe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@fpga_error_event = common dso_local global i32 0, align 4
@fpga_qp_error_event = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Error %u: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Unexpected error event %u: %s\0A\00", align 1
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_fpga_device*, i64, i8*)* @mlx5_fpga_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fpga_event(%struct.mlx5_fpga_device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_fpga_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.mlx5_eqe*
  %15 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  store i32 0, i32* %10, align 4
  %18 = load i64, i64* %6, align 8
  switch i64 %18, label %33 [
    i64 130, label %19
    i64 129, label %26
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* @fpga_error_event, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @MLX5_GET(i32 %20, i8* %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i8* @mlx5_fpga_syndrome_to_string(i32 %24)
  store i8* %25, i8** %9, align 8
  br label %35

26:                                               ; preds = %3
  %27 = load i32, i32* @fpga_qp_error_event, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @MLX5_GET(i32 %27, i8* %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i8* @mlx5_fpga_qp_syndrome_to_string(i32 %31)
  store i8* %32, i8** %9, align 8
  br label %35

33:                                               ; preds = %3
  %34 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %34, i32* %4, align 4
  br label %67

35:                                               ; preds = %26, %19
  %36 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %37 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %36, i32 0, i32 2
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %48 [
    i32 128, label %43
  ]

43:                                               ; preds = %35
  %44 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @mlx5_fpga_warn(%struct.mlx5_fpga_device* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %45, i8* %46)
  store i32 1, i32* %10, align 4
  br label %53

48:                                               ; preds = %35
  %49 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @mlx5_fpga_warn_ratelimited(%struct.mlx5_fpga_device* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %50, i8* %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %55 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %54, i32 0, i32 2
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %62 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @mlx5_trigger_health_work(i32 %63)
  br label %65

65:                                               ; preds = %60, %53
  %66 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %33
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @MLX5_GET(i32, i8*, i32) #1

declare dso_local i8* @mlx5_fpga_syndrome_to_string(i32) #1

declare dso_local i8* @mlx5_fpga_qp_syndrome_to_string(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mlx5_fpga_warn(%struct.mlx5_fpga_device*, i8*, i32, i8*) #1

declare dso_local i32 @mlx5_fpga_warn_ratelimited(%struct.mlx5_fpga_device*, i8*, i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mlx5_trigger_health_work(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
