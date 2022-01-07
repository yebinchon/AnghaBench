; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_add_cls_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_add_cls_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ethtool_rxnfc = type { %struct.ethtool_rx_flow_spec }
%struct.ethtool_rx_flow_spec = type { i32 }
%struct.qede_arfs_fltr_node = type { i32, i32, i8*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i8*)* }
%struct.qede_arfs_tuple = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qede_add_cls_rule(%struct.qede_dev* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca %struct.qede_dev*, align 8
  %4 = alloca %struct.ethtool_rxnfc*, align 8
  %5 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %6 = alloca %struct.qede_arfs_fltr_node*, align 8
  %7 = alloca %struct.qede_arfs_tuple, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %3, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %4, align 8
  %10 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %10, i32 0, i32 0
  store %struct.ethtool_rx_flow_spec* %11, %struct.ethtool_rx_flow_spec** %5, align 8
  %12 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %13 = call i32 @__qede_lock(%struct.qede_dev* %12)
  %14 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %15 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EPERM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %9, align 4
  br label %111

21:                                               ; preds = %2
  %22 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %23 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %24 = call i32 @qede_flow_spec_to_rule(%struct.qede_dev* %22, %struct.qede_arfs_tuple* %7, %struct.ethtool_rx_flow_spec* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %111

28:                                               ; preds = %21
  %29 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %30 = call i64 @qede_flow_find_fltr(%struct.qede_dev* %29, %struct.qede_arfs_tuple* %7)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %111

35:                                               ; preds = %28
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kzalloc(i32 32, i32 %36)
  %38 = bitcast i8* %37 to %struct.qede_arfs_fltr_node*
  store %struct.qede_arfs_fltr_node* %38, %struct.qede_arfs_fltr_node** %6, align 8
  %39 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %40 = icmp ne %struct.qede_arfs_fltr_node* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %111

44:                                               ; preds = %35
  %45 = call i32 @qede_flow_get_min_header_size(%struct.qede_arfs_tuple* %7)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kzalloc(i32 %46, i32 %47)
  %49 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %50 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %52 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %44
  %56 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %57 = call i32 @kfree(%struct.qede_arfs_fltr_node* %56)
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %9, align 4
  br label %111

60:                                               ; preds = %44
  %61 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %65 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %67 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %70 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @set_bit(i32 %68, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %77 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %79 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %78, i32 0, i32 3
  %80 = call i32 @memcpy(%struct.TYPE_5__* %79, %struct.qede_arfs_tuple* %7, i32 8)
  %81 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %82 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %83 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %84 = call i32 @qede_flow_set_destination(%struct.qede_dev* %81, %struct.qede_arfs_fltr_node* %82, %struct.ethtool_rx_flow_spec* %83)
  %85 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %86 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32 (%struct.TYPE_5__*, i8*)*, i32 (%struct.TYPE_5__*, i8*)** %87, align 8
  %89 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %90 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %89, i32 0, i32 3
  %91 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %92 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 %88(%struct.TYPE_5__* %90, i8* %93)
  %95 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %96 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %97 = call i32 @qede_enqueue_fltr_and_config_searcher(%struct.qede_dev* %95, %struct.qede_arfs_fltr_node* %96, i32 0)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %60
  br label %111

101:                                              ; preds = %60
  %102 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %103 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %104 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %105 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @qede_configure_arfs_fltr(%struct.qede_dev* %102, %struct.qede_arfs_fltr_node* %103, i32 %106, i32 1)
  %108 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %109 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %110 = call i32 @qede_poll_arfs_filter_config(%struct.qede_dev* %108, %struct.qede_arfs_fltr_node* %109)
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %101, %100, %55, %41, %32, %27, %18
  %112 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %113 = call i32 @__qede_unlock(%struct.qede_dev* %112)
  %114 = load i32, i32* %9, align 4
  ret i32 %114
}

declare dso_local i32 @__qede_lock(%struct.qede_dev*) #1

declare dso_local i32 @qede_flow_spec_to_rule(%struct.qede_dev*, %struct.qede_arfs_tuple*, %struct.ethtool_rx_flow_spec*) #1

declare dso_local i64 @qede_flow_find_fltr(%struct.qede_dev*, %struct.qede_arfs_tuple*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @qede_flow_get_min_header_size(%struct.qede_arfs_tuple*) #1

declare dso_local i32 @kfree(%struct.qede_arfs_fltr_node*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_5__*, %struct.qede_arfs_tuple*, i32) #1

declare dso_local i32 @qede_flow_set_destination(%struct.qede_dev*, %struct.qede_arfs_fltr_node*, %struct.ethtool_rx_flow_spec*) #1

declare dso_local i32 @qede_enqueue_fltr_and_config_searcher(%struct.qede_dev*, %struct.qede_arfs_fltr_node*, i32) #1

declare dso_local i32 @qede_configure_arfs_fltr(%struct.qede_dev*, %struct.qede_arfs_fltr_node*, i32, i32) #1

declare dso_local i32 @qede_poll_arfs_filter_config(%struct.qede_dev*, %struct.qede_arfs_fltr_node*) #1

declare dso_local i32 @__qede_unlock(%struct.qede_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
