; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_tc_pool_bind_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_tc_pool_bind_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core_port = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp_port = type { i64, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm*, %struct.TYPE_3__* }
%struct.mlxsw_sp_sb_cm = type { i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@MLXSW_PORT_CPU_PORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Changing CPU port's binding is forbidden\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Binding egress TC to ingress pool and vice versa is forbidden\00", align 1
@MLXSW_REG_SBXX_DIR_INGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Binding this TC to a different pool is forbidden\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Changing this TC's threshold is forbidden\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_sb_tc_pool_bind_set(%struct.mlxsw_core_port* %0, i32 %1, i64 %2, i32 %3, i64 %4, i64 %5, %struct.netlink_ext_ack* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_core_port*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.netlink_ext_ack*, align 8
  %16 = alloca %struct.mlxsw_sp_port*, align 8
  %17 = alloca %struct.mlxsw_sp*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.mlxsw_sp_sb_cm*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.mlxsw_core_port* %0, %struct.mlxsw_core_port** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store %struct.netlink_ext_ack* %6, %struct.netlink_ext_ack** %15, align 8
  %24 = load %struct.mlxsw_core_port*, %struct.mlxsw_core_port** %9, align 8
  %25 = call %struct.mlxsw_sp_port* @mlxsw_core_port_driver_priv(%struct.mlxsw_core_port* %24)
  store %struct.mlxsw_sp_port* %25, %struct.mlxsw_sp_port** %16, align 8
  %26 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %16, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %26, i32 0, i32 1
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %27, align 8
  store %struct.mlxsw_sp* %28, %struct.mlxsw_sp** %17, align 8
  %29 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %16, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %18, align 8
  %32 = load i64, i64* %11, align 8
  store i64 %32, i64* %20, align 8
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %21, align 4
  %34 = load i64, i64* %18, align 8
  %35 = load i64, i64* @MLXSW_PORT_CPU_PORT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %7
  %38 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %39 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %128

42:                                               ; preds = %7
  %43 = load i32, i32* %21, align 4
  %44 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %17, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i64, i64* %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %43, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %42
  %55 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %56 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %55, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %128

59:                                               ; preds = %42
  %60 = load i32, i32* %21, align 4
  %61 = load i32, i32* @MLXSW_REG_SBXX_DIR_INGRESS, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %17, align 8
  %65 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %67, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %68, i64 %69
  store %struct.mlxsw_sp_sb_cm* %70, %struct.mlxsw_sp_sb_cm** %19, align 8
  br label %79

71:                                               ; preds = %59
  %72 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %17, align 8
  %73 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %75, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %76, i64 %77
  store %struct.mlxsw_sp_sb_cm* %78, %struct.mlxsw_sp_sb_cm** %19, align 8
  br label %79

79:                                               ; preds = %71, %63
  %80 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %19, align 8
  %81 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  %85 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %19, align 8
  %86 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %13, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %92 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %91, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %8, align 4
  br label %128

95:                                               ; preds = %84, %79
  %96 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %19, align 8
  %97 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %95
  %101 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %19, align 8
  %102 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %14, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %108 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %107, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %8, align 4
  br label %128

111:                                              ; preds = %100, %95
  %112 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %17, align 8
  %113 = load i64, i64* %13, align 8
  %114 = load i64, i64* %14, align 8
  %115 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %116 = call i32 @mlxsw_sp_sb_threshold_in(%struct.mlxsw_sp* %112, i64 %113, i64 %114, i64* %22, %struct.netlink_ext_ack* %115)
  store i32 %116, i32* %23, align 4
  %117 = load i32, i32* %23, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %111
  %120 = load i32, i32* %23, align 4
  store i32 %120, i32* %8, align 4
  br label %128

121:                                              ; preds = %111
  %122 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %17, align 8
  %123 = load i64, i64* %18, align 8
  %124 = load i64, i64* %20, align 8
  %125 = load i64, i64* %22, align 8
  %126 = load i64, i64* %13, align 8
  %127 = call i32 @mlxsw_sp_sb_cm_write(%struct.mlxsw_sp* %122, i64 %123, i64 %124, i32 0, i64 %125, i32 0, i64 %126)
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %121, %119, %106, %90, %54, %37
  %129 = load i32, i32* %8, align 4
  ret i32 %129
}

declare dso_local %struct.mlxsw_sp_port* @mlxsw_core_port_driver_priv(%struct.mlxsw_core_port*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @mlxsw_sp_sb_threshold_in(%struct.mlxsw_sp*, i64, i64, i64*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @mlxsw_sp_sb_cm_write(%struct.mlxsw_sp*, i64, i64, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
