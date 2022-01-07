; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_cmd_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_cmd_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.mlx4_cmd_context* }
%struct.mlx4_cmd_context = type { i64, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_cmd_event(%struct.mlx4_dev* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_priv*, align 8
  %10 = alloca %struct.mlx4_cmd_context*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %12 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %11)
  store %struct.mlx4_priv* %12, %struct.mlx4_priv** %9, align 8
  %13 = load %struct.mlx4_priv*, %struct.mlx4_priv** %9, align 8
  %14 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.mlx4_priv*, %struct.mlx4_priv** %9, align 8
  %19 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = and i64 %17, %21
  %23 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %16, i64 %22
  store %struct.mlx4_cmd_context* %23, %struct.mlx4_cmd_context** %10, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %10, align 8
  %26 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %44

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %10, align 8
  %33 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @mlx4_status_to_errno(i32 %34)
  %36 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %10, align 8
  %37 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %10, align 8
  %40 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %10, align 8
  %42 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %41, i32 0, i32 1
  %43 = call i32 @complete(i32* %42)
  br label %44

44:                                               ; preds = %30, %29
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_status_to_errno(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
