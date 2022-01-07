; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_indr_setup_tc_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_indr_setup_tc_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_rep_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.flow_block_offload = type { i64, i32, i32, i32, i32* }
%struct.mlx5e_rep_indr_block_priv = type { i32, %struct.mlx5e_rep_priv*, %struct.net_device* }
%struct.flow_block_cb = type { i32 }

@FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@mlx5e_block_cb_list = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlx5e_rep_indr_setup_block_cb = common dso_local global i32 0, align 4
@mlx5e_rep_indr_tc_block_unbind = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.mlx5e_rep_priv*, %struct.flow_block_offload*)* @mlx5e_rep_indr_setup_tc_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_rep_indr_setup_tc_block(%struct.net_device* %0, %struct.mlx5e_rep_priv* %1, %struct.flow_block_offload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mlx5e_rep_priv*, align 8
  %7 = alloca %struct.flow_block_offload*, align 8
  %8 = alloca %struct.mlx5e_rep_indr_block_priv*, align 8
  %9 = alloca %struct.flow_block_cb*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.mlx5e_rep_priv* %1, %struct.mlx5e_rep_priv** %6, align 8
  store %struct.flow_block_offload* %2, %struct.flow_block_offload** %7, align 8
  %10 = load %struct.flow_block_offload*, %struct.flow_block_offload** %7, align 8
  %11 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %110

18:                                               ; preds = %3
  %19 = load %struct.flow_block_offload*, %struct.flow_block_offload** %7, align 8
  %20 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %19, i32 0, i32 1
  store i32 1, i32* %20, align 8
  %21 = load %struct.flow_block_offload*, %struct.flow_block_offload** %7, align 8
  %22 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %21, i32 0, i32 4
  store i32* @mlx5e_block_cb_list, i32** %22, align 8
  %23 = load %struct.flow_block_offload*, %struct.flow_block_offload** %7, align 8
  %24 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %107 [
    i32 129, label %26
    i32 128, label %79
  ]

26:                                               ; preds = %18
  %27 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %6, align 8
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = call %struct.mlx5e_rep_indr_block_priv* @mlx5e_rep_indr_block_priv_lookup(%struct.mlx5e_rep_priv* %27, %struct.net_device* %28)
  store %struct.mlx5e_rep_indr_block_priv* %29, %struct.mlx5e_rep_indr_block_priv** %8, align 8
  %30 = load %struct.mlx5e_rep_indr_block_priv*, %struct.mlx5e_rep_indr_block_priv** %8, align 8
  %31 = icmp ne %struct.mlx5e_rep_indr_block_priv* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EEXIST, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %110

35:                                               ; preds = %26
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.mlx5e_rep_indr_block_priv* @kmalloc(i32 24, i32 %36)
  store %struct.mlx5e_rep_indr_block_priv* %37, %struct.mlx5e_rep_indr_block_priv** %8, align 8
  %38 = load %struct.mlx5e_rep_indr_block_priv*, %struct.mlx5e_rep_indr_block_priv** %8, align 8
  %39 = icmp ne %struct.mlx5e_rep_indr_block_priv* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %110

43:                                               ; preds = %35
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = load %struct.mlx5e_rep_indr_block_priv*, %struct.mlx5e_rep_indr_block_priv** %8, align 8
  %46 = getelementptr inbounds %struct.mlx5e_rep_indr_block_priv, %struct.mlx5e_rep_indr_block_priv* %45, i32 0, i32 2
  store %struct.net_device* %44, %struct.net_device** %46, align 8
  %47 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %6, align 8
  %48 = load %struct.mlx5e_rep_indr_block_priv*, %struct.mlx5e_rep_indr_block_priv** %8, align 8
  %49 = getelementptr inbounds %struct.mlx5e_rep_indr_block_priv, %struct.mlx5e_rep_indr_block_priv* %48, i32 0, i32 1
  store %struct.mlx5e_rep_priv* %47, %struct.mlx5e_rep_priv** %49, align 8
  %50 = load %struct.mlx5e_rep_indr_block_priv*, %struct.mlx5e_rep_indr_block_priv** %8, align 8
  %51 = getelementptr inbounds %struct.mlx5e_rep_indr_block_priv, %struct.mlx5e_rep_indr_block_priv* %50, i32 0, i32 0
  %52 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %6, align 8
  %53 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @list_add(i32* %51, i32* %54)
  %56 = load i32, i32* @mlx5e_rep_indr_setup_block_cb, align 4
  %57 = load %struct.mlx5e_rep_indr_block_priv*, %struct.mlx5e_rep_indr_block_priv** %8, align 8
  %58 = load %struct.mlx5e_rep_indr_block_priv*, %struct.mlx5e_rep_indr_block_priv** %8, align 8
  %59 = load i32, i32* @mlx5e_rep_indr_tc_block_unbind, align 4
  %60 = call %struct.flow_block_cb* @flow_block_cb_alloc(i32 %56, %struct.mlx5e_rep_indr_block_priv* %57, %struct.mlx5e_rep_indr_block_priv* %58, i32 %59)
  store %struct.flow_block_cb* %60, %struct.flow_block_cb** %9, align 8
  %61 = load %struct.flow_block_cb*, %struct.flow_block_cb** %9, align 8
  %62 = call i32 @IS_ERR(%struct.flow_block_cb* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %43
  %65 = load %struct.mlx5e_rep_indr_block_priv*, %struct.mlx5e_rep_indr_block_priv** %8, align 8
  %66 = getelementptr inbounds %struct.mlx5e_rep_indr_block_priv, %struct.mlx5e_rep_indr_block_priv* %65, i32 0, i32 0
  %67 = call i32 @list_del(i32* %66)
  %68 = load %struct.mlx5e_rep_indr_block_priv*, %struct.mlx5e_rep_indr_block_priv** %8, align 8
  %69 = call i32 @kfree(%struct.mlx5e_rep_indr_block_priv* %68)
  %70 = load %struct.flow_block_cb*, %struct.flow_block_cb** %9, align 8
  %71 = call i32 @PTR_ERR(%struct.flow_block_cb* %70)
  store i32 %71, i32* %4, align 4
  br label %110

72:                                               ; preds = %43
  %73 = load %struct.flow_block_cb*, %struct.flow_block_cb** %9, align 8
  %74 = load %struct.flow_block_offload*, %struct.flow_block_offload** %7, align 8
  %75 = call i32 @flow_block_cb_add(%struct.flow_block_cb* %73, %struct.flow_block_offload* %74)
  %76 = load %struct.flow_block_cb*, %struct.flow_block_cb** %9, align 8
  %77 = getelementptr inbounds %struct.flow_block_cb, %struct.flow_block_cb* %76, i32 0, i32 0
  %78 = call i32 @list_add_tail(i32* %77, i32* @mlx5e_block_cb_list)
  store i32 0, i32* %4, align 4
  br label %110

79:                                               ; preds = %18
  %80 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %6, align 8
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = call %struct.mlx5e_rep_indr_block_priv* @mlx5e_rep_indr_block_priv_lookup(%struct.mlx5e_rep_priv* %80, %struct.net_device* %81)
  store %struct.mlx5e_rep_indr_block_priv* %82, %struct.mlx5e_rep_indr_block_priv** %8, align 8
  %83 = load %struct.mlx5e_rep_indr_block_priv*, %struct.mlx5e_rep_indr_block_priv** %8, align 8
  %84 = icmp ne %struct.mlx5e_rep_indr_block_priv* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @ENOENT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %110

88:                                               ; preds = %79
  %89 = load %struct.flow_block_offload*, %struct.flow_block_offload** %7, align 8
  %90 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @mlx5e_rep_indr_setup_block_cb, align 4
  %93 = load %struct.mlx5e_rep_indr_block_priv*, %struct.mlx5e_rep_indr_block_priv** %8, align 8
  %94 = call %struct.flow_block_cb* @flow_block_cb_lookup(i32 %91, i32 %92, %struct.mlx5e_rep_indr_block_priv* %93)
  store %struct.flow_block_cb* %94, %struct.flow_block_cb** %9, align 8
  %95 = load %struct.flow_block_cb*, %struct.flow_block_cb** %9, align 8
  %96 = icmp ne %struct.flow_block_cb* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %88
  %98 = load i32, i32* @ENOENT, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %110

100:                                              ; preds = %88
  %101 = load %struct.flow_block_cb*, %struct.flow_block_cb** %9, align 8
  %102 = load %struct.flow_block_offload*, %struct.flow_block_offload** %7, align 8
  %103 = call i32 @flow_block_cb_remove(%struct.flow_block_cb* %101, %struct.flow_block_offload* %102)
  %104 = load %struct.flow_block_cb*, %struct.flow_block_cb** %9, align 8
  %105 = getelementptr inbounds %struct.flow_block_cb, %struct.flow_block_cb* %104, i32 0, i32 0
  %106 = call i32 @list_del(i32* %105)
  store i32 0, i32* %4, align 4
  br label %110

107:                                              ; preds = %18
  %108 = load i32, i32* @EOPNOTSUPP, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %107, %100, %97, %85, %72, %64, %40, %32, %15
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.mlx5e_rep_indr_block_priv* @mlx5e_rep_indr_block_priv_lookup(%struct.mlx5e_rep_priv*, %struct.net_device*) #1

declare dso_local %struct.mlx5e_rep_indr_block_priv* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local %struct.flow_block_cb* @flow_block_cb_alloc(i32, %struct.mlx5e_rep_indr_block_priv*, %struct.mlx5e_rep_indr_block_priv*, i32) #1

declare dso_local i32 @IS_ERR(%struct.flow_block_cb*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.mlx5e_rep_indr_block_priv*) #1

declare dso_local i32 @PTR_ERR(%struct.flow_block_cb*) #1

declare dso_local i32 @flow_block_cb_add(%struct.flow_block_cb*, %struct.flow_block_offload*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.flow_block_cb* @flow_block_cb_lookup(i32, i32, %struct.mlx5e_rep_indr_block_priv*) #1

declare dso_local i32 @flow_block_cb_remove(%struct.flow_block_cb*, %struct.flow_block_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
