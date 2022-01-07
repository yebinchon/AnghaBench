; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_ethtool.c_enic_grxclsrule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_ethtool.c_enic_grxclsrule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32 }
%struct.ethtool_rxnfc = type { i32 }
%struct.ethtool_rx_flow_spec = type { i32, %struct.TYPE_14__, %struct.TYPE_11__, i32, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.enic_rfs_fltr_node = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TCP_V4_FLOW = common dso_local global i32 0, align 4
@UDP_V4_FLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enic*, %struct.ethtool_rxnfc*)* @enic_grxclsrule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_grxclsrule(%struct.enic* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.enic*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %7 = alloca %struct.enic_rfs_fltr_node*, align 8
  store %struct.enic* %0, %struct.enic** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %8 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %9 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %8, i32 0, i32 0
  %10 = bitcast i32* %9 to %struct.ethtool_rx_flow_spec*
  store %struct.ethtool_rx_flow_spec* %10, %struct.ethtool_rx_flow_spec** %6, align 8
  %11 = load %struct.enic*, %struct.enic** %4, align 8
  %12 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %13 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = call %struct.enic_rfs_fltr_node* @htbl_fltr_search(%struct.enic* %11, i32 %15)
  store %struct.enic_rfs_fltr_node* %16, %struct.enic_rfs_fltr_node** %7, align 8
  %17 = load %struct.enic_rfs_fltr_node*, %struct.enic_rfs_fltr_node** %7, align 8
  %18 = icmp ne %struct.enic_rfs_fltr_node* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %93

22:                                               ; preds = %2
  %23 = load %struct.enic_rfs_fltr_node*, %struct.enic_rfs_fltr_node** %7, align 8
  %24 = getelementptr inbounds %struct.enic_rfs_fltr_node, %struct.enic_rfs_fltr_node* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %36 [
    i32 129, label %28
    i32 128, label %32
  ]

28:                                               ; preds = %22
  %29 = load i32, i32* @TCP_V4_FLOW, align 4
  %30 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %31 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  br label %39

32:                                               ; preds = %22
  %33 = load i32, i32* @UDP_V4_FLOW, align 4
  %34 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %35 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  br label %39

36:                                               ; preds = %22
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %93

39:                                               ; preds = %32, %28
  %40 = load %struct.enic_rfs_fltr_node*, %struct.enic_rfs_fltr_node** %7, align 8
  %41 = getelementptr inbounds %struct.enic_rfs_fltr_node, %struct.enic_rfs_fltr_node* %40, i32 0, i32 1
  %42 = call i32 @flow_get_u32_src(%struct.TYPE_15__* %41)
  %43 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %44 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  store i32 %42, i32* %46, align 4
  %47 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %48 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 3
  store i8* inttoptr (i64 -1 to i8*), i8** %50, align 8
  %51 = load %struct.enic_rfs_fltr_node*, %struct.enic_rfs_fltr_node** %7, align 8
  %52 = getelementptr inbounds %struct.enic_rfs_fltr_node, %struct.enic_rfs_fltr_node* %51, i32 0, i32 1
  %53 = call i32 @flow_get_u32_dst(%struct.TYPE_15__* %52)
  %54 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %55 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  store i32 %53, i32* %57, align 8
  %58 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %59 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  store i8* inttoptr (i64 -1 to i8*), i8** %61, align 8
  %62 = load %struct.enic_rfs_fltr_node*, %struct.enic_rfs_fltr_node** %7, align 8
  %63 = getelementptr inbounds %struct.enic_rfs_fltr_node, %struct.enic_rfs_fltr_node* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %68 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 4
  %71 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %72 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %74, align 8
  %75 = load %struct.enic_rfs_fltr_node*, %struct.enic_rfs_fltr_node** %7, align 8
  %76 = getelementptr inbounds %struct.enic_rfs_fltr_node, %struct.enic_rfs_fltr_node* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %81 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 8
  %84 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %85 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  store i8* inttoptr (i64 -1 to i8*), i8** %87, align 8
  %88 = load %struct.enic_rfs_fltr_node*, %struct.enic_rfs_fltr_node** %7, align 8
  %89 = getelementptr inbounds %struct.enic_rfs_fltr_node, %struct.enic_rfs_fltr_node* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %92 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %39, %36, %19
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.enic_rfs_fltr_node* @htbl_fltr_search(%struct.enic*, i32) #1

declare dso_local i32 @flow_get_u32_src(%struct.TYPE_15__*) #1

declare dso_local i32 @flow_get_u32_dst(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
