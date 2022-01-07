; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_rehash_copy_htbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_rehash_copy_htbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_matcher = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5dr_matcher_rx_tx = type { i32 }
%struct.mlx5dr_ste_htbl = type { %struct.mlx5dr_ste*, i32 }
%struct.mlx5dr_ste = type { i32 }
%struct.list_head = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid number of entries\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl*, %struct.list_head*)* @dr_rule_rehash_copy_htbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_rule_rehash_copy_htbl(%struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher_rx_tx* %1, %struct.mlx5dr_ste_htbl* %2, %struct.mlx5dr_ste_htbl* %3, %struct.list_head* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5dr_matcher*, align 8
  %8 = alloca %struct.mlx5dr_matcher_rx_tx*, align 8
  %9 = alloca %struct.mlx5dr_ste_htbl*, align 8
  %10 = alloca %struct.mlx5dr_ste_htbl*, align 8
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca %struct.mlx5dr_ste*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher** %7, align 8
  store %struct.mlx5dr_matcher_rx_tx* %1, %struct.mlx5dr_matcher_rx_tx** %8, align 8
  store %struct.mlx5dr_ste_htbl* %2, %struct.mlx5dr_ste_htbl** %9, align 8
  store %struct.mlx5dr_ste_htbl* %3, %struct.mlx5dr_ste_htbl** %10, align 8
  store %struct.list_head* %4, %struct.list_head** %11, align 8
  store i32 0, i32* %14, align 4
  %16 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %9, align 8
  %17 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @mlx5dr_icm_pool_chunk_size_to_entries(i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %31

22:                                               ; preds = %5
  %23 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %7, align 8
  %24 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mlx5dr_dbg(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %65

31:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  br label %32

32:                                               ; preds = %59, %31
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %32
  %37 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %9, align 8
  %38 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %37, i32 0, i32 0
  %39 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %38, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %39, i64 %41
  store %struct.mlx5dr_ste* %42, %struct.mlx5dr_ste** %12, align 8
  %43 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %12, align 8
  %44 = call i64 @mlx5dr_ste_not_used_ste(%struct.mlx5dr_ste* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %59

47:                                               ; preds = %36
  %48 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %7, align 8
  %49 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %8, align 8
  %50 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %12, align 8
  %51 = call i32 @mlx5dr_ste_get_miss_list(%struct.mlx5dr_ste* %50)
  %52 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %10, align 8
  %53 = load %struct.list_head*, %struct.list_head** %11, align 8
  %54 = call i32 @dr_rule_rehash_copy_miss_list(%struct.mlx5dr_matcher* %48, %struct.mlx5dr_matcher_rx_tx* %49, i32 %51, %struct.mlx5dr_ste_htbl* %52, %struct.list_head* %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %63

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %46
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %15, align 4
  br label %32

62:                                               ; preds = %32
  br label %63

63:                                               ; preds = %62, %57
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %63, %22
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @mlx5dr_icm_pool_chunk_size_to_entries(i32) #1

declare dso_local i32 @mlx5dr_dbg(i32, i8*) #1

declare dso_local i64 @mlx5dr_ste_not_used_ste(%struct.mlx5dr_ste*) #1

declare dso_local i32 @dr_rule_rehash_copy_miss_list(%struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*, i32, %struct.mlx5dr_ste_htbl*, %struct.list_head*) #1

declare dso_local i32 @mlx5dr_ste_get_miss_list(%struct.mlx5dr_ste*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
