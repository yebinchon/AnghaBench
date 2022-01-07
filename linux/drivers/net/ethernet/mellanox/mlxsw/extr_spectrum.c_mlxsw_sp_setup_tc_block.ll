; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_setup_tc_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_setup_tc_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32 }
%struct.flow_block_offload = type { i64, i32, i32, i32* }
%struct.flow_block_cb = type { i32 }

@FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS = common dso_local global i64 0, align 8
@mlxsw_sp_setup_tc_block_cb_matchall_ig = common dso_local global i32* null, align 8
@FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS = common dso_local global i64 0, align 8
@mlxsw_sp_setup_tc_block_cb_matchall_eg = common dso_local global i32* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@mlxsw_sp_block_cb_list = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.flow_block_offload*)* @mlxsw_sp_setup_tc_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_setup_tc_block(%struct.mlxsw_sp_port* %0, %struct.flow_block_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca %struct.flow_block_offload*, align 8
  %6 = alloca %struct.flow_block_cb*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store %struct.flow_block_offload* %1, %struct.flow_block_offload** %5, align 8
  %10 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %11 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32*, i32** @mlxsw_sp_setup_tc_block_cb_matchall_ig, align 8
  store i32* %16, i32** %7, align 8
  store i32 1, i32* %8, align 4
  br label %29

17:                                               ; preds = %2
  %18 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %19 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32*, i32** @mlxsw_sp_setup_tc_block_cb_matchall_eg, align 8
  store i32* %24, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %98

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28, %15
  %30 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %31 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %30, i32 0, i32 3
  store i32* @mlxsw_sp_block_cb_list, i32** %31, align 8
  %32 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %33 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %95 [
    i32 129, label %35
    i32 128, label %72
  ]

35:                                               ; preds = %29
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %38 = call i32 @flow_block_cb_is_busy(i32* %36, %struct.mlxsw_sp_port* %37, i32* @mlxsw_sp_block_cb_list)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %98

43:                                               ; preds = %35
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %46 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %47 = call %struct.flow_block_cb* @flow_block_cb_alloc(i32* %44, %struct.mlxsw_sp_port* %45, %struct.mlxsw_sp_port* %46, i32* null)
  store %struct.flow_block_cb* %47, %struct.flow_block_cb** %6, align 8
  %48 = load %struct.flow_block_cb*, %struct.flow_block_cb** %6, align 8
  %49 = call i32 @IS_ERR(%struct.flow_block_cb* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load %struct.flow_block_cb*, %struct.flow_block_cb** %6, align 8
  %53 = call i32 @PTR_ERR(%struct.flow_block_cb* %52)
  store i32 %53, i32* %3, align 4
  br label %98

54:                                               ; preds = %43
  %55 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %56 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @mlxsw_sp_setup_tc_block_flower_bind(%struct.mlxsw_sp_port* %55, %struct.flow_block_offload* %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load %struct.flow_block_cb*, %struct.flow_block_cb** %6, align 8
  %63 = call i32 @flow_block_cb_free(%struct.flow_block_cb* %62)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %98

65:                                               ; preds = %54
  %66 = load %struct.flow_block_cb*, %struct.flow_block_cb** %6, align 8
  %67 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %68 = call i32 @flow_block_cb_add(%struct.flow_block_cb* %66, %struct.flow_block_offload* %67)
  %69 = load %struct.flow_block_cb*, %struct.flow_block_cb** %6, align 8
  %70 = getelementptr inbounds %struct.flow_block_cb, %struct.flow_block_cb* %69, i32 0, i32 0
  %71 = call i32 @list_add_tail(i32* %70, i32* @mlxsw_sp_block_cb_list)
  store i32 0, i32* %3, align 4
  br label %98

72:                                               ; preds = %29
  %73 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %74 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @mlxsw_sp_setup_tc_block_flower_unbind(%struct.mlxsw_sp_port* %73, %struct.flow_block_offload* %74, i32 %75)
  %77 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %78 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %82 = call %struct.flow_block_cb* @flow_block_cb_lookup(i32 %79, i32* %80, %struct.mlxsw_sp_port* %81)
  store %struct.flow_block_cb* %82, %struct.flow_block_cb** %6, align 8
  %83 = load %struct.flow_block_cb*, %struct.flow_block_cb** %6, align 8
  %84 = icmp ne %struct.flow_block_cb* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %72
  %86 = load i32, i32* @ENOENT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %98

88:                                               ; preds = %72
  %89 = load %struct.flow_block_cb*, %struct.flow_block_cb** %6, align 8
  %90 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %91 = call i32 @flow_block_cb_remove(%struct.flow_block_cb* %89, %struct.flow_block_offload* %90)
  %92 = load %struct.flow_block_cb*, %struct.flow_block_cb** %6, align 8
  %93 = getelementptr inbounds %struct.flow_block_cb, %struct.flow_block_cb* %92, i32 0, i32 0
  %94 = call i32 @list_del(i32* %93)
  store i32 0, i32* %3, align 4
  br label %98

95:                                               ; preds = %29
  %96 = load i32, i32* @EOPNOTSUPP, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %95, %88, %85, %65, %61, %51, %40, %25
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @flow_block_cb_is_busy(i32*, %struct.mlxsw_sp_port*, i32*) #1

declare dso_local %struct.flow_block_cb* @flow_block_cb_alloc(i32*, %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port*, i32*) #1

declare dso_local i32 @IS_ERR(%struct.flow_block_cb*) #1

declare dso_local i32 @PTR_ERR(%struct.flow_block_cb*) #1

declare dso_local i32 @mlxsw_sp_setup_tc_block_flower_bind(%struct.mlxsw_sp_port*, %struct.flow_block_offload*, i32) #1

declare dso_local i32 @flow_block_cb_free(%struct.flow_block_cb*) #1

declare dso_local i32 @flow_block_cb_add(%struct.flow_block_cb*, %struct.flow_block_offload*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mlxsw_sp_setup_tc_block_flower_unbind(%struct.mlxsw_sp_port*, %struct.flow_block_offload*, i32) #1

declare dso_local %struct.flow_block_cb* @flow_block_cb_lookup(i32, i32*, %struct.mlxsw_sp_port*) #1

declare dso_local i32 @flow_block_cb_remove(%struct.flow_block_cb*, %struct.flow_block_offload*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
