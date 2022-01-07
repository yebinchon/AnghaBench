; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_cnt.c_mlxsw_sp_counter_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_cnt.c_mlxsw_sp_counter_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_counter_sub_pool = type { i32, i32, i32 }
%struct.mlxsw_sp = type { %struct.mlxsw_sp_counter_pool* }
%struct.mlxsw_sp_counter_pool = type { i32 }

@mlxsw_sp_counter_sub_pools = common dso_local global %struct.mlxsw_sp_counter_sub_pool* null, align 8
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_counter_alloc(%struct.mlxsw_sp* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mlxsw_sp_counter_pool*, align 8
  %9 = alloca %struct.mlxsw_sp_counter_sub_pool*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %13, i32 0, i32 0
  %15 = load %struct.mlxsw_sp_counter_pool*, %struct.mlxsw_sp_counter_pool** %14, align 8
  store %struct.mlxsw_sp_counter_pool* %15, %struct.mlxsw_sp_counter_pool** %8, align 8
  %16 = load %struct.mlxsw_sp_counter_sub_pool*, %struct.mlxsw_sp_counter_sub_pool** @mlxsw_sp_counter_sub_pools, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mlxsw_sp_counter_sub_pool, %struct.mlxsw_sp_counter_sub_pool* %16, i64 %18
  store %struct.mlxsw_sp_counter_sub_pool* %19, %struct.mlxsw_sp_counter_sub_pool** %9, align 8
  %20 = load %struct.mlxsw_sp_counter_sub_pool*, %struct.mlxsw_sp_counter_sub_pool** %9, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_counter_sub_pool, %struct.mlxsw_sp_counter_sub_pool* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mlxsw_sp_counter_sub_pool*, %struct.mlxsw_sp_counter_sub_pool** %9, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_counter_sub_pool, %struct.mlxsw_sp_counter_sub_pool* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add i32 %22, %25
  store i32 %26, i32* %11, align 4
  %27 = load %struct.mlxsw_sp_counter_sub_pool*, %struct.mlxsw_sp_counter_sub_pool** %9, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_counter_sub_pool, %struct.mlxsw_sp_counter_sub_pool* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.mlxsw_sp_counter_pool*, %struct.mlxsw_sp_counter_pool** %8, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_counter_pool, %struct.mlxsw_sp_counter_pool* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @find_next_zero_bit(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %3
  %40 = load i32, i32* @ENOBUFS, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %74

42:                                               ; preds = %3
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.mlxsw_sp_counter_sub_pool*, %struct.mlxsw_sp_counter_sub_pool** %9, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_counter_sub_pool, %struct.mlxsw_sp_counter_sub_pool* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %43, %46
  %48 = load i32, i32* %11, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @ENOBUFS, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %74

53:                                               ; preds = %42
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %68, %53
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.mlxsw_sp_counter_sub_pool*, %struct.mlxsw_sp_counter_sub_pool** %9, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_counter_sub_pool, %struct.mlxsw_sp_counter_sub_pool* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %12, align 4
  %63 = add i32 %61, %62
  %64 = load %struct.mlxsw_sp_counter_pool*, %struct.mlxsw_sp_counter_pool** %8, align 8
  %65 = getelementptr inbounds %struct.mlxsw_sp_counter_pool, %struct.mlxsw_sp_counter_pool* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @__set_bit(i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %54

71:                                               ; preds = %54
  %72 = load i32, i32* %10, align 4
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %50, %39
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
