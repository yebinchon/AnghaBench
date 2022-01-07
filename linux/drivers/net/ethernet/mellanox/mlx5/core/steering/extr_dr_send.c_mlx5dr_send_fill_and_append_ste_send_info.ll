; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_mlx5dr_send_fill_and_append_ste_send_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_mlx5dr_send_fill_and_append_ste_send_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_ste = type { i32 }
%struct.mlx5dr_ste_send_info = type { i32, i32*, i32*, i8*, %struct.mlx5dr_ste*, i8* }
%struct.list_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5dr_send_fill_and_append_ste_send_info(%struct.mlx5dr_ste* %0, i8* %1, i8* %2, i32* %3, %struct.mlx5dr_ste_send_info* %4, %struct.list_head* %5, i32 %6) #0 {
  %8 = alloca %struct.mlx5dr_ste*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mlx5dr_ste_send_info*, align 8
  %13 = alloca %struct.list_head*, align 8
  %14 = alloca i32, align 4
  store %struct.mlx5dr_ste* %0, %struct.mlx5dr_ste** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.mlx5dr_ste_send_info* %4, %struct.mlx5dr_ste_send_info** %12, align 8
  store %struct.list_head* %5, %struct.list_head** %13, align 8
  store i32 %6, i32* %14, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %12, align 8
  %17 = getelementptr inbounds %struct.mlx5dr_ste_send_info, %struct.mlx5dr_ste_send_info* %16, i32 0, i32 5
  store i8* %15, i8** %17, align 8
  %18 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %8, align 8
  %19 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %12, align 8
  %20 = getelementptr inbounds %struct.mlx5dr_ste_send_info, %struct.mlx5dr_ste_send_info* %19, i32 0, i32 4
  store %struct.mlx5dr_ste* %18, %struct.mlx5dr_ste** %20, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %12, align 8
  %23 = getelementptr inbounds %struct.mlx5dr_ste_send_info, %struct.mlx5dr_ste_send_info* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %7
  %27 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %12, align 8
  %28 = getelementptr inbounds %struct.mlx5dr_ste_send_info, %struct.mlx5dr_ste_send_info* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @memcpy(i32* %29, i32* %30, i8* %31)
  %33 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %12, align 8
  %34 = getelementptr inbounds %struct.mlx5dr_ste_send_info, %struct.mlx5dr_ste_send_info* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %12, align 8
  %37 = getelementptr inbounds %struct.mlx5dr_ste_send_info, %struct.mlx5dr_ste_send_info* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  br label %42

38:                                               ; preds = %7
  %39 = load i32*, i32** %11, align 8
  %40 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %12, align 8
  %41 = getelementptr inbounds %struct.mlx5dr_ste_send_info, %struct.mlx5dr_ste_send_info* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  br label %42

42:                                               ; preds = %38, %26
  %43 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %12, align 8
  %44 = getelementptr inbounds %struct.mlx5dr_ste_send_info, %struct.mlx5dr_ste_send_info* %43, i32 0, i32 0
  %45 = load %struct.list_head*, %struct.list_head** %13, align 8
  %46 = call i32 @list_add_tail(i32* %44, %struct.list_head* %45)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i8*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
