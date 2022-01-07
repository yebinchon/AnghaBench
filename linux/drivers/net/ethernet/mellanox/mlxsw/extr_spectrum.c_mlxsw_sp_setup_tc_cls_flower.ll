; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_setup_tc_cls_flower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_setup_tc_cls_flower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_block = type { i32 }
%struct.flow_cls_offload = type { i32 }
%struct.mlxsw_sp = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_acl_block*, %struct.flow_cls_offload*)* @mlxsw_sp_setup_tc_cls_flower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_setup_tc_cls_flower(%struct.mlxsw_sp_acl_block* %0, %struct.flow_cls_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_acl_block*, align 8
  %5 = alloca %struct.flow_cls_offload*, align 8
  %6 = alloca %struct.mlxsw_sp*, align 8
  store %struct.mlxsw_sp_acl_block* %0, %struct.mlxsw_sp_acl_block** %4, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %5, align 8
  %7 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %4, align 8
  %8 = call %struct.mlxsw_sp* @mlxsw_sp_acl_block_mlxsw_sp(%struct.mlxsw_sp_acl_block* %7)
  store %struct.mlxsw_sp* %8, %struct.mlxsw_sp** %6, align 8
  %9 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %10 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %37 [
    i32 131, label %12
    i32 132, label %17
    i32 130, label %22
    i32 129, label %27
    i32 128, label %32
  ]

12:                                               ; preds = %2
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %14 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %4, align 8
  %15 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %16 = call i32 @mlxsw_sp_flower_replace(%struct.mlxsw_sp* %13, %struct.mlxsw_sp_acl_block* %14, %struct.flow_cls_offload* %15)
  store i32 %16, i32* %3, align 4
  br label %40

17:                                               ; preds = %2
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %19 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %4, align 8
  %20 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %21 = call i32 @mlxsw_sp_flower_destroy(%struct.mlxsw_sp* %18, %struct.mlxsw_sp_acl_block* %19, %struct.flow_cls_offload* %20)
  store i32 0, i32* %3, align 4
  br label %40

22:                                               ; preds = %2
  %23 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %24 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %4, align 8
  %25 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %26 = call i32 @mlxsw_sp_flower_stats(%struct.mlxsw_sp* %23, %struct.mlxsw_sp_acl_block* %24, %struct.flow_cls_offload* %25)
  store i32 %26, i32* %3, align 4
  br label %40

27:                                               ; preds = %2
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %29 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %4, align 8
  %30 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %31 = call i32 @mlxsw_sp_flower_tmplt_create(%struct.mlxsw_sp* %28, %struct.mlxsw_sp_acl_block* %29, %struct.flow_cls_offload* %30)
  store i32 %31, i32* %3, align 4
  br label %40

32:                                               ; preds = %2
  %33 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %34 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %4, align 8
  %35 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %36 = call i32 @mlxsw_sp_flower_tmplt_destroy(%struct.mlxsw_sp* %33, %struct.mlxsw_sp_acl_block* %34, %struct.flow_cls_offload* %35)
  store i32 0, i32* %3, align 4
  br label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %32, %27, %22, %17, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.mlxsw_sp* @mlxsw_sp_acl_block_mlxsw_sp(%struct.mlxsw_sp_acl_block*) #1

declare dso_local i32 @mlxsw_sp_flower_replace(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_block*, %struct.flow_cls_offload*) #1

declare dso_local i32 @mlxsw_sp_flower_destroy(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_block*, %struct.flow_cls_offload*) #1

declare dso_local i32 @mlxsw_sp_flower_stats(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_block*, %struct.flow_cls_offload*) #1

declare dso_local i32 @mlxsw_sp_flower_tmplt_create(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_block*, %struct.flow_cls_offload*) #1

declare dso_local i32 @mlxsw_sp_flower_tmplt_destroy(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_block*, %struct.flow_cls_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
