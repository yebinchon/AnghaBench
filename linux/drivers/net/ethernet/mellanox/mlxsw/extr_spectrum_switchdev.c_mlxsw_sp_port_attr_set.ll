; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_attr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_attr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_attr = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.switchdev_trans = type { i32 }
%struct.mlxsw_sp_port = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.switchdev_attr*, %struct.switchdev_trans*)* @mlxsw_sp_port_attr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_attr_set(%struct.net_device* %0, %struct.switchdev_attr* %1, %struct.switchdev_trans* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.switchdev_attr*, align 8
  %6 = alloca %struct.switchdev_trans*, align 8
  %7 = alloca %struct.mlxsw_sp_port*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.switchdev_attr* %1, %struct.switchdev_attr** %5, align 8
  store %struct.switchdev_trans* %2, %struct.switchdev_trans** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device* %9)
  store %struct.mlxsw_sp_port* %10, %struct.mlxsw_sp_port** %7, align 8
  %11 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %12 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %96 [
    i32 128, label %14
    i32 129, label %25
    i32 131, label %33
    i32 135, label %44
    i32 132, label %52
    i32 130, label %63
    i32 134, label %74
    i32 133, label %85
  ]

14:                                               ; preds = %3
  %15 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %16 = load %struct.switchdev_trans*, %struct.switchdev_trans** %6, align 8
  %17 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %18 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %21 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mlxsw_sp_port_attr_stp_state_set(%struct.mlxsw_sp_port* %15, %struct.switchdev_trans* %16, i32 %19, i32 %23)
  store i32 %24, i32* %8, align 4
  br label %99

25:                                               ; preds = %3
  %26 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %27 = load %struct.switchdev_trans*, %struct.switchdev_trans** %6, align 8
  %28 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %29 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mlxsw_sp_port_attr_br_pre_flags_set(%struct.mlxsw_sp_port* %26, %struct.switchdev_trans* %27, i32 %31)
  store i32 %32, i32* %8, align 4
  br label %99

33:                                               ; preds = %3
  %34 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %35 = load %struct.switchdev_trans*, %struct.switchdev_trans** %6, align 8
  %36 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %37 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %40 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mlxsw_sp_port_attr_br_flags_set(%struct.mlxsw_sp_port* %34, %struct.switchdev_trans* %35, i32 %38, i32 %42)
  store i32 %43, i32* %8, align 4
  br label %99

44:                                               ; preds = %3
  %45 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %46 = load %struct.switchdev_trans*, %struct.switchdev_trans** %6, align 8
  %47 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %48 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mlxsw_sp_port_attr_br_ageing_set(%struct.mlxsw_sp_port* %45, %struct.switchdev_trans* %46, i32 %50)
  store i32 %51, i32* %8, align 4
  br label %99

52:                                               ; preds = %3
  %53 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %54 = load %struct.switchdev_trans*, %struct.switchdev_trans** %6, align 8
  %55 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %56 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %59 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @mlxsw_sp_port_attr_br_vlan_set(%struct.mlxsw_sp_port* %53, %struct.switchdev_trans* %54, i32 %57, i32 %61)
  store i32 %62, i32* %8, align 4
  br label %99

63:                                               ; preds = %3
  %64 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %65 = load %struct.switchdev_trans*, %struct.switchdev_trans** %6, align 8
  %66 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %67 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %70 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @mlxsw_sp_port_attr_mrouter_set(%struct.mlxsw_sp_port* %64, %struct.switchdev_trans* %65, i32 %68, i32 %72)
  store i32 %73, i32* %8, align 4
  br label %99

74:                                               ; preds = %3
  %75 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %76 = load %struct.switchdev_trans*, %struct.switchdev_trans** %6, align 8
  %77 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %78 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %81 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @mlxsw_sp_port_mc_disabled_set(%struct.mlxsw_sp_port* %75, %struct.switchdev_trans* %76, i32 %79, i32 %83)
  store i32 %84, i32* %8, align 4
  br label %99

85:                                               ; preds = %3
  %86 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %87 = load %struct.switchdev_trans*, %struct.switchdev_trans** %6, align 8
  %88 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %89 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %92 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @mlxsw_sp_port_attr_br_mrouter_set(%struct.mlxsw_sp_port* %86, %struct.switchdev_trans* %87, i32 %90, i32 %94)
  store i32 %95, i32* %8, align 4
  br label %99

96:                                               ; preds = %3
  %97 = load i32, i32* @EOPNOTSUPP, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %96, %85, %74, %63, %52, %44, %33, %25, %14
  %100 = load %struct.switchdev_trans*, %struct.switchdev_trans** %6, align 8
  %101 = call i64 @switchdev_trans_ph_commit(%struct.switchdev_trans* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %105 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @mlxsw_sp_span_respin(i32 %106)
  br label %108

108:                                              ; preds = %103, %99
  %109 = load i32, i32* %8, align 4
  ret i32 %109
}

declare dso_local %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_port_attr_stp_state_set(%struct.mlxsw_sp_port*, %struct.switchdev_trans*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_attr_br_pre_flags_set(%struct.mlxsw_sp_port*, %struct.switchdev_trans*, i32) #1

declare dso_local i32 @mlxsw_sp_port_attr_br_flags_set(%struct.mlxsw_sp_port*, %struct.switchdev_trans*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_attr_br_ageing_set(%struct.mlxsw_sp_port*, %struct.switchdev_trans*, i32) #1

declare dso_local i32 @mlxsw_sp_port_attr_br_vlan_set(%struct.mlxsw_sp_port*, %struct.switchdev_trans*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_attr_mrouter_set(%struct.mlxsw_sp_port*, %struct.switchdev_trans*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_mc_disabled_set(%struct.mlxsw_sp_port*, %struct.switchdev_trans*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_attr_br_mrouter_set(%struct.mlxsw_sp_port*, %struct.switchdev_trans*, i32, i32) #1

declare dso_local i64 @switchdev_trans_ph_commit(%struct.switchdev_trans*) #1

declare dso_local i32 @mlxsw_sp_span_respin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
