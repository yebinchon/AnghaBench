; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_dcb_get_pfc_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_dcb_get_pfc_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.qlcnic_dcb_cee* }
%struct.qlcnic_dcb_cee = type { %struct.qlcnic_dcb_tc_cfg*, i32 }
%struct.qlcnic_dcb_tc_cfg = type { i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i64 }

@QLC_DCB_OPER_IDX = common dso_local global i64 0, align 8
@QLCNIC_DCB_STATE = common dso_local global i32 0, align 4
@QLC_DCB_MAX_TC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i64*)* @qlcnic_dcb_get_pfc_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_dcb_get_pfc_cfg(%struct.net_device* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.qlcnic_adapter*, align 8
  %8 = alloca %struct.qlcnic_dcb_tc_cfg*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qlcnic_dcb_cee*, align 8
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.qlcnic_adapter* %13, %struct.qlcnic_adapter** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @QLC_DCB_GET_MAP(i32 %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64*, i64** %6, align 8
  store i64 0, i64* %16, align 8
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %18 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %22, align 8
  %24 = load i64, i64* @QLC_DCB_OPER_IDX, align 8
  %25 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %23, i64 %24
  store %struct.qlcnic_dcb_cee* %25, %struct.qlcnic_dcb_cee** %10, align 8
  %26 = load i32, i32* @QLCNIC_DCB_STATE, align 4
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %28 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = call i32 @test_bit(i32 %26, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  %34 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %10, align 8
  %35 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33, %3
  br label %86

39:                                               ; preds = %33
  store i64 0, i64* %11, align 8
  br label %40

40:                                               ; preds = %83, %39
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @QLC_DCB_MAX_TC, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %86

44:                                               ; preds = %40
  %45 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %10, align 8
  %46 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %45, i32 0, i32 0
  %47 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %46, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %47, i64 %48
  store %struct.qlcnic_dcb_tc_cfg* %49, %struct.qlcnic_dcb_tc_cfg** %8, align 8
  %50 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %8, align 8
  %51 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  br label %83

55:                                               ; preds = %44
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %8, align 8
  %58 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = and i64 %56, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %55
  %63 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %8, align 8
  %64 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %62
  %73 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %8, align 8
  %74 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64*, i64** %6, align 8
  store i64 %80, i64* %81, align 8
  br label %82

82:                                               ; preds = %72, %62, %55
  br label %83

83:                                               ; preds = %82, %54
  %84 = load i64, i64* %11, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %11, align 8
  br label %40

86:                                               ; preds = %38, %40
  ret void
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @QLC_DCB_GET_MAP(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
