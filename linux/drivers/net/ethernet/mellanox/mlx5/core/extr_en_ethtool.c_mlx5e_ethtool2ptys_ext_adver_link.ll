; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_mlx5e_ethtool2ptys_ext_adver_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_mlx5e_ethtool2ptys_ext_adver_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@MLX5E_EXT_LINK_MODES_NUMBER = common dso_local global i64 0, align 8
@ptys2ext_ethtool_table = common dso_local global %struct.TYPE_2__* null, align 8
@__ETHTOOL_LINK_MODE_MASK_NBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*)* @mlx5e_ethtool2ptys_ext_adver_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mlx5e_ethtool2ptys_ext_adver_link(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [2 x i64], align 16
  store i64* %0, i64** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %58, %1
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @MLX5E_EXT_LINK_MODES_NUMBER, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %61

10:                                               ; preds = %6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ptys2ext_ethtool_table, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %58

19:                                               ; preds = %10
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %21 = call i32 @memset(i64* %20, i32 0, i32 16)
  %22 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ptys2ext_ethtool_table, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64*, i64** %2, align 8
  %29 = load i32, i32* @__ETHTOOL_LINK_MODE_MASK_NBITS, align 4
  %30 = call i32 @bitmap_and(i64* %22, i64* %27, i64* %28, i32 %29)
  %31 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %32 = load i64, i64* %31, align 16
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ptys2ext_ethtool_table, align 8
  %34 = load i64, i64* %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %32, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %19
  %42 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ptys2ext_ethtool_table, align 8
  %45 = load i64, i64* %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %43, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = load i64, i64* %3, align 8
  %54 = call i64 @MLX5E_PROT_MASK(i64 %53)
  %55 = load i64, i64* %4, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %52, %41, %19
  br label %58

58:                                               ; preds = %57, %18
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %3, align 8
  br label %6

61:                                               ; preds = %6
  %62 = load i64, i64* %4, align 8
  ret i64 %62
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @bitmap_and(i64*, i64*, i64*, i32) #1

declare dso_local i64 @MLX5E_PROT_MASK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
