; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_port_change_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_port_change_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_vr* }
%struct.mlxsw_sp_vr = type { i32* }
%struct.mlxsw_sp_rif = type { i64, i64, i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i64, i32 }

@MLXSW_SP_L3_PROTO_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Updated RIF=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_rif*)* @mlxsw_sp_router_port_change_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_router_port_change_event(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_rif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_rif*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_sp_vr*, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_rif* %1, %struct.mlxsw_sp_rif** %5, align 8
  %11 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %11, i32 0, i32 5
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @mlxsw_sp_fid_index(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %19 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @mlxsw_sp_rif_fdb_op(%struct.mlxsw_sp* %18, i32 %21, i32 %22, i32 0)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %130

28:                                               ; preds = %2
  %29 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %30 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @mlxsw_sp_rif_edit(%struct.mlxsw_sp* %29, i32 %32, i32 %35, i64 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  br label %122

43:                                               ; preds = %28
  %44 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %45 = load %struct.net_device*, %struct.net_device** %6, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @mlxsw_sp_rif_fdb_op(%struct.mlxsw_sp* %44, i32 %47, i32 %48, i32 1)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %110

53:                                               ; preds = %43
  %54 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %92

61:                                               ; preds = %53
  %62 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %63 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %65, align 8
  %67 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  %68 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %66, i64 %69
  store %struct.mlxsw_sp_vr* %70, %struct.mlxsw_sp_vr** %9, align 8
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %88, %61
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @MLXSW_SP_L3_PROTO_MAX, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %71
  %76 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %9, align 8
  %77 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  %84 = load %struct.net_device*, %struct.net_device** %6, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @mlxsw_sp_mr_rif_mtu_update(i32 %82, %struct.mlxsw_sp_rif* %83, i64 %86)
  br label %88

88:                                               ; preds = %75
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %71

91:                                               ; preds = %71
  br label %92

92:                                               ; preds = %91, %53
  %93 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  %94 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.net_device*, %struct.net_device** %6, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @ether_addr_copy(i32 %95, i32 %98)
  %100 = load %struct.net_device*, %struct.net_device** %6, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  %104 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.net_device*, %struct.net_device** %6, align 8
  %106 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  %107 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @netdev_dbg(%struct.net_device* %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %108)
  store i32 0, i32* %3, align 4
  br label %130

110:                                              ; preds = %52
  %111 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %112 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  %113 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  %116 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  %119 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @mlxsw_sp_rif_edit(%struct.mlxsw_sp* %111, i32 %114, i32 %117, i64 %120)
  br label %122

122:                                              ; preds = %110, %42
  %123 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %124 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  %125 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @mlxsw_sp_rif_fdb_op(%struct.mlxsw_sp* %123, i32 %126, i32 %127, i32 1)
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %122, %92, %26
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @mlxsw_sp_fid_index(i32) #1

declare dso_local i32 @mlxsw_sp_rif_fdb_op(%struct.mlxsw_sp*, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_rif_edit(%struct.mlxsw_sp*, i32, i32, i64) #1

declare dso_local i32 @mlxsw_sp_mr_rif_mtu_update(i32, %struct.mlxsw_sp_rif*, i64) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
