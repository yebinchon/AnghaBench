; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_matcher.c_dr_matcher_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_matcher.c_dr_matcher_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { i32 }
%struct.mlx5dr_table_rx_tx = type { i32, %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_domain_rx_tx* }
%struct.mlx5dr_ste_htbl = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.mlx5dr_domain_rx_tx = type { i32 }
%struct.mlx5dr_matcher_rx_tx = type { %struct.TYPE_3__*, %struct.mlx5dr_ste_htbl* }
%struct.mlx5dr_htbl_connect_info = type { i32, i32, %struct.TYPE_3__* }

@CONNECT_HIT = common dso_local global i32 0, align 4
@CONNECT_MISS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_domain*, %struct.mlx5dr_table_rx_tx*, %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx*)* @dr_matcher_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_matcher_disconnect(%struct.mlx5dr_domain* %0, %struct.mlx5dr_table_rx_tx* %1, %struct.mlx5dr_matcher_rx_tx* %2, %struct.mlx5dr_matcher_rx_tx* %3) #0 {
  %5 = alloca %struct.mlx5dr_domain*, align 8
  %6 = alloca %struct.mlx5dr_table_rx_tx*, align 8
  %7 = alloca %struct.mlx5dr_matcher_rx_tx*, align 8
  %8 = alloca %struct.mlx5dr_matcher_rx_tx*, align 8
  %9 = alloca %struct.mlx5dr_domain_rx_tx*, align 8
  %10 = alloca %struct.mlx5dr_htbl_connect_info, align 8
  %11 = alloca %struct.mlx5dr_ste_htbl*, align 8
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %5, align 8
  store %struct.mlx5dr_table_rx_tx* %1, %struct.mlx5dr_table_rx_tx** %6, align 8
  store %struct.mlx5dr_matcher_rx_tx* %2, %struct.mlx5dr_matcher_rx_tx** %7, align 8
  store %struct.mlx5dr_matcher_rx_tx* %3, %struct.mlx5dr_matcher_rx_tx** %8, align 8
  %12 = load %struct.mlx5dr_table_rx_tx*, %struct.mlx5dr_table_rx_tx** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, %struct.mlx5dr_table_rx_tx* %12, i32 0, i32 2
  %14 = load %struct.mlx5dr_domain_rx_tx*, %struct.mlx5dr_domain_rx_tx** %13, align 8
  store %struct.mlx5dr_domain_rx_tx* %14, %struct.mlx5dr_domain_rx_tx** %9, align 8
  %15 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %8, align 8
  %16 = icmp ne %struct.mlx5dr_matcher_rx_tx* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %8, align 8
  %19 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %18, i32 0, i32 1
  %20 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %19, align 8
  store %struct.mlx5dr_ste_htbl* %20, %struct.mlx5dr_ste_htbl** %11, align 8
  br label %25

21:                                               ; preds = %4
  %22 = load %struct.mlx5dr_table_rx_tx*, %struct.mlx5dr_table_rx_tx** %6, align 8
  %23 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, %struct.mlx5dr_table_rx_tx* %22, i32 0, i32 1
  %24 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %23, align 8
  store %struct.mlx5dr_ste_htbl* %24, %struct.mlx5dr_ste_htbl** %11, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %7, align 8
  %27 = icmp ne %struct.mlx5dr_matcher_rx_tx* %26, null
  br i1 %27, label %28, label %50

28:                                               ; preds = %25
  %29 = load i32, i32* @CONNECT_HIT, align 4
  %30 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, %struct.mlx5dr_htbl_connect_info* %10, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %7, align 8
  %32 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, %struct.mlx5dr_htbl_connect_info* %10, i32 0, i32 2
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %34, align 8
  %35 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %11, align 8
  %36 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %7, align 8
  %39 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %41, align 8
  %42 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %7, align 8
  %43 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %11, align 8
  %46 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %49, align 8
  br label %62

50:                                               ; preds = %25
  %51 = load i32, i32* @CONNECT_MISS, align 4
  %52 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, %struct.mlx5dr_htbl_connect_info* %10, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.mlx5dr_table_rx_tx*, %struct.mlx5dr_table_rx_tx** %6, align 8
  %54 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, %struct.mlx5dr_table_rx_tx* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, %struct.mlx5dr_htbl_connect_info* %10, i32 0, i32 0
  store i32 %55, i32* %56, align 8
  %57 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %11, align 8
  %58 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %61, align 8
  br label %62

62:                                               ; preds = %50, %28
  %63 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %64 = load %struct.mlx5dr_domain_rx_tx*, %struct.mlx5dr_domain_rx_tx** %9, align 8
  %65 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %11, align 8
  %66 = call i32 @mlx5dr_ste_htbl_init_and_postsend(%struct.mlx5dr_domain* %63, %struct.mlx5dr_domain_rx_tx* %64, %struct.mlx5dr_ste_htbl* %65, %struct.mlx5dr_htbl_connect_info* %10, i32 1)
  ret i32 %66
}

declare dso_local i32 @mlx5dr_ste_htbl_init_and_postsend(%struct.mlx5dr_domain*, %struct.mlx5dr_domain_rx_tx*, %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_htbl_connect_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
