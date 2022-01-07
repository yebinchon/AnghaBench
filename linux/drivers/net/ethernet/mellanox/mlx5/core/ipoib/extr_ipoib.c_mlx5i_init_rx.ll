; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_init_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_init_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, i32, i32, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"open drop rq failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*)* @mlx5i_init_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5i_init_rx(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  %6 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %6, i32 0, i32 3
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  store %struct.mlx5_core_dev* %8, %struct.mlx5_core_dev** %4, align 8
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %10 = call i32 @mlx5e_create_q_counters(%struct.mlx5e_priv* %9)
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 0
  %14 = call i32 @mlx5e_open_drop_rq(%struct.mlx5e_priv* %11, i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %82

21:                                               ; preds = %1
  %22 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %23 = call i32 @mlx5e_create_indirect_rqt(%struct.mlx5e_priv* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %78

27:                                               ; preds = %21
  %28 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %29 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @mlx5e_create_direct_rqts(%struct.mlx5e_priv* %28, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %73

36:                                               ; preds = %27
  %37 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %38 = call i32 @mlx5e_create_indirect_tirs(%struct.mlx5e_priv* %37, i32 1)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %67

42:                                               ; preds = %36
  %43 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %44 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %45 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @mlx5e_create_direct_tirs(%struct.mlx5e_priv* %43, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %64

51:                                               ; preds = %42
  %52 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %53 = call i32 @mlx5i_create_flow_steering(%struct.mlx5e_priv* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %58

57:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %86

58:                                               ; preds = %56
  %59 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %60 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %61 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @mlx5e_destroy_direct_tirs(%struct.mlx5e_priv* %59, i32 %62)
  br label %64

64:                                               ; preds = %58, %50
  %65 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %66 = call i32 @mlx5e_destroy_indirect_tirs(%struct.mlx5e_priv* %65, i32 1)
  br label %67

67:                                               ; preds = %64, %41
  %68 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %69 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %70 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @mlx5e_destroy_direct_rqts(%struct.mlx5e_priv* %68, i32 %71)
  br label %73

73:                                               ; preds = %67, %35
  %74 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %75 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %76 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %75, i32 0, i32 1
  %77 = call i32 @mlx5e_destroy_rqt(%struct.mlx5e_priv* %74, i32* %76)
  br label %78

78:                                               ; preds = %73, %26
  %79 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %80 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %79, i32 0, i32 0
  %81 = call i32 @mlx5e_close_drop_rq(i32* %80)
  br label %82

82:                                               ; preds = %78, %17
  %83 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %84 = call i32 @mlx5e_destroy_q_counters(%struct.mlx5e_priv* %83)
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %57
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @mlx5e_create_q_counters(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_open_drop_rq(%struct.mlx5e_priv*, i32*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5e_create_indirect_rqt(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_create_direct_rqts(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5e_create_indirect_tirs(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5e_create_direct_tirs(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5i_create_flow_steering(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_destroy_direct_tirs(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5e_destroy_indirect_tirs(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5e_destroy_direct_rqts(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5e_destroy_rqt(%struct.mlx5e_priv*, i32*) #1

declare dso_local i32 @mlx5e_close_drop_rq(i32*) #1

declare dso_local i32 @mlx5e_destroy_q_counters(%struct.mlx5e_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
