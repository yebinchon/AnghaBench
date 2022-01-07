; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_dcb_cee_peer_get_pfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_dcb_cee_peer_get_pfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cee_pfc = type { i32, i32 }
%struct.qlcnic_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.qlcnic_dcb_cfg* }
%struct.qlcnic_dcb_cfg = type { %struct.TYPE_4__, %struct.qlcnic_dcb_cee* }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_dcb_cee = type { %struct.qlcnic_dcb_tc_cfg* }
%struct.qlcnic_dcb_tc_cfg = type { i32 }

@QLCNIC_DCB_STATE = common dso_local global i32 0, align 4
@QLC_DCB_PEER_IDX = common dso_local global i64 0, align 8
@QLC_DCB_MAX_TC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.cee_pfc*)* @qlcnic_dcb_cee_peer_get_pfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_dcb_cee_peer_get_pfc(%struct.net_device* %0, %struct.cee_pfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.cee_pfc*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.qlcnic_dcb_cfg*, align 8
  %8 = alloca %struct.qlcnic_dcb_tc_cfg*, align 8
  %9 = alloca %struct.qlcnic_dcb_cee*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.cee_pfc* %1, %struct.cee_pfc** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %13)
  store %struct.qlcnic_adapter* %14, %struct.qlcnic_adapter** %6, align 8
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.qlcnic_dcb_cfg*, %struct.qlcnic_dcb_cfg** %18, align 8
  store %struct.qlcnic_dcb_cfg* %19, %struct.qlcnic_dcb_cfg** %7, align 8
  %20 = load %struct.cee_pfc*, %struct.cee_pfc** %5, align 8
  %21 = getelementptr inbounds %struct.cee_pfc, %struct.cee_pfc* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* @QLCNIC_DCB_STATE, align 4
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %24 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 @test_bit(i32 %22, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

30:                                               ; preds = %2
  %31 = load %struct.qlcnic_dcb_cfg*, %struct.qlcnic_dcb_cfg** %7, align 8
  %32 = getelementptr inbounds %struct.qlcnic_dcb_cfg, %struct.qlcnic_dcb_cfg* %31, i32 0, i32 1
  %33 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %32, align 8
  %34 = load i64, i64* @QLC_DCB_PEER_IDX, align 8
  %35 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %33, i64 %34
  store %struct.qlcnic_dcb_cee* %35, %struct.qlcnic_dcb_cee** %9, align 8
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %63, %30
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @QLC_DCB_MAX_TC, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %36
  %41 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %9, align 8
  %42 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %41, i32 0, i32 0
  %43 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %43, i64 %44
  store %struct.qlcnic_dcb_tc_cfg* %45, %struct.qlcnic_dcb_tc_cfg** %8, align 8
  %46 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %8, align 8
  %47 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @qlcnic_dcb_prio_count(i32 %48)
  store i64 %49, i64* %12, align 8
  store i64 0, i64* %11, align 8
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @qlcnic_dcb_get_pfc_cfg(%struct.net_device* %50, i64 %51, i64* %11)
  %53 = load i64, i64* %11, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %40
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @QLC_DCB_GET_MAP(i64 %56)
  %58 = load %struct.cee_pfc*, %struct.cee_pfc** %5, align 8
  %59 = getelementptr inbounds %struct.cee_pfc, %struct.cee_pfc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %55, %40
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %10, align 8
  br label %36

66:                                               ; preds = %36
  %67 = load %struct.qlcnic_dcb_cfg*, %struct.qlcnic_dcb_cfg** %7, align 8
  %68 = getelementptr inbounds %struct.qlcnic_dcb_cfg, %struct.qlcnic_dcb_cfg* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.cee_pfc*, %struct.cee_pfc** %5, align 8
  %72 = getelementptr inbounds %struct.cee_pfc, %struct.cee_pfc* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %66, %29
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @qlcnic_dcb_prio_count(i32) #1

declare dso_local i32 @qlcnic_dcb_get_pfc_cfg(%struct.net_device*, i64, i64*) #1

declare dso_local i32 @QLC_DCB_GET_MAP(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
