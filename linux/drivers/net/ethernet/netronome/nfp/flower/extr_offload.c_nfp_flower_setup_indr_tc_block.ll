; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_setup_indr_tc_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_setup_indr_tc_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32 }
%struct.flow_block_offload = type { i64, i32, i32 }
%struct.nfp_flower_indr_block_cb_priv = type { i32, %struct.nfp_app*, %struct.net_device* }
%struct.flow_block_cb = type { i32 }

@FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS = common dso_local global i64 0, align 8
@FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@nfp_flower_setup_indr_block_cb = common dso_local global i32 0, align 4
@nfp_block_cb_list = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nfp_flower_setup_indr_tc_release = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nfp_app*, %struct.flow_block_offload*)* @nfp_flower_setup_indr_tc_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_setup_indr_tc_block(%struct.net_device* %0, %struct.nfp_app* %1, %struct.flow_block_offload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nfp_app*, align 8
  %7 = alloca %struct.flow_block_offload*, align 8
  %8 = alloca %struct.nfp_flower_indr_block_cb_priv*, align 8
  %9 = alloca %struct.nfp_flower_priv*, align 8
  %10 = alloca %struct.flow_block_cb*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.nfp_app* %1, %struct.nfp_app** %6, align 8
  store %struct.flow_block_offload* %2, %struct.flow_block_offload** %7, align 8
  %11 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %12 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %11, i32 0, i32 0
  %13 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %12, align 8
  store %struct.nfp_flower_priv* %13, %struct.nfp_flower_priv** %9, align 8
  %14 = load %struct.flow_block_offload*, %struct.flow_block_offload** %7, align 8
  %15 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = call i64 @nfp_flower_internal_port_can_offload(%struct.nfp_app* %20, %struct.net_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19, %3
  %25 = load %struct.flow_block_offload*, %struct.flow_block_offload** %7, align 8
  %26 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = call i64 @nfp_flower_internal_port_can_offload(%struct.nfp_app* %31, %struct.net_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30, %19
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %130

38:                                               ; preds = %30, %24
  %39 = load %struct.flow_block_offload*, %struct.flow_block_offload** %7, align 8
  %40 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %127 [
    i32 129, label %42
    i32 128, label %99
  ]

42:                                               ; preds = %38
  %43 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = call %struct.nfp_flower_indr_block_cb_priv* @nfp_flower_indr_block_cb_priv_lookup(%struct.nfp_app* %43, %struct.net_device* %44)
  store %struct.nfp_flower_indr_block_cb_priv* %45, %struct.nfp_flower_indr_block_cb_priv** %8, align 8
  %46 = load %struct.nfp_flower_indr_block_cb_priv*, %struct.nfp_flower_indr_block_cb_priv** %8, align 8
  %47 = icmp ne %struct.nfp_flower_indr_block_cb_priv* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load i32, i32* @nfp_flower_setup_indr_block_cb, align 4
  %50 = load %struct.nfp_flower_indr_block_cb_priv*, %struct.nfp_flower_indr_block_cb_priv** %8, align 8
  %51 = call i32 @flow_block_cb_is_busy(i32 %49, %struct.nfp_flower_indr_block_cb_priv* %50, i32* @nfp_block_cb_list)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %130

56:                                               ; preds = %48, %42
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.nfp_flower_indr_block_cb_priv* @kmalloc(i32 24, i32 %57)
  store %struct.nfp_flower_indr_block_cb_priv* %58, %struct.nfp_flower_indr_block_cb_priv** %8, align 8
  %59 = load %struct.nfp_flower_indr_block_cb_priv*, %struct.nfp_flower_indr_block_cb_priv** %8, align 8
  %60 = icmp ne %struct.nfp_flower_indr_block_cb_priv* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %130

64:                                               ; preds = %56
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = load %struct.nfp_flower_indr_block_cb_priv*, %struct.nfp_flower_indr_block_cb_priv** %8, align 8
  %67 = getelementptr inbounds %struct.nfp_flower_indr_block_cb_priv, %struct.nfp_flower_indr_block_cb_priv* %66, i32 0, i32 2
  store %struct.net_device* %65, %struct.net_device** %67, align 8
  %68 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %69 = load %struct.nfp_flower_indr_block_cb_priv*, %struct.nfp_flower_indr_block_cb_priv** %8, align 8
  %70 = getelementptr inbounds %struct.nfp_flower_indr_block_cb_priv, %struct.nfp_flower_indr_block_cb_priv* %69, i32 0, i32 1
  store %struct.nfp_app* %68, %struct.nfp_app** %70, align 8
  %71 = load %struct.nfp_flower_indr_block_cb_priv*, %struct.nfp_flower_indr_block_cb_priv** %8, align 8
  %72 = getelementptr inbounds %struct.nfp_flower_indr_block_cb_priv, %struct.nfp_flower_indr_block_cb_priv* %71, i32 0, i32 0
  %73 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %74 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %73, i32 0, i32 0
  %75 = call i32 @list_add(i32* %72, i32* %74)
  %76 = load i32, i32* @nfp_flower_setup_indr_block_cb, align 4
  %77 = load %struct.nfp_flower_indr_block_cb_priv*, %struct.nfp_flower_indr_block_cb_priv** %8, align 8
  %78 = load %struct.nfp_flower_indr_block_cb_priv*, %struct.nfp_flower_indr_block_cb_priv** %8, align 8
  %79 = load i32, i32* @nfp_flower_setup_indr_tc_release, align 4
  %80 = call %struct.flow_block_cb* @flow_block_cb_alloc(i32 %76, %struct.nfp_flower_indr_block_cb_priv* %77, %struct.nfp_flower_indr_block_cb_priv* %78, i32 %79)
  store %struct.flow_block_cb* %80, %struct.flow_block_cb** %10, align 8
  %81 = load %struct.flow_block_cb*, %struct.flow_block_cb** %10, align 8
  %82 = call i32 @IS_ERR(%struct.flow_block_cb* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %64
  %85 = load %struct.nfp_flower_indr_block_cb_priv*, %struct.nfp_flower_indr_block_cb_priv** %8, align 8
  %86 = getelementptr inbounds %struct.nfp_flower_indr_block_cb_priv, %struct.nfp_flower_indr_block_cb_priv* %85, i32 0, i32 0
  %87 = call i32 @list_del(i32* %86)
  %88 = load %struct.nfp_flower_indr_block_cb_priv*, %struct.nfp_flower_indr_block_cb_priv** %8, align 8
  %89 = call i32 @kfree(%struct.nfp_flower_indr_block_cb_priv* %88)
  %90 = load %struct.flow_block_cb*, %struct.flow_block_cb** %10, align 8
  %91 = call i32 @PTR_ERR(%struct.flow_block_cb* %90)
  store i32 %91, i32* %4, align 4
  br label %130

92:                                               ; preds = %64
  %93 = load %struct.flow_block_cb*, %struct.flow_block_cb** %10, align 8
  %94 = load %struct.flow_block_offload*, %struct.flow_block_offload** %7, align 8
  %95 = call i32 @flow_block_cb_add(%struct.flow_block_cb* %93, %struct.flow_block_offload* %94)
  %96 = load %struct.flow_block_cb*, %struct.flow_block_cb** %10, align 8
  %97 = getelementptr inbounds %struct.flow_block_cb, %struct.flow_block_cb* %96, i32 0, i32 0
  %98 = call i32 @list_add_tail(i32* %97, i32* @nfp_block_cb_list)
  store i32 0, i32* %4, align 4
  br label %130

99:                                               ; preds = %38
  %100 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %101 = load %struct.net_device*, %struct.net_device** %5, align 8
  %102 = call %struct.nfp_flower_indr_block_cb_priv* @nfp_flower_indr_block_cb_priv_lookup(%struct.nfp_app* %100, %struct.net_device* %101)
  store %struct.nfp_flower_indr_block_cb_priv* %102, %struct.nfp_flower_indr_block_cb_priv** %8, align 8
  %103 = load %struct.nfp_flower_indr_block_cb_priv*, %struct.nfp_flower_indr_block_cb_priv** %8, align 8
  %104 = icmp ne %struct.nfp_flower_indr_block_cb_priv* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* @ENOENT, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %130

108:                                              ; preds = %99
  %109 = load %struct.flow_block_offload*, %struct.flow_block_offload** %7, align 8
  %110 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @nfp_flower_setup_indr_block_cb, align 4
  %113 = load %struct.nfp_flower_indr_block_cb_priv*, %struct.nfp_flower_indr_block_cb_priv** %8, align 8
  %114 = call %struct.flow_block_cb* @flow_block_cb_lookup(i32 %111, i32 %112, %struct.nfp_flower_indr_block_cb_priv* %113)
  store %struct.flow_block_cb* %114, %struct.flow_block_cb** %10, align 8
  %115 = load %struct.flow_block_cb*, %struct.flow_block_cb** %10, align 8
  %116 = icmp ne %struct.flow_block_cb* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %108
  %118 = load i32, i32* @ENOENT, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %130

120:                                              ; preds = %108
  %121 = load %struct.flow_block_cb*, %struct.flow_block_cb** %10, align 8
  %122 = load %struct.flow_block_offload*, %struct.flow_block_offload** %7, align 8
  %123 = call i32 @flow_block_cb_remove(%struct.flow_block_cb* %121, %struct.flow_block_offload* %122)
  %124 = load %struct.flow_block_cb*, %struct.flow_block_cb** %10, align 8
  %125 = getelementptr inbounds %struct.flow_block_cb, %struct.flow_block_cb* %124, i32 0, i32 0
  %126 = call i32 @list_del(i32* %125)
  store i32 0, i32* %4, align 4
  br label %130

127:                                              ; preds = %38
  %128 = load i32, i32* @EOPNOTSUPP, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %127, %120, %117, %105, %92, %84, %61, %53, %35
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i64 @nfp_flower_internal_port_can_offload(%struct.nfp_app*, %struct.net_device*) #1

declare dso_local %struct.nfp_flower_indr_block_cb_priv* @nfp_flower_indr_block_cb_priv_lookup(%struct.nfp_app*, %struct.net_device*) #1

declare dso_local i32 @flow_block_cb_is_busy(i32, %struct.nfp_flower_indr_block_cb_priv*, i32*) #1

declare dso_local %struct.nfp_flower_indr_block_cb_priv* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local %struct.flow_block_cb* @flow_block_cb_alloc(i32, %struct.nfp_flower_indr_block_cb_priv*, %struct.nfp_flower_indr_block_cb_priv*, i32) #1

declare dso_local i32 @IS_ERR(%struct.flow_block_cb*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.nfp_flower_indr_block_cb_priv*) #1

declare dso_local i32 @PTR_ERR(%struct.flow_block_cb*) #1

declare dso_local i32 @flow_block_cb_add(%struct.flow_block_cb*, %struct.flow_block_offload*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.flow_block_cb* @flow_block_cb_lookup(i32, i32, %struct.nfp_flower_indr_block_cb_priv*) #1

declare dso_local i32 @flow_block_cb_remove(%struct.flow_block_cb*, %struct.flow_block_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
