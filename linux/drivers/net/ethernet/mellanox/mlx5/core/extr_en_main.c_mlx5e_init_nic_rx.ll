; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_init_nic_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_init_nic_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, i32, i32, i32, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"open drop rq failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"create flow steering failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*)* @mlx5e_init_nic_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_init_nic_rx(%struct.mlx5e_priv* %0) #0 {
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
  br label %126

21:                                               ; preds = %1
  %22 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %23 = call i32 @mlx5e_create_indirect_rqt(%struct.mlx5e_priv* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %122

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
  br label %117

36:                                               ; preds = %27
  %37 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %38 = call i32 @mlx5e_create_indirect_tirs(%struct.mlx5e_priv* %37, i32 1)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %111

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
  br label %108

51:                                               ; preds = %42
  %52 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %53 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %54 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @mlx5e_create_direct_rqts(%struct.mlx5e_priv* %52, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %102

61:                                               ; preds = %51
  %62 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %63 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %64 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mlx5e_create_direct_tirs(%struct.mlx5e_priv* %62, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %96

71:                                               ; preds = %61
  %72 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %73 = call i32 @mlx5e_create_flow_steering(%struct.mlx5e_priv* %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %90

80:                                               ; preds = %71
  %81 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %82 = call i32 @mlx5e_tc_nic_init(%struct.mlx5e_priv* %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %87

86:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %130

87:                                               ; preds = %85
  %88 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %89 = call i32 @mlx5e_destroy_flow_steering(%struct.mlx5e_priv* %88)
  br label %90

90:                                               ; preds = %87, %76
  %91 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %92 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %93 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @mlx5e_destroy_direct_tirs(%struct.mlx5e_priv* %91, i32 %94)
  br label %96

96:                                               ; preds = %90, %70
  %97 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %98 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %99 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @mlx5e_destroy_direct_rqts(%struct.mlx5e_priv* %97, i32 %100)
  br label %102

102:                                              ; preds = %96, %60
  %103 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %104 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %105 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @mlx5e_destroy_direct_tirs(%struct.mlx5e_priv* %103, i32 %106)
  br label %108

108:                                              ; preds = %102, %50
  %109 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %110 = call i32 @mlx5e_destroy_indirect_tirs(%struct.mlx5e_priv* %109, i32 1)
  br label %111

111:                                              ; preds = %108, %41
  %112 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %113 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %114 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @mlx5e_destroy_direct_rqts(%struct.mlx5e_priv* %112, i32 %115)
  br label %117

117:                                              ; preds = %111, %35
  %118 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %119 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %120 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %119, i32 0, i32 1
  %121 = call i32 @mlx5e_destroy_rqt(%struct.mlx5e_priv* %118, i32* %120)
  br label %122

122:                                              ; preds = %117, %26
  %123 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %124 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %123, i32 0, i32 0
  %125 = call i32 @mlx5e_close_drop_rq(i32* %124)
  br label %126

126:                                              ; preds = %122, %17
  %127 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %128 = call i32 @mlx5e_destroy_q_counters(%struct.mlx5e_priv* %127)
  %129 = load i32, i32* %5, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %126, %86
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @mlx5e_create_q_counters(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_open_drop_rq(%struct.mlx5e_priv*, i32*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5e_create_indirect_rqt(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_create_direct_rqts(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5e_create_indirect_tirs(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5e_create_direct_tirs(%struct.mlx5e_priv*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5e_create_flow_steering(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5e_tc_nic_init(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_destroy_flow_steering(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_destroy_direct_tirs(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5e_destroy_direct_rqts(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5e_destroy_indirect_tirs(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5e_destroy_rqt(%struct.mlx5e_priv*, i32*) #1

declare dso_local i32 @mlx5e_close_drop_rq(i32*) #1

declare dso_local i32 @mlx5e_destroy_q_counters(%struct.mlx5e_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
