; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fw.c_mlx5_fw_image_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fw.c_mlx5_fw_image_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@mcqs_reg = common dso_local global i32 0, align 4
@MCQS_UPDATE_STATE_IDLE = common dso_local global i64 0, align 8
@MCQS_UPDATE_STATE_ACTIVE_PENDING_RESET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"mcqs: can't read pending fw version while fw state is %d\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32, i32*)* @mlx5_fw_image_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fw_image_pending(%struct.mlx5_core_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @mcqs_reg, align 4
  %14 = call i32 @MLX5_ST_SZ_DW(i32 %13)
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @mlx5_reg_mcqs_query(%struct.mlx5_core_dev* %18, i32* %17, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %48

25:                                               ; preds = %3
  %26 = load i32, i32* @mcqs_reg, align 4
  %27 = load i64, i64* %10, align 8
  %28 = call i64 @MLX5_GET(i32 %26, i32* %17, i64 %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @MCQS_UPDATE_STATE_IDLE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32*, i32** %7, align 8
  store i32 0, i32* %33, align 4
  br label %47

34:                                               ; preds = %25
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @MCQS_UPDATE_STATE_ACTIVE_PENDING_RESET, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32*, i32** %7, align 8
  store i32 1, i32* %39, align 4
  br label %46

40:                                               ; preds = %34
  %41 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %41, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* @ENODATA, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %48

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %32
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %48

48:                                               ; preds = %47, %40, %23
  %49 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlx5_reg_mcqs_query(%struct.mlx5_core_dev*, i32*, i32) #1

declare dso_local i64 @MLX5_GET(i32, i32*, i64) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
