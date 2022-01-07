; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_alloc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_alloc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_cmd_work_ent = type { i32, i32, %struct.mlx5_cmd*, i8*, i64, i8*, %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg* }
%struct.mlx5_cmd = type { i32 }
%struct.mlx5_cmd_msg = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_cmd_work_ent* (%struct.mlx5_cmd*, %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg*, i8*, i32, i64, i8*, i32)* @alloc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_cmd_work_ent* @alloc_cmd(%struct.mlx5_cmd* %0, %struct.mlx5_cmd_msg* %1, %struct.mlx5_cmd_msg* %2, i8* %3, i32 %4, i64 %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.mlx5_cmd_work_ent*, align 8
  %10 = alloca %struct.mlx5_cmd*, align 8
  %11 = alloca %struct.mlx5_cmd_msg*, align 8
  %12 = alloca %struct.mlx5_cmd_msg*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.mlx5_cmd_work_ent*, align 8
  store %struct.mlx5_cmd* %0, %struct.mlx5_cmd** %10, align 8
  store %struct.mlx5_cmd_msg* %1, %struct.mlx5_cmd_msg** %11, align 8
  store %struct.mlx5_cmd_msg* %2, %struct.mlx5_cmd_msg** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %20 = load i64, i64* %15, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %8
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  br label %26

24:                                               ; preds = %8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %18, align 4
  %29 = call %struct.mlx5_cmd_work_ent* @kzalloc(i32 56, i32 %28)
  store %struct.mlx5_cmd_work_ent* %29, %struct.mlx5_cmd_work_ent** %19, align 8
  %30 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %19, align 8
  %31 = icmp ne %struct.mlx5_cmd_work_ent* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.mlx5_cmd_work_ent* @ERR_PTR(i32 %34)
  store %struct.mlx5_cmd_work_ent* %35, %struct.mlx5_cmd_work_ent** %9, align 8
  br label %62

36:                                               ; preds = %26
  %37 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %11, align 8
  %38 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %19, align 8
  %39 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %38, i32 0, i32 7
  store %struct.mlx5_cmd_msg* %37, %struct.mlx5_cmd_msg** %39, align 8
  %40 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %12, align 8
  %41 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %19, align 8
  %42 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %41, i32 0, i32 6
  store %struct.mlx5_cmd_msg* %40, %struct.mlx5_cmd_msg** %42, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %19, align 8
  %45 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %44, i32 0, i32 5
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %19, align 8
  %48 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i64, i64* %15, align 8
  %50 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %19, align 8
  %51 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %50, i32 0, i32 4
  store i64 %49, i64* %51, align 8
  %52 = load i8*, i8** %16, align 8
  %53 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %19, align 8
  %54 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %10, align 8
  %56 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %19, align 8
  %57 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %56, i32 0, i32 2
  store %struct.mlx5_cmd* %55, %struct.mlx5_cmd** %57, align 8
  %58 = load i32, i32* %17, align 4
  %59 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %19, align 8
  %60 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %19, align 8
  store %struct.mlx5_cmd_work_ent* %61, %struct.mlx5_cmd_work_ent** %9, align 8
  br label %62

62:                                               ; preds = %36, %32
  %63 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %9, align 8
  ret %struct.mlx5_cmd_work_ent* %63
}

declare dso_local %struct.mlx5_cmd_work_ent* @kzalloc(i32, i32) #1

declare dso_local %struct.mlx5_cmd_work_ent* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
