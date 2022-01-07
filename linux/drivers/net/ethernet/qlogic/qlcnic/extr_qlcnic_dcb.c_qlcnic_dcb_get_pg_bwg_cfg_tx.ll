; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_dcb_get_pg_bwg_cfg_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_dcb_get_pg_bwg_cfg_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.qlcnic_dcb_cee* }
%struct.qlcnic_dcb_cee = type { %struct.qlcnic_dcb_pg_cfg*, i32 }
%struct.qlcnic_dcb_pg_cfg = type { i32, i32 }

@QLC_DCB_OPER_IDX = common dso_local global i64 0, align 8
@QLCNIC_DCB_STATE = common dso_local global i32 0, align 4
@QLC_DCB_MAX_PG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @qlcnic_dcb_get_pg_bwg_cfg_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_dcb_get_pg_bwg_cfg_tx(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qlcnic_adapter*, align 8
  %8 = alloca %struct.qlcnic_dcb_pg_cfg*, align 8
  %9 = alloca %struct.qlcnic_dcb_cee*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.qlcnic_adapter* %11, %struct.qlcnic_adapter** %7, align 8
  %12 = load i32*, i32** %6, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %18, align 8
  %20 = load i64, i64* @QLC_DCB_OPER_IDX, align 8
  %21 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %19, i64 %20
  store %struct.qlcnic_dcb_cee* %21, %struct.qlcnic_dcb_cee** %9, align 8
  %22 = load i32, i32* @QLCNIC_DCB_STATE, align 4
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %24 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @test_bit(i32 %22, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %9, align 8
  %31 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %3
  br label %60

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @QLC_DCB_MAX_PG, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %35
  br label %60

43:                                               ; preds = %38
  %44 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %9, align 8
  %45 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %44, i32 0, i32 0
  %46 = load %struct.qlcnic_dcb_pg_cfg*, %struct.qlcnic_dcb_pg_cfg** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.qlcnic_dcb_pg_cfg, %struct.qlcnic_dcb_pg_cfg* %46, i64 %48
  store %struct.qlcnic_dcb_pg_cfg* %49, %struct.qlcnic_dcb_pg_cfg** %8, align 8
  %50 = load %struct.qlcnic_dcb_pg_cfg*, %struct.qlcnic_dcb_pg_cfg** %8, align 8
  %51 = getelementptr inbounds %struct.qlcnic_dcb_pg_cfg, %struct.qlcnic_dcb_pg_cfg* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  br label %60

55:                                               ; preds = %43
  %56 = load %struct.qlcnic_dcb_pg_cfg*, %struct.qlcnic_dcb_pg_cfg** %8, align 8
  %57 = getelementptr inbounds %struct.qlcnic_dcb_pg_cfg, %struct.qlcnic_dcb_pg_cfg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %6, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %54, %42, %34
  ret void
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
