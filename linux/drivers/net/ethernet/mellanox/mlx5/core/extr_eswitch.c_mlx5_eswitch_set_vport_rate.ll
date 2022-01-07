; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_mlx5_eswitch_set_vport_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_mlx5_eswitch_set_vport_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i32, i32 }
%struct.mlx5_vport = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@max_tsar_bw_share = common dso_local global i32 0, align 4
@esw_bw_share = common dso_local global i32 0, align 4
@MLX5_MIN_BW_SHARE = common dso_local global i64 0, align 8
@esw_rate_limit = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_eswitch_set_vport_rate(%struct.mlx5_eswitch* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_eswitch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mlx5_vport*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.mlx5_vport* @mlx5_eswitch_get_vport(%struct.mlx5_eswitch* %17, i32 %18)
  store %struct.mlx5_vport* %19, %struct.mlx5_vport** %10, align 8
  store i32 0, i32* %16, align 4
  %20 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %6, align 8
  %21 = call i32 @ESW_ALLOWED(%struct.mlx5_eswitch* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %136

26:                                               ; preds = %4
  %27 = load %struct.mlx5_vport*, %struct.mlx5_vport** %10, align 8
  %28 = call i64 @IS_ERR(%struct.mlx5_vport* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.mlx5_vport*, %struct.mlx5_vport** %10, align 8
  %32 = call i32 @PTR_ERR(%struct.mlx5_vport* %31)
  store i32 %32, i32* %5, align 4
  br label %136

33:                                               ; preds = %26
  %34 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %6, align 8
  %35 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @max_tsar_bw_share, align 4
  %38 = call i8* @MLX5_CAP_QOS(i32 %36, i32 %37)
  %39 = ptrtoint i8* %38 to i64
  store i64 %39, i64* %11, align 8
  %40 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %6, align 8
  %41 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @esw_bw_share, align 4
  %44 = call i8* @MLX5_CAP_QOS(i32 %42, i32 %43)
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* @MLX5_MIN_BW_SHARE, align 8
  %49 = icmp sge i64 %47, %48
  br label %50

50:                                               ; preds = %46, %33
  %51 = phi i1 [ false, %33 ], [ %49, %46 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %14, align 4
  %53 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %6, align 8
  %54 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @esw_rate_limit, align 4
  %57 = call i8* @MLX5_CAP_QOS(i32 %55, i32 %56)
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* %15, align 4
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61, %50
  %65 = load i64, i64* %8, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67, %61
  %71 = load i32, i32* @EOPNOTSUPP, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %136

73:                                               ; preds = %67, %64
  %74 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %6, align 8
  %75 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %74, i32 0, i32 0
  %76 = call i32 @mutex_lock(i32* %75)
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.mlx5_vport*, %struct.mlx5_vport** %10, align 8
  %79 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %77, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %106

84:                                               ; preds = %73
  %85 = load %struct.mlx5_vport*, %struct.mlx5_vport** %10, align 8
  %86 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %12, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load %struct.mlx5_vport*, %struct.mlx5_vport** %10, align 8
  %91 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i64 %89, i64* %92, align 8
  %93 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %6, align 8
  %94 = call i64 @calculate_vports_min_rate_divider(%struct.mlx5_eswitch* %93)
  store i64 %94, i64* %13, align 8
  %95 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %6, align 8
  %96 = load i64, i64* %13, align 8
  %97 = call i32 @normalize_vports_min_rate(%struct.mlx5_eswitch* %95, i64 %96)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %84
  %101 = load i64, i64* %12, align 8
  %102 = load %struct.mlx5_vport*, %struct.mlx5_vport** %10, align 8
  %103 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i64 %101, i64* %104, align 8
  br label %131

105:                                              ; preds = %84
  br label %106

106:                                              ; preds = %105, %83
  %107 = load i64, i64* %8, align 8
  %108 = load %struct.mlx5_vport*, %struct.mlx5_vport** %10, align 8
  %109 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %107, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %131

114:                                              ; preds = %106
  %115 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %6, align 8
  %116 = load %struct.mlx5_vport*, %struct.mlx5_vport** %10, align 8
  %117 = load i64, i64* %8, align 8
  %118 = load %struct.mlx5_vport*, %struct.mlx5_vport** %10, align 8
  %119 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @esw_vport_qos_config(%struct.mlx5_eswitch* %115, %struct.mlx5_vport* %116, i64 %117, i32 %121)
  store i32 %122, i32* %16, align 4
  %123 = load i32, i32* %16, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %114
  %126 = load i64, i64* %8, align 8
  %127 = load %struct.mlx5_vport*, %struct.mlx5_vport** %10, align 8
  %128 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  store i64 %126, i64* %129, align 8
  br label %130

130:                                              ; preds = %125, %114
  br label %131

131:                                              ; preds = %130, %113, %100
  %132 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %6, align 8
  %133 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %132, i32 0, i32 0
  %134 = call i32 @mutex_unlock(i32* %133)
  %135 = load i32, i32* %16, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %131, %70, %30, %23
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local %struct.mlx5_vport* @mlx5_eswitch_get_vport(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @ESW_ALLOWED(%struct.mlx5_eswitch*) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_vport*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_vport*) #1

declare dso_local i8* @MLX5_CAP_QOS(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @calculate_vports_min_rate_divider(%struct.mlx5_eswitch*) #1

declare dso_local i32 @normalize_vports_min_rate(%struct.mlx5_eswitch*, i64) #1

declare dso_local i32 @esw_vport_qos_config(%struct.mlx5_eswitch*, %struct.mlx5_vport*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
