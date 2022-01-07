; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_mlx5_cmd_exec_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_mlx5_cmd_exec_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_async_ctx = type { i32, i32, i32 }
%struct.mlx5_async_work = type { i32, %struct.mlx5_async_ctx* }

@EIO = common dso_local global i32 0, align 4
@mlx5_cmd_exec_cb_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_cmd_exec_cb(%struct.mlx5_async_ctx* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, %struct.mlx5_async_work* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_async_ctx*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mlx5_async_work*, align 8
  %16 = alloca i32, align 4
  store %struct.mlx5_async_ctx* %0, %struct.mlx5_async_ctx** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.mlx5_async_work* %6, %struct.mlx5_async_work** %15, align 8
  %17 = load %struct.mlx5_async_ctx*, %struct.mlx5_async_ctx** %9, align 8
  %18 = load %struct.mlx5_async_work*, %struct.mlx5_async_work** %15, align 8
  %19 = getelementptr inbounds %struct.mlx5_async_work, %struct.mlx5_async_work* %18, i32 0, i32 1
  store %struct.mlx5_async_ctx* %17, %struct.mlx5_async_ctx** %19, align 8
  %20 = load i32, i32* %14, align 4
  %21 = load %struct.mlx5_async_work*, %struct.mlx5_async_work** %15, align 8
  %22 = getelementptr inbounds %struct.mlx5_async_work, %struct.mlx5_async_work* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.mlx5_async_ctx*, %struct.mlx5_async_ctx** %9, align 8
  %24 = getelementptr inbounds %struct.mlx5_async_ctx, %struct.mlx5_async_ctx* %23, i32 0, i32 1
  %25 = call i32 @atomic_inc_not_zero(i32* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %7
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %58

34:                                               ; preds = %7
  %35 = load %struct.mlx5_async_ctx*, %struct.mlx5_async_ctx** %9, align 8
  %36 = getelementptr inbounds %struct.mlx5_async_ctx, %struct.mlx5_async_ctx* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @mlx5_cmd_exec_cb_handler, align 4
  %43 = load %struct.mlx5_async_work*, %struct.mlx5_async_work** %15, align 8
  %44 = call i32 @cmd_exec(i32 %37, i8* %38, i32 %39, i8* %40, i32 %41, i32 %42, %struct.mlx5_async_work* %43, i32 0)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %34
  %48 = load %struct.mlx5_async_ctx*, %struct.mlx5_async_ctx** %9, align 8
  %49 = getelementptr inbounds %struct.mlx5_async_ctx, %struct.mlx5_async_ctx* %48, i32 0, i32 1
  %50 = call i64 @atomic_dec_and_test(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.mlx5_async_ctx*, %struct.mlx5_async_ctx** %9, align 8
  %54 = getelementptr inbounds %struct.mlx5_async_ctx, %struct.mlx5_async_ctx* %53, i32 0, i32 0
  %55 = call i32 @wake_up(i32* %54)
  br label %56

56:                                               ; preds = %52, %47, %34
  %57 = load i32, i32* %16, align 4
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %56, %31
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @cmd_exec(i32, i8*, i32, i8*, i32, i32, %struct.mlx5_async_work*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
