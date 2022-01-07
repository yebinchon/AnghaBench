; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_mlx5_internal_err_ret_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_mlx5_internal_err_ret_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@MLX5_CMD_STAT_OK = common dso_local global i32 0, align 4
@MLX5_DRIVER_STATUS_ABORTED = common dso_local global i64 0, align 8
@MLX5_DRIVER_SYND = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unknown FW command (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32, i64*, i64*)* @mlx5_internal_err_ret_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_internal_err_ret_value(%struct.mlx5_core_dev* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %10 = load i64*, i64** %8, align 8
  store i64 0, i64* %10, align 8
  %11 = load i64*, i64** %9, align 8
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %22 [
    i32 128, label %13
    i32 221, label %13
    i32 207, label %13
    i32 239, label %13
    i32 244, label %13
    i32 246, label %13
    i32 236, label %13
    i32 238, label %13
    i32 230, label %13
    i32 224, label %13
    i32 223, label %13
    i32 245, label %13
    i32 253, label %13
    i32 232, label %13
    i32 237, label %13
    i32 254, label %13
    i32 251, label %13
    i32 222, label %13
    i32 250, label %13
    i32 252, label %13
    i32 247, label %13
    i32 248, label %13
    i32 240, label %13
    i32 225, label %13
    i32 229, label %13
    i32 231, label %13
    i32 234, label %13
    i32 235, label %13
    i32 228, label %13
    i32 233, label %13
    i32 242, label %13
    i32 243, label %13
    i32 249, label %13
    i32 258, label %13
    i32 302, label %13
    i32 301, label %13
    i32 198, label %13
    i32 202, label %13
    i32 139, label %13
    i32 138, label %13
    i32 255, label %13
    i32 256, label %13
    i32 217, label %13
    i32 241, label %13
    i32 257, label %13
    i32 187, label %13
    i32 179, label %13
    i32 172, label %15
    i32 186, label %15
    i32 209, label %15
    i32 219, label %15
    i32 162, label %15
    i32 137, label %15
    i32 168, label %15
    i32 136, label %15
    i32 275, label %15
    i32 164, label %15
    i32 153, label %15
    i32 280, label %15
    i32 180, label %15
    i32 213, label %15
    i32 282, label %15
    i32 182, label %15
    i32 204, label %15
    i32 272, label %15
    i32 142, label %15
    i32 210, label %15
    i32 141, label %15
    i32 140, label %15
    i32 129, label %15
    i32 161, label %15
    i32 130, label %15
    i32 211, label %15
    i32 274, label %15
    i32 266, label %15
    i32 151, label %15
    i32 287, label %15
    i32 260, label %15
    i32 145, label %15
    i32 286, label %15
    i32 259, label %15
    i32 144, label %15
    i32 285, label %15
    i32 281, label %15
    i32 220, label %15
    i32 181, label %15
    i32 289, label %15
    i32 146, label %15
    i32 190, label %15
    i32 178, label %15
    i32 203, label %15
    i32 163, label %15
    i32 157, label %15
    i32 131, label %15
    i32 171, label %15
    i32 200, label %15
    i32 170, label %15
    i32 169, label %15
    i32 148, label %15
    i32 147, label %15
    i32 293, label %15
    i32 160, label %15
    i32 133, label %15
    i32 288, label %15
    i32 132, label %15
    i32 159, label %15
    i32 268, label %15
    i32 154, label %15
    i32 194, label %15
    i32 273, label %15
    i32 294, label %15
    i32 291, label %15
    i32 283, label %15
    i32 300, label %15
    i32 284, label %15
    i32 212, label %15
    i32 208, label %15
    i32 165, label %15
    i32 134, label %15
    i32 188, label %15
    i32 290, label %15
    i32 292, label %15
    i32 183, label %15
    i32 205, label %15
    i32 185, label %15
    i32 206, label %15
    i32 184, label %15
    i32 299, label %15
    i32 135, label %15
    i32 167, label %15
    i32 276, label %15
    i32 199, label %15
    i32 166, label %15
    i32 261, label %15
    i32 265, label %15
    i32 192, label %15
    i32 150, label %15
    i32 267, label %15
    i32 193, label %15
    i32 152, label %15
    i32 270, label %15
    i32 196, label %15
    i32 156, label %15
    i32 271, label %15
    i32 197, label %15
    i32 158, label %15
    i32 264, label %15
    i32 191, label %15
    i32 149, label %15
    i32 269, label %15
    i32 195, label %15
    i32 155, label %15
    i32 278, label %15
    i32 175, label %15
    i32 279, label %15
    i32 176, label %15
    i32 174, label %15
    i32 298, label %15
    i32 177, label %15
    i32 295, label %15
    i32 296, label %15
    i32 218, label %15
    i32 216, label %15
    i32 215, label %15
    i32 214, label %15
    i32 277, label %15
    i32 201, label %15
    i32 173, label %15
    i32 263, label %15
    i32 227, label %15
    i32 262, label %15
    i32 226, label %15
    i32 297, label %15
    i32 189, label %15
    i32 143, label %15
  ]

13:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %14 = load i32, i32* @MLX5_CMD_STAT_OK, align 4
  store i32 %14, i32* %5, align 4
  br label %28

15:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %16 = load i64, i64* @MLX5_DRIVER_STATUS_ABORTED, align 8
  %17 = load i64*, i64** %9, align 8
  store i64 %16, i64* %17, align 8
  %18 = load i64, i64* @MLX5_DRIVER_SYND, align 8
  %19 = load i64*, i64** %8, align 8
  store i64 %18, i64* %19, align 8
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %28

22:                                               ; preds = %4
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %22, %15, %13
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
