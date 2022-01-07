; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_flow_set_destination.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_flow_set_destination.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32 }
%struct.qede_arfs_fltr_node = type { i32, i64, i32, i32 }
%struct.ethtool_rx_flow_spec = type { i64 }

@RX_CLS_FLOW_DISC = common dso_local global i64 0, align 8
@QED_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Configuring N-tuple for VF 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_dev*, %struct.qede_arfs_fltr_node*, %struct.ethtool_rx_flow_spec*)* @qede_flow_set_destination to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_flow_set_destination(%struct.qede_dev* %0, %struct.qede_arfs_fltr_node* %1, %struct.ethtool_rx_flow_spec* %2) #0 {
  %4 = alloca %struct.qede_dev*, align 8
  %5 = alloca %struct.qede_arfs_fltr_node*, align 8
  %6 = alloca %struct.ethtool_rx_flow_spec*, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %4, align 8
  store %struct.qede_arfs_fltr_node* %1, %struct.qede_arfs_fltr_node** %5, align 8
  store %struct.ethtool_rx_flow_spec* %2, %struct.ethtool_rx_flow_spec** %6, align 8
  %7 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %8 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RX_CLS_FLOW_DISC, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %5, align 8
  %14 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  br label %45

15:                                               ; preds = %3
  %16 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %17 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @ethtool_get_flow_spec_ring_vf(i64 %18)
  %20 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %5, align 8
  %21 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %23 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @ethtool_get_flow_spec_ring(i64 %24)
  %26 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %5, align 8
  %27 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %5, align 8
  %29 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %5, align 8
  %32 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %5, align 8
  %34 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %15
  %38 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %39 = load i32, i32* @QED_MSG_SP, align 4
  %40 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %5, align 8
  %41 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %42, 1
  %44 = call i32 @DP_VERBOSE(%struct.qede_dev* %38, i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %43)
  br label %45

45:                                               ; preds = %12, %37, %15
  ret void
}

declare dso_local i64 @ethtool_get_flow_spec_ring_vf(i64) #1

declare dso_local i32 @ethtool_get_flow_spec_ring(i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.qede_dev*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
