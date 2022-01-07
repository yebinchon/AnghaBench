; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_setup_tc_block_flower_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_setup_tc_block_flower_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp* }
%struct.mlxsw_sp_acl_block = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.flow_block_offload = type { i32, i32, i32 }
%struct.flow_block_cb = type { i32 }

@mlxsw_sp_setup_tc_block_cb_flower = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_sp_tc_block_flower_release = common dso_local global i32 0, align 4
@mlxsw_sp_block_cb_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.flow_block_offload*, i32)* @mlxsw_sp_setup_tc_block_flower_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_setup_tc_block_flower_bind(%struct.mlxsw_sp_port* %0, %struct.flow_block_offload* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  %6 = alloca %struct.flow_block_offload*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca %struct.mlxsw_sp_acl_block*, align 8
  %10 = alloca %struct.flow_block_cb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %5, align 8
  store %struct.flow_block_offload* %1, %struct.flow_block_offload** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %13, i32 0, i32 2
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %14, align 8
  store %struct.mlxsw_sp* %15, %struct.mlxsw_sp** %8, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.flow_block_offload*, %struct.flow_block_offload** %6, align 8
  %17 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @mlxsw_sp_setup_tc_block_cb_flower, align 4
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %21 = call %struct.flow_block_cb* @flow_block_cb_lookup(i32 %18, i32 %19, %struct.mlxsw_sp* %20)
  store %struct.flow_block_cb* %21, %struct.flow_block_cb** %10, align 8
  %22 = load %struct.flow_block_cb*, %struct.flow_block_cb** %10, align 8
  %23 = icmp ne %struct.flow_block_cb* %22, null
  br i1 %23, label %50, label %24

24:                                               ; preds = %3
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %26 = load %struct.flow_block_offload*, %struct.flow_block_offload** %6, align 8
  %27 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.mlxsw_sp_acl_block* @mlxsw_sp_acl_block_create(%struct.mlxsw_sp* %25, i32 %28)
  store %struct.mlxsw_sp_acl_block* %29, %struct.mlxsw_sp_acl_block** %9, align 8
  %30 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %9, align 8
  %31 = icmp ne %struct.mlxsw_sp_acl_block* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %99

35:                                               ; preds = %24
  %36 = load i32, i32* @mlxsw_sp_setup_tc_block_cb_flower, align 4
  %37 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %38 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %9, align 8
  %39 = load i32, i32* @mlxsw_sp_tc_block_flower_release, align 4
  %40 = call %struct.flow_block_cb* @flow_block_cb_alloc(i32 %36, %struct.mlxsw_sp* %37, %struct.mlxsw_sp_acl_block* %38, i32 %39)
  store %struct.flow_block_cb* %40, %struct.flow_block_cb** %10, align 8
  %41 = load %struct.flow_block_cb*, %struct.flow_block_cb** %10, align 8
  %42 = call i64 @IS_ERR(%struct.flow_block_cb* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %9, align 8
  %46 = call i32 @mlxsw_sp_acl_block_destroy(%struct.mlxsw_sp_acl_block* %45)
  %47 = load %struct.flow_block_cb*, %struct.flow_block_cb** %10, align 8
  %48 = call i32 @PTR_ERR(%struct.flow_block_cb* %47)
  store i32 %48, i32* %12, align 4
  br label %97

49:                                               ; preds = %35
  store i32 1, i32* %11, align 4
  br label %53

50:                                               ; preds = %3
  %51 = load %struct.flow_block_cb*, %struct.flow_block_cb** %10, align 8
  %52 = call %struct.mlxsw_sp_acl_block* @flow_block_cb_priv(%struct.flow_block_cb* %51)
  store %struct.mlxsw_sp_acl_block* %52, %struct.mlxsw_sp_acl_block** %9, align 8
  br label %53

53:                                               ; preds = %50, %49
  %54 = load %struct.flow_block_cb*, %struct.flow_block_cb** %10, align 8
  %55 = call i32 @flow_block_cb_incref(%struct.flow_block_cb* %54)
  %56 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %57 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %9, align 8
  %58 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.flow_block_offload*, %struct.flow_block_offload** %6, align 8
  %61 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @mlxsw_sp_acl_block_bind(%struct.mlxsw_sp* %56, %struct.mlxsw_sp_acl_block* %57, %struct.mlxsw_sp_port* %58, i32 %59, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %89

67:                                               ; preds = %53
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %9, align 8
  %72 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %73 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %72, i32 0, i32 1
  store %struct.mlxsw_sp_acl_block* %71, %struct.mlxsw_sp_acl_block** %73, align 8
  br label %78

74:                                               ; preds = %67
  %75 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %9, align 8
  %76 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %77 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %76, i32 0, i32 0
  store %struct.mlxsw_sp_acl_block* %75, %struct.mlxsw_sp_acl_block** %77, align 8
  br label %78

78:                                               ; preds = %74, %70
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load %struct.flow_block_cb*, %struct.flow_block_cb** %10, align 8
  %83 = load %struct.flow_block_offload*, %struct.flow_block_offload** %6, align 8
  %84 = call i32 @flow_block_cb_add(%struct.flow_block_cb* %82, %struct.flow_block_offload* %83)
  %85 = load %struct.flow_block_cb*, %struct.flow_block_cb** %10, align 8
  %86 = getelementptr inbounds %struct.flow_block_cb, %struct.flow_block_cb* %85, i32 0, i32 0
  %87 = call i32 @list_add_tail(i32* %86, i32* @mlxsw_sp_block_cb_list)
  br label %88

88:                                               ; preds = %81, %78
  store i32 0, i32* %4, align 4
  br label %99

89:                                               ; preds = %66
  %90 = load %struct.flow_block_cb*, %struct.flow_block_cb** %10, align 8
  %91 = call i32 @flow_block_cb_decref(%struct.flow_block_cb* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = load %struct.flow_block_cb*, %struct.flow_block_cb** %10, align 8
  %95 = call i32 @flow_block_cb_free(%struct.flow_block_cb* %94)
  br label %96

96:                                               ; preds = %93, %89
  br label %97

97:                                               ; preds = %96, %44
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %88, %32
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.flow_block_cb* @flow_block_cb_lookup(i32, i32, %struct.mlxsw_sp*) #1

declare dso_local %struct.mlxsw_sp_acl_block* @mlxsw_sp_acl_block_create(%struct.mlxsw_sp*, i32) #1

declare dso_local %struct.flow_block_cb* @flow_block_cb_alloc(i32, %struct.mlxsw_sp*, %struct.mlxsw_sp_acl_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.flow_block_cb*) #1

declare dso_local i32 @mlxsw_sp_acl_block_destroy(%struct.mlxsw_sp_acl_block*) #1

declare dso_local i32 @PTR_ERR(%struct.flow_block_cb*) #1

declare dso_local %struct.mlxsw_sp_acl_block* @flow_block_cb_priv(%struct.flow_block_cb*) #1

declare dso_local i32 @flow_block_cb_incref(%struct.flow_block_cb*) #1

declare dso_local i32 @mlxsw_sp_acl_block_bind(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_port*, i32, i32) #1

declare dso_local i32 @flow_block_cb_add(%struct.flow_block_cb*, %struct.flow_block_offload*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @flow_block_cb_decref(%struct.flow_block_cb*) #1

declare dso_local i32 @flow_block_cb_free(%struct.flow_block_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
