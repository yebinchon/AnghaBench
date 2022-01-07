; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_disable_vlan_stripping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_disable_vlan_stripping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VIRTCHNL_OP_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Cannot disable stripping, command %d pending\0A\00", align 1
@VIRTCHNL_OP_DISABLE_VLAN_STRIPPING = common dso_local global i64 0, align 8
@IAVF_FLAG_AQ_DISABLE_VLAN_STRIPPING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iavf_disable_vlan_stripping(%struct.iavf_adapter* %0) #0 {
  %2 = alloca %struct.iavf_adapter*, align 8
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %2, align 8
  %3 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @VIRTCHNL_OP_UNKNOWN, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @dev_err(i32* %12, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %15)
  br label %30

17:                                               ; preds = %1
  %18 = load i64, i64* @VIRTCHNL_OP_DISABLE_VLAN_STRIPPING, align 8
  %19 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* @IAVF_FLAG_AQ_DISABLE_VLAN_STRIPPING, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %28 = load i64, i64* @VIRTCHNL_OP_DISABLE_VLAN_STRIPPING, align 8
  %29 = call i32 @iavf_send_pf_msg(%struct.iavf_adapter* %27, i64 %28, i32* null, i32 0)
  br label %30

30:                                               ; preds = %17, %8
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @iavf_send_pf_msg(%struct.iavf_adapter*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
