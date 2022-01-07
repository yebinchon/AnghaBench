; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_register_devlink_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_register_devlink_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5e_rep_priv = type { i32, %struct.mlx5_eswitch_rep*, i32 }
%struct.mlx5_eswitch_rep = type { i32 }
%struct.devlink = type { i32 }
%struct.netdev_phys_item_id = type { i32, i32* }

@MLX5_VPORT_UPLINK = common dso_local global i32 0, align 4
@DEVLINK_PORT_FLAVOUR_PHYSICAL = common dso_local global i32 0, align 4
@MLX5_VPORT_PF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5e_rep_priv*)* @register_devlink_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_devlink_port(%struct.mlx5_core_dev* %0, %struct.mlx5e_rep_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5e_rep_priv*, align 8
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca %struct.mlx5_eswitch_rep*, align 8
  %8 = alloca %struct.netdev_phys_item_id, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5e_rep_priv* %1, %struct.mlx5e_rep_priv** %5, align 8
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %11 = call %struct.devlink* @priv_to_devlink(%struct.mlx5_core_dev* %10)
  store %struct.devlink* %11, %struct.devlink** %6, align 8
  %12 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %12, i32 0, i32 1
  %14 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %13, align 8
  store %struct.mlx5_eswitch_rep* %14, %struct.mlx5_eswitch_rep** %7, align 8
  %15 = bitcast %struct.netdev_phys_item_id* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 16, i1 false)
  store i32 0, i32* %9, align 4
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %17 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %5, align 8
  %18 = call i32 @is_devlink_port_supported(%struct.mlx5_core_dev* %16, %struct.mlx5e_rep_priv* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %118

21:                                               ; preds = %2
  %22 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %5, align 8
  %23 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @mlx5e_rep_get_port_parent_id(i32 %24, %struct.netdev_phys_item_id* %8)
  %26 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %7, align 8
  %27 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MLX5_VPORT_UPLINK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %21
  %32 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %32, i32 0, i32 0
  %34 = load i32, i32* @DEVLINK_PORT_FLAVOUR_PHYSICAL, align 4
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %36 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PCI_FUNC(i32 %39)
  %41 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %8, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @devlink_port_attrs_set(i32* %33, i32 %34, i32 %40, i32 0, i32 0, i32* %43, i32 %45)
  %47 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %48 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %7, align 8
  %49 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @vport_to_devlink_port_index(%struct.mlx5_core_dev* %47, i32 %50)
  store i32 %51, i32* %9, align 4
  br label %112

52:                                               ; preds = %21
  %53 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %7, align 8
  %54 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MLX5_VPORT_PF, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %52
  %59 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %5, align 8
  %60 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %8, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %8, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %67 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @devlink_port_attrs_pci_pf_set(i32* %60, i32* %63, i32 %65, i32 %70)
  %72 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %7, align 8
  %73 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %9, align 4
  br label %111

75:                                               ; preds = %52
  %76 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %77 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %5, align 8
  %81 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %80, i32 0, i32 1
  %82 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %81, align 8
  %83 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @mlx5_eswitch_is_vf_vport(i32 %79, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %110

87:                                               ; preds = %75
  %88 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %5, align 8
  %89 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %8, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %8, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %96 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %7, align 8
  %101 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sub i32 %102, 1
  %104 = call i32 @devlink_port_attrs_pci_vf_set(i32* %89, i32* %92, i32 %94, i32 %99, i32 %103)
  %105 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %106 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %7, align 8
  %107 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @vport_to_devlink_port_index(%struct.mlx5_core_dev* %105, i32 %108)
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %87, %75
  br label %111

111:                                              ; preds = %110, %58
  br label %112

112:                                              ; preds = %111, %31
  %113 = load %struct.devlink*, %struct.devlink** %6, align 8
  %114 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %5, align 8
  %115 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %114, i32 0, i32 0
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @devlink_port_register(%struct.devlink* %113, i32* %115, i32 %116)
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %112, %20
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.devlink* @priv_to_devlink(%struct.mlx5_core_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @is_devlink_port_supported(%struct.mlx5_core_dev*, %struct.mlx5e_rep_priv*) #1

declare dso_local i32 @mlx5e_rep_get_port_parent_id(i32, %struct.netdev_phys_item_id*) #1

declare dso_local i32 @devlink_port_attrs_set(i32*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @vport_to_devlink_port_index(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @devlink_port_attrs_pci_pf_set(i32*, i32*, i32, i32) #1

declare dso_local i64 @mlx5_eswitch_is_vf_vport(i32, i32) #1

declare dso_local i32 @devlink_port_attrs_pci_vf_set(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @devlink_port_register(%struct.devlink*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
