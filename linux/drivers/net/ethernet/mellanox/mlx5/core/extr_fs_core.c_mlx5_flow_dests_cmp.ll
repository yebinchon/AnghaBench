; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_flow_dests_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_flow_dests_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_destination = type { i64, i64, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@MLX5_FLOW_DESTINATION_TYPE_VPORT = common dso_local global i64 0, align 8
@MLX5_FLOW_DEST_VPORT_VHCA_ID = common dso_local global i32 0, align 4
@MLX5_FLOW_DEST_VPORT_REFORMAT_ID = common dso_local global i32 0, align 4
@MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE = common dso_local global i64 0, align 8
@MLX5_FLOW_DESTINATION_TYPE_TIR = common dso_local global i64 0, align 8
@MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_destination*, %struct.mlx5_flow_destination*)* @mlx5_flow_dests_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_flow_dests_cmp(%struct.mlx5_flow_destination* %0, %struct.mlx5_flow_destination* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_flow_destination*, align 8
  %5 = alloca %struct.mlx5_flow_destination*, align 8
  store %struct.mlx5_flow_destination* %0, %struct.mlx5_flow_destination** %4, align 8
  store %struct.mlx5_flow_destination* %1, %struct.mlx5_flow_destination** %5, align 8
  %6 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %4, align 8
  %7 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %5, align 8
  %10 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %125

13:                                               ; preds = %2
  %14 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MLX5_FLOW_DESTINATION_TYPE_VPORT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %81

19:                                               ; preds = %13
  %20 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %5, align 8
  %25 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %23, %27
  br i1 %28, label %29, label %81

29:                                               ; preds = %19
  %30 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %5, align 8
  %35 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %33, %37
  br i1 %38, label %39, label %81

39:                                               ; preds = %29
  %40 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %4, align 8
  %41 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MLX5_FLOW_DEST_VPORT_VHCA_ID, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %4, align 8
  %49 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %5, align 8
  %53 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %51, %55
  br i1 %56, label %58, label %81

57:                                               ; preds = %39
  br i1 true, label %58, label %81

58:                                               ; preds = %57, %47
  %59 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %4, align 8
  %60 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MLX5_FLOW_DEST_VPORT_REFORMAT_ID, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %58
  %67 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %4, align 8
  %68 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %5, align 8
  %74 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %72, %78
  br i1 %79, label %123, label %81

80:                                               ; preds = %58
  br i1 true, label %123, label %81

81:                                               ; preds = %80, %66, %57, %47, %29, %19, %13
  %82 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %4, align 8
  %83 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %4, align 8
  %89 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %5, align 8
  %92 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %90, %93
  br i1 %94, label %123, label %95

95:                                               ; preds = %87, %81
  %96 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %4, align 8
  %97 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @MLX5_FLOW_DESTINATION_TYPE_TIR, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %95
  %102 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %4, align 8
  %103 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %5, align 8
  %106 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %104, %107
  br i1 %108, label %123, label %109

109:                                              ; preds = %101, %95
  %110 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %4, align 8
  %111 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE_NUM, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %109
  %116 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %4, align 8
  %117 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %5, align 8
  %120 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %118, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %115, %101, %87, %80, %66
  store i32 1, i32* %3, align 4
  br label %126

124:                                              ; preds = %115, %109
  br label %125

125:                                              ; preds = %124, %2
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %123
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
