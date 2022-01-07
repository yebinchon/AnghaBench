; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_mlx5_eswitch_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_mlx5_eswitch_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ft_support = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"FDB is not supported, aborting ...\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"ingress ACL is not supported by FW\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"engress ACL is not supported by FW\0A\00", align 1
@MLX5_ESWITCH_LEGACY = common dso_local global i32 0, align 4
@MLX5_INTERFACE_PROTOCOL_ETH = common dso_local global i32 0, align 4
@MLX5_INTERFACE_PROTOCOL_IB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Enable: mode(%s), nvfs(%d), active vports(%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"LEGACY\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"OFFLOADS\00", align 1
@MLX5_ESWITCH_NONE = common dso_local global i32 0, align 4
@MLX5_ESWITCH_OFFLOADS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_eswitch_enable(%struct.mlx5_eswitch* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_eswitch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %8 = call i32 @ESW_ALLOWED(%struct.mlx5_eswitch* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ft_support, align 4
  %15 = call i32 @MLX5_CAP_ESW_FLOWTABLE_FDB(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %10, %2
  %18 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @esw_warn(i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %120

24:                                               ; preds = %10
  %25 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ft_support, align 4
  %29 = call i32 @MLX5_CAP_ESW_INGRESS_ACL(i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %33 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @esw_warn(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %31, %24
  %37 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ft_support, align 4
  %41 = call i32 @MLX5_CAP_ESW_EGRESS_ACL(i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %36
  %44 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %45 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @esw_warn(i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %36
  %49 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %50 = call i32 @esw_create_tsar(%struct.mlx5_eswitch* %49)
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %53 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %55 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mlx5_lag_update(i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @MLX5_ESWITCH_LEGACY, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %48
  %62 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %63 = call i32 @esw_legacy_enable(%struct.mlx5_eswitch* %62)
  store i32 %63, i32* %6, align 4
  br label %77

64:                                               ; preds = %48
  %65 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %66 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MLX5_INTERFACE_PROTOCOL_ETH, align 4
  %69 = call i32 @mlx5_reload_interface(i32 %67, i32 %68)
  %70 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %71 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MLX5_INTERFACE_PROTOCOL_IB, align 4
  %74 = call i32 @mlx5_reload_interface(i32 %72, i32 %73)
  %75 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %76 = call i32 @esw_offloads_enable(%struct.mlx5_eswitch* %75)
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %64, %61
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %100

81:                                               ; preds = %77
  %82 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %83 = call i32 @mlx5_eswitch_event_handlers_register(%struct.mlx5_eswitch* %82)
  %84 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %85 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @MLX5_ESWITCH_LEGACY, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %92 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %93 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %97 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @esw_info(i32 %86, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %91, i32 %95, i32 %98)
  store i32 0, i32* %3, align 4
  br label %120

100:                                              ; preds = %80
  %101 = load i32, i32* @MLX5_ESWITCH_NONE, align 4
  %102 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %103 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @MLX5_ESWITCH_OFFLOADS, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %100
  %108 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %109 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @MLX5_INTERFACE_PROTOCOL_IB, align 4
  %112 = call i32 @mlx5_reload_interface(i32 %110, i32 %111)
  %113 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %114 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @MLX5_INTERFACE_PROTOCOL_ETH, align 4
  %117 = call i32 @mlx5_reload_interface(i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %107, %100
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %81, %17
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @ESW_ALLOWED(%struct.mlx5_eswitch*) #1

declare dso_local i32 @MLX5_CAP_ESW_FLOWTABLE_FDB(i32, i32) #1

declare dso_local i32 @esw_warn(i32, i8*) #1

declare dso_local i32 @MLX5_CAP_ESW_INGRESS_ACL(i32, i32) #1

declare dso_local i32 @MLX5_CAP_ESW_EGRESS_ACL(i32, i32) #1

declare dso_local i32 @esw_create_tsar(%struct.mlx5_eswitch*) #1

declare dso_local i32 @mlx5_lag_update(i32) #1

declare dso_local i32 @esw_legacy_enable(%struct.mlx5_eswitch*) #1

declare dso_local i32 @mlx5_reload_interface(i32, i32) #1

declare dso_local i32 @esw_offloads_enable(%struct.mlx5_eswitch*) #1

declare dso_local i32 @mlx5_eswitch_event_handlers_register(%struct.mlx5_eswitch*) #1

declare dso_local i32 @esw_info(i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
