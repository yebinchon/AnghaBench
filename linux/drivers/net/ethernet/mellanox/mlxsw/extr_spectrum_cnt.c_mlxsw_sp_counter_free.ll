; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_cnt.c_mlxsw_sp_counter_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_cnt.c_mlxsw_sp_counter_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_counter_sub_pool = type { i32 }
%struct.mlxsw_sp = type { %struct.mlxsw_sp_counter_pool* }
%struct.mlxsw_sp_counter_pool = type { i32, i32 }

@mlxsw_sp_counter_sub_pools = common dso_local global %struct.mlxsw_sp_counter_sub_pool* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_counter_free(%struct.mlxsw_sp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp_counter_pool*, align 8
  %8 = alloca %struct.mlxsw_sp_counter_sub_pool*, align 8
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_sp_counter_pool*, %struct.mlxsw_sp_counter_pool** %11, align 8
  store %struct.mlxsw_sp_counter_pool* %12, %struct.mlxsw_sp_counter_pool** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.mlxsw_sp_counter_pool*, %struct.mlxsw_sp_counter_pool** %7, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_counter_pool, %struct.mlxsw_sp_counter_pool* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp uge i32 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %44

22:                                               ; preds = %3
  %23 = load %struct.mlxsw_sp_counter_sub_pool*, %struct.mlxsw_sp_counter_sub_pool** @mlxsw_sp_counter_sub_pools, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mlxsw_sp_counter_sub_pool, %struct.mlxsw_sp_counter_sub_pool* %23, i64 %25
  store %struct.mlxsw_sp_counter_sub_pool* %26, %struct.mlxsw_sp_counter_sub_pool** %8, align 8
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %41, %22
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.mlxsw_sp_counter_sub_pool*, %struct.mlxsw_sp_counter_sub_pool** %8, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_counter_sub_pool, %struct.mlxsw_sp_counter_sub_pool* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = add i32 %34, %35
  %37 = load %struct.mlxsw_sp_counter_pool*, %struct.mlxsw_sp_counter_pool** %7, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_counter_pool, %struct.mlxsw_sp_counter_pool* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @__clear_bit(i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %27

44:                                               ; preds = %21, %27
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
