; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_matcher.c_dr_matcher_remove_from_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_matcher.c_dr_matcher_remove_from_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_matcher = type { %struct.TYPE_3__, i32, i32, %struct.mlx5dr_table* }
%struct.TYPE_3__ = type { i32* }
%struct.mlx5dr_table = type { i32, i32, i32, %struct.mlx5dr_domain* }
%struct.mlx5dr_domain = type { i64 }

@matcher_list = common dso_local global i32 0, align 4
@MLX5DR_DOMAIN_TYPE_FDB = common dso_local global i64 0, align 8
@MLX5DR_DOMAIN_TYPE_NIC_RX = common dso_local global i64 0, align 8
@MLX5DR_DOMAIN_TYPE_NIC_TX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_matcher*)* @dr_matcher_remove_from_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_matcher_remove_from_tbl(%struct.mlx5dr_matcher* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5dr_matcher*, align 8
  %4 = alloca %struct.mlx5dr_matcher*, align 8
  %5 = alloca %struct.mlx5dr_matcher*, align 8
  %6 = alloca %struct.mlx5dr_table*, align 8
  %7 = alloca %struct.mlx5dr_domain*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher** %3, align 8
  %9 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %9, i32 0, i32 3
  %11 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %10, align 8
  store %struct.mlx5dr_table* %11, %struct.mlx5dr_table** %6, align 8
  %12 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %12, i32 0, i32 3
  %14 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %13, align 8
  store %struct.mlx5dr_domain* %14, %struct.mlx5dr_domain** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %15, i32 0, i32 0
  %17 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  %18 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %17, i32 0, i32 2
  %19 = call i64 @list_is_last(%struct.TYPE_3__* %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store %struct.mlx5dr_matcher* null, %struct.mlx5dr_matcher** %5, align 8
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %3, align 8
  %24 = load i32, i32* @matcher_list, align 4
  %25 = call %struct.mlx5dr_matcher* @list_next_entry(%struct.mlx5dr_matcher* %23, i32 %24)
  store %struct.mlx5dr_matcher* %25, %struct.mlx5dr_matcher** %5, align 8
  br label %26

26:                                               ; preds = %22, %21
  %27 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  %32 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %31, i32 0, i32 2
  %33 = icmp eq i32* %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store %struct.mlx5dr_matcher* null, %struct.mlx5dr_matcher** %4, align 8
  br label %39

35:                                               ; preds = %26
  %36 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %3, align 8
  %37 = load i32, i32* @matcher_list, align 4
  %38 = call %struct.mlx5dr_matcher* @list_prev_entry(%struct.mlx5dr_matcher* %36, i32 %37)
  store %struct.mlx5dr_matcher* %38, %struct.mlx5dr_matcher** %4, align 8
  br label %39

39:                                               ; preds = %35, %34
  %40 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %7, align 8
  %41 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MLX5DR_DOMAIN_TYPE_FDB, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %7, align 8
  %47 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MLX5DR_DOMAIN_TYPE_NIC_RX, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %77

51:                                               ; preds = %45, %39
  %52 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %7, align 8
  %53 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  %54 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %53, i32 0, i32 1
  %55 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %56 = icmp ne %struct.mlx5dr_matcher* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %59 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %58, i32 0, i32 2
  br label %61

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i32* [ %59, %57 ], [ null, %60 ]
  %63 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %4, align 8
  %64 = icmp ne %struct.mlx5dr_matcher* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %4, align 8
  %67 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %66, i32 0, i32 2
  br label %69

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %65
  %70 = phi i32* [ %67, %65 ], [ null, %68 ]
  %71 = call i32 @dr_matcher_disconnect(%struct.mlx5dr_domain* %52, i32* %54, i32* %62, i32* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %2, align 4
  br label %119

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %45
  %78 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %7, align 8
  %79 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MLX5DR_DOMAIN_TYPE_FDB, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %7, align 8
  %85 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @MLX5DR_DOMAIN_TYPE_NIC_TX, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %115

89:                                               ; preds = %83, %77
  %90 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %7, align 8
  %91 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  %92 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %91, i32 0, i32 0
  %93 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %94 = icmp ne %struct.mlx5dr_matcher* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %97 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %96, i32 0, i32 1
  br label %99

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98, %95
  %100 = phi i32* [ %97, %95 ], [ null, %98 ]
  %101 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %4, align 8
  %102 = icmp ne %struct.mlx5dr_matcher* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %4, align 8
  %105 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %104, i32 0, i32 1
  br label %107

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106, %103
  %108 = phi i32* [ %105, %103 ], [ null, %106 ]
  %109 = call i32 @dr_matcher_disconnect(%struct.mlx5dr_domain* %90, i32* %92, i32* %100, i32* %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %2, align 4
  br label %119

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %114, %83
  %116 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %3, align 8
  %117 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %116, i32 0, i32 0
  %118 = call i32 @list_del(%struct.TYPE_3__* %117)
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %115, %112, %74
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i64 @list_is_last(%struct.TYPE_3__*, i32*) #1

declare dso_local %struct.mlx5dr_matcher* @list_next_entry(%struct.mlx5dr_matcher*, i32) #1

declare dso_local %struct.mlx5dr_matcher* @list_prev_entry(%struct.mlx5dr_matcher*, i32) #1

declare dso_local i32 @dr_matcher_disconnect(%struct.mlx5dr_domain*, i32*, i32*, i32*) #1

declare dso_local i32 @list_del(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
