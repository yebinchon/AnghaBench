; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mcg.c_mlx4_QP_ATTACH.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mcg.c_mlx4_QP_ATTACH.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_qp = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, i32 }

@EBADF = common dso_local global i32 0, align 4
@MLX4_CMD_QP_ATTACH = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4
@MLX4_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, %struct.mlx4_qp*, i64*, i64, i64, i32)* @mlx4_QP_ATTACH to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_QP_ATTACH(%struct.mlx4_dev* %0, %struct.mlx4_qp* %1, i64* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca %struct.mlx4_qp*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store %struct.mlx4_qp* %1, %struct.mlx4_qp** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %17 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %18 = call i32 @mlx4_is_mfunc(%struct.mlx4_dev* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @EBADF, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %84

23:                                               ; preds = %6
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %25 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %24)
  store %struct.mlx4_cmd_mailbox* %25, %struct.mlx4_cmd_mailbox** %14, align 8
  %26 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %14, align 8
  %27 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %14, align 8
  %31 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %30)
  store i32 %31, i32* %7, align 4
  br label %84

32:                                               ; preds = %23
  %33 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %14, align 8
  %34 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i64*, i64** %10, align 8
  %37 = call i32 @memcpy(i32 %35, i64* %36, i32 16)
  %38 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %39 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %13, align 4
  %42 = shl i32 %41, 28
  %43 = load i32, i32* %16, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %16, align 4
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %32
  %48 = load i64, i64* %12, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %16, align 4
  %52 = or i32 %51, -2147483648
  store i32 %52, i32* %16, align 4
  br label %53

53:                                               ; preds = %50, %47, %32
  %54 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %55 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %14, align 8
  %56 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load i64, i64* %11, align 8
  %60 = load i32, i32* @MLX4_CMD_QP_ATTACH, align 4
  %61 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %62 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %63 = call i32 @mlx4_cmd(%struct.mlx4_dev* %54, i32 %57, i32 %58, i64 %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %15, align 4
  %64 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %65 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %14, align 8
  %66 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %64, %struct.mlx4_cmd_mailbox* %65)
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %53
  %70 = load i64, i64* %11, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %69
  %73 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %74 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MLX4_DEVICE_STATE_INTERNAL_ERROR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  store i32 0, i32* %15, align 4
  br label %82

82:                                               ; preds = %81, %72, %69, %53
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %82, %29, %20
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
