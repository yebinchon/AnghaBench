; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_setup_tc_cls_flower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_setup_tc_cls_flower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { i32 }
%struct.flow_cls_offload = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_netdev_priv*, %struct.flow_cls_offload*)* @i40e_setup_tc_cls_flower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_setup_tc_cls_flower(%struct.i40e_netdev_priv* %0, %struct.flow_cls_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_netdev_priv*, align 8
  %5 = alloca %struct.flow_cls_offload*, align 8
  %6 = alloca %struct.i40e_vsi*, align 8
  store %struct.i40e_netdev_priv* %0, %struct.i40e_netdev_priv** %4, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %5, align 8
  %7 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %4, align 8
  %8 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %7, i32 0, i32 0
  %9 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  store %struct.i40e_vsi* %9, %struct.i40e_vsi** %6, align 8
  %10 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %11 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %24 [
    i32 129, label %13
    i32 130, label %17
    i32 128, label %21
  ]

13:                                               ; preds = %2
  %14 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %15 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %16 = call i32 @i40e_configure_clsflower(%struct.i40e_vsi* %14, %struct.flow_cls_offload* %15)
  store i32 %16, i32* %3, align 4
  br label %27

17:                                               ; preds = %2
  %18 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %19 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %20 = call i32 @i40e_delete_clsflower(%struct.i40e_vsi* %18, %struct.flow_cls_offload* %19)
  store i32 %20, i32* %3, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %21, %17, %13
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @i40e_configure_clsflower(%struct.i40e_vsi*, %struct.flow_cls_offload*) #1

declare dso_local i32 @i40e_delete_clsflower(%struct.i40e_vsi*, %struct.flow_cls_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
