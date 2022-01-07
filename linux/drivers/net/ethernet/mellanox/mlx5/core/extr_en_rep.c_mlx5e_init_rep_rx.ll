; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_init_rep_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_init_rep_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, i32, i32, %struct.TYPE_2__, %struct.mlx5_core_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"open drop rq failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*)* @mlx5e_init_rep_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_init_rep_rx(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  %6 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %6, i32 0, i32 4
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  store %struct.mlx5_core_dev* %8, %struct.mlx5_core_dev** %4, align 8
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %10 = call i32 @mlx5e_init_l2_addr(%struct.mlx5e_priv* %9)
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 0
  %14 = call i32 @mlx5e_open_drop_rq(%struct.mlx5e_priv* %11, i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %96

22:                                               ; preds = %1
  %23 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %24 = call i32 @mlx5e_create_indirect_rqt(%struct.mlx5e_priv* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %91

28:                                               ; preds = %22
  %29 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %30 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %31 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @mlx5e_create_direct_rqts(%struct.mlx5e_priv* %29, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %86

37:                                               ; preds = %28
  %38 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %39 = call i32 @mlx5e_create_indirect_tirs(%struct.mlx5e_priv* %38, i32 0)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %80

43:                                               ; preds = %37
  %44 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %45 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %46 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @mlx5e_create_direct_tirs(%struct.mlx5e_priv* %44, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %77

52:                                               ; preds = %43
  %53 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %54 = call i32 @mlx5e_create_rep_ttc_table(%struct.mlx5e_priv* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %71

58:                                               ; preds = %52
  %59 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %60 = call i32 @mlx5e_create_rep_vport_rx_rule(%struct.mlx5e_priv* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %65

64:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %96

65:                                               ; preds = %63
  %66 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %67 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %68 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @mlx5e_destroy_ttc_table(%struct.mlx5e_priv* %66, i32* %69)
  br label %71

71:                                               ; preds = %65, %57
  %72 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %73 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %74 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @mlx5e_destroy_direct_tirs(%struct.mlx5e_priv* %72, i32 %75)
  br label %77

77:                                               ; preds = %71, %51
  %78 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %79 = call i32 @mlx5e_destroy_indirect_tirs(%struct.mlx5e_priv* %78, i32 0)
  br label %80

80:                                               ; preds = %77, %42
  %81 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %82 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %83 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @mlx5e_destroy_direct_rqts(%struct.mlx5e_priv* %81, i32 %84)
  br label %86

86:                                               ; preds = %80, %36
  %87 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %88 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %89 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %88, i32 0, i32 1
  %90 = call i32 @mlx5e_destroy_rqt(%struct.mlx5e_priv* %87, i32* %89)
  br label %91

91:                                               ; preds = %86, %27
  %92 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %93 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %92, i32 0, i32 0
  %94 = call i32 @mlx5e_close_drop_rq(i32* %93)
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %91, %64, %17
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @mlx5e_init_l2_addr(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_open_drop_rq(%struct.mlx5e_priv*, i32*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5e_create_indirect_rqt(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_create_direct_rqts(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5e_create_indirect_tirs(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5e_create_direct_tirs(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5e_create_rep_ttc_table(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_create_rep_vport_rx_rule(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_destroy_ttc_table(%struct.mlx5e_priv*, i32*) #1

declare dso_local i32 @mlx5e_destroy_direct_tirs(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5e_destroy_indirect_tirs(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5e_destroy_direct_rqts(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5e_destroy_rqt(%struct.mlx5e_priv*, i32*) #1

declare dso_local i32 @mlx5e_close_drop_rq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
