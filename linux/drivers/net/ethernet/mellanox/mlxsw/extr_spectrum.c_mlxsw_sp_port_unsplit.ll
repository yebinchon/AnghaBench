; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_unsplit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_unsplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp = type { %struct.TYPE_3__*, %struct.mlxsw_sp_port** }
%struct.TYPE_3__ = type { i32 }
%struct.mlxsw_sp_port = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@LOCAL_PORTS_IN_1X = common dso_local global i32 0, align 4
@LOCAL_PORTS_IN_2X = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Port number \22%d\22 does not exist\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Port number does not exist\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Port was not split\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Port was not split\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_core*, i64, %struct.netlink_ext_ack*)* @mlxsw_sp_port_unsplit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_unsplit(%struct.mlxsw_core* %0, i64 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_core*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mlxsw_sp_port*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %17 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %18 = call %struct.mlxsw_sp* @mlxsw_core_driver_priv(%struct.mlxsw_core* %17)
  store %struct.mlxsw_sp* %18, %struct.mlxsw_sp** %8, align 8
  %19 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %20 = load i32, i32* @LOCAL_PORTS_IN_1X, align 4
  %21 = call i32 @MLXSW_CORE_RES_VALID(%struct.mlxsw_core* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %25 = load i32, i32* @LOCAL_PORTS_IN_2X, align 4
  %26 = call i32 @MLXSW_CORE_RES_VALID(%struct.mlxsw_core* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23, %3
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %133

31:                                               ; preds = %23
  %32 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %33 = load i32, i32* @LOCAL_PORTS_IN_1X, align 4
  %34 = call i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core* %32, i32 %33)
  store i64 %34, i64* %9, align 8
  %35 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %36 = load i32, i32* @LOCAL_PORTS_IN_2X, align 4
  %37 = call i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core* %35, i32 %36)
  store i64 %37, i64* %10, align 8
  %38 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %38, i32 0, i32 1
  %40 = load %struct.mlxsw_sp_port**, %struct.mlxsw_sp_port*** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %40, i64 %41
  %43 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %42, align 8
  store %struct.mlxsw_sp_port* %43, %struct.mlxsw_sp_port** %12, align 8
  %44 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %12, align 8
  %45 = icmp ne %struct.mlxsw_sp_port* %44, null
  br i1 %45, label %58, label %46

46:                                               ; preds = %31
  %47 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %52)
  %54 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %55 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %133

58:                                               ; preds = %31
  %59 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %12, align 8
  %60 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %58
  %64 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %12, align 8
  %65 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @netdev_err(i32 %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %69 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %133

72:                                               ; preds = %58
  %73 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %12, align 8
  %74 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %13, align 8
  %77 = load i64, i64* %13, align 8
  %78 = icmp eq i64 %77, 1
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 4, i32 2
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %85

83:                                               ; preds = %72
  %84 = load i64, i64* %10, align 8
  store i64 %84, i64* %11, align 8
  br label %87

85:                                               ; preds = %72
  %86 = load i64, i64* %9, align 8
  store i64 %86, i64* %11, align 8
  br label %87

87:                                               ; preds = %85, %83
  %88 = load i64, i64* %6, align 8
  %89 = call i64 @mlxsw_sp_cluster_base_port_get(i64 %88)
  store i64 %89, i64* %14, align 8
  %90 = load i32, i32* %15, align 4
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* %14, align 8
  %95 = add i64 %94, 2
  %96 = icmp uge i64 %93, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i64, i64* %14, align 8
  %99 = add i64 %98, 2
  store i64 %99, i64* %14, align 8
  br label %100

100:                                              ; preds = %97, %92, %87
  store i32 0, i32* %16, align 4
  br label %101

101:                                              ; preds = %125, %100
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %128

105:                                              ; preds = %101
  %106 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %107 = load i64, i64* %14, align 8
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %11, align 8
  %111 = mul i64 %109, %110
  %112 = add i64 %107, %111
  %113 = call i64 @mlxsw_sp_port_created(%struct.mlxsw_sp* %106, i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %105
  %116 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %117 = load i64, i64* %14, align 8
  %118 = load i32, i32* %16, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %11, align 8
  %121 = mul i64 %119, %120
  %122 = add i64 %117, %121
  %123 = call i32 @mlxsw_sp_port_remove(%struct.mlxsw_sp* %116, i64 %122)
  br label %124

124:                                              ; preds = %115, %105
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %16, align 4
  br label %101

128:                                              ; preds = %101
  %129 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %130 = load i64, i64* %14, align 8
  %131 = load i32, i32* %15, align 4
  %132 = call i32 @mlxsw_sp_port_unsplit_create(%struct.mlxsw_sp* %129, i64 %130, i32 %131)
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %128, %63, %46, %28
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local %struct.mlxsw_sp* @mlxsw_core_driver_priv(%struct.mlxsw_core*) #1

declare dso_local i32 @MLXSW_CORE_RES_VALID(%struct.mlxsw_core*, i32) #1

declare dso_local i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i64 @mlxsw_sp_cluster_base_port_get(i64) #1

declare dso_local i64 @mlxsw_sp_port_created(%struct.mlxsw_sp*, i64) #1

declare dso_local i32 @mlxsw_sp_port_remove(%struct.mlxsw_sp*, i64) #1

declare dso_local i32 @mlxsw_sp_port_unsplit_create(%struct.mlxsw_sp*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
