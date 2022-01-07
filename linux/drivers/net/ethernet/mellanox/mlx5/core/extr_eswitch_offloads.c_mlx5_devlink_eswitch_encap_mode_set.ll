; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_mlx5_devlink_eswitch_encap_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_mlx5_devlink_eswitch_encap_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx5_eswitch* }
%struct.mlx5_eswitch = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@DEVLINK_ESWITCH_ENCAP_MODE_NONE = common dso_local global i32 0, align 4
@reformat = common dso_local global i32 0, align 4
@decap = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DEVLINK_ESWITCH_ENCAP_MODE_BASIC = common dso_local global i32 0, align 4
@MLX5_ESWITCH_LEGACY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Can't set encapsulation when flows are configured\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed re-creating fast FDB table\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_devlink_eswitch_encap_mode_set(%struct.devlink* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca %struct.mlx5_eswitch*, align 8
  %10 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %11 = load %struct.devlink*, %struct.devlink** %5, align 8
  %12 = call %struct.mlx5_core_dev* @devlink_priv(%struct.devlink* %11)
  store %struct.mlx5_core_dev* %12, %struct.mlx5_core_dev** %8, align 8
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %14 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %15, align 8
  store %struct.mlx5_eswitch* %16, %struct.mlx5_eswitch** %9, align 8
  %17 = load %struct.devlink*, %struct.devlink** %5, align 8
  %18 = call i32 @mlx5_devlink_eswitch_check(%struct.devlink* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %111

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @DEVLINK_ESWITCH_ENCAP_MODE_NONE, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %29 = load i32, i32* @reformat, align 4
  %30 = call i32 @MLX5_CAP_ESW_FLOWTABLE_FDB(%struct.mlx5_core_dev* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %34 = load i32, i32* @decap, align 4
  %35 = call i32 @MLX5_CAP_ESW_FLOWTABLE_FDB(%struct.mlx5_core_dev* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32, %27
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %111

40:                                               ; preds = %32, %23
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @DEVLINK_ESWITCH_ENCAP_MODE_BASIC, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %111

50:                                               ; preds = %43, %40
  %51 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %9, align 8
  %52 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MLX5_ESWITCH_LEGACY, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %9, align 8
  %59 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  store i32 0, i32* %4, align 4
  br label %111

61:                                               ; preds = %50
  %62 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %9, align 8
  %63 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %111

69:                                               ; preds = %61
  %70 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %9, align 8
  %71 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = call i64 @atomic64_read(i32* %72)
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %77 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %76, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @EOPNOTSUPP, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %111

80:                                               ; preds = %69
  %81 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %9, align 8
  %82 = call i32 @esw_destroy_offloads_fdb_tables(%struct.mlx5_eswitch* %81)
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %9, align 8
  %85 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %9, align 8
  %88 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %9, align 8
  %89 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @esw_create_offloads_fdb_tables(%struct.mlx5_eswitch* %87, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %80
  %95 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %96 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %9, align 8
  %102 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  %104 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %9, align 8
  %105 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %9, align 8
  %106 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @esw_create_offloads_fdb_tables(%struct.mlx5_eswitch* %104, i32 %107)
  br label %109

109:                                              ; preds = %94, %80
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %109, %75, %68, %56, %47, %37, %21
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.mlx5_core_dev* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @mlx5_devlink_eswitch_check(%struct.devlink*) #1

declare dso_local i32 @MLX5_CAP_ESW_FLOWTABLE_FDB(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @esw_destroy_offloads_fdb_tables(%struct.mlx5_eswitch*) #1

declare dso_local i32 @esw_create_offloads_fdb_tables(%struct.mlx5_eswitch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
