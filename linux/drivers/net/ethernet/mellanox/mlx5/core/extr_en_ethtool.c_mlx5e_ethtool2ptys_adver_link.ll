; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_mlx5e_ethtool2ptys_adver_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_mlx5e_ethtool2ptys_adver_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@MLX5E_LINK_MODES_NUMBER = common dso_local global i64 0, align 8
@ptys2legacy_ethtool_table = common dso_local global %struct.TYPE_2__* null, align 8
@__ETHTOOL_LINK_MODE_MASK_NBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*)* @mlx5e_ethtool2ptys_adver_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mlx5e_ethtool2ptys_adver_link(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %34, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @MLX5E_LINK_MODES_NUMBER, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %37

9:                                                ; preds = %5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ptys2legacy_ethtool_table, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %34

18:                                               ; preds = %9
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ptys2legacy_ethtool_table, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64*, i64** %2, align 8
  %25 = load i32, i32* @__ETHTOOL_LINK_MODE_MASK_NBITS, align 4
  %26 = call i64 @bitmap_intersects(i64* %23, i64* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load i64, i64* %3, align 8
  %30 = call i64 @MLX5E_PROT_MASK(i64 %29)
  %31 = load i64, i64* %4, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %4, align 8
  br label %33

33:                                               ; preds = %28, %18
  br label %34

34:                                               ; preds = %33, %17
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %3, align 8
  br label %5

37:                                               ; preds = %5
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

declare dso_local i64 @bitmap_intersects(i64*, i64*, i32) #1

declare dso_local i64 @MLX5E_PROT_MASK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
