; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_dcb_get_pg_tc_cfg_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_dcb_get_pg_tc_cfg_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.qlcnic_dcb_cee* }
%struct.qlcnic_dcb_cee = type { %struct.qlcnic_dcb_tc_cfg*, i32 }
%struct.qlcnic_dcb_tc_cfg = type { i32, i32, i32, i32, i64 }

@QLC_DCB_OPER_IDX = common dso_local global i64 0, align 8
@QLCNIC_DCB_STATE = common dso_local global i32 0, align 4
@QLC_DCB_MAX_TC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*, i32*, i32*, i32*)* @qlcnic_dcb_get_pg_tc_cfg_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_dcb_get_pg_tc_cfg_tx(%struct.net_device* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.qlcnic_adapter*, align 8
  %14 = alloca %struct.qlcnic_dcb_tc_cfg*, align 8
  %15 = alloca %struct.qlcnic_dcb_tc_cfg*, align 8
  %16 = alloca %struct.qlcnic_dcb_cee*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %20)
  store %struct.qlcnic_adapter* %21, %struct.qlcnic_adapter** %13, align 8
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %13, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %27, align 8
  %29 = load i64, i64* @QLC_DCB_OPER_IDX, align 8
  %30 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %28, i64 %29
  store %struct.qlcnic_dcb_cee* %30, %struct.qlcnic_dcb_cee** %16, align 8
  %31 = load i32*, i32** %12, align 8
  store i32 0, i32* %31, align 4
  %32 = load i32*, i32** %11, align 8
  store i32 0, i32* %32, align 4
  %33 = load i32*, i32** %10, align 8
  store i32 0, i32* %33, align 4
  %34 = load i32*, i32** %9, align 8
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* @QLCNIC_DCB_STATE, align 4
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %13, align 8
  %37 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @test_bit(i32 %35, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %6
  %43 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %16, align 8
  %44 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42, %6
  br label %120

48:                                               ; preds = %42
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @QLC_DCB_MAX_TC, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %48
  br label %120

56:                                               ; preds = %51
  %57 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %16, align 8
  %58 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %57, i32 0, i32 0
  %59 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %59, i64 %61
  store %struct.qlcnic_dcb_tc_cfg* %62, %struct.qlcnic_dcb_tc_cfg** %14, align 8
  %63 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %14, align 8
  %64 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %56
  br label %120

68:                                               ; preds = %56
  %69 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %14, align 8
  %70 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %10, align 8
  store i32 %71, i32* %72, align 4
  %73 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %14, align 8
  %74 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  %77 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %14, align 8
  %78 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %12, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %19, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %83

83:                                               ; preds = %108, %68
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* @QLC_DCB_MAX_TC, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %83
  %88 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %16, align 8
  %89 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %88, i32 0, i32 0
  %90 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %89, align 8
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %90, i64 %92
  store %struct.qlcnic_dcb_tc_cfg* %93, %struct.qlcnic_dcb_tc_cfg** %15, align 8
  %94 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %15, align 8
  %95 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %87
  %99 = load i32, i32* %19, align 4
  %100 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %15, align 8
  %101 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %99, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i32, i32* %18, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %18, align 4
  br label %107

107:                                              ; preds = %104, %98, %87
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %17, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %17, align 4
  br label %83

111:                                              ; preds = %83
  %112 = load i32, i32* %18, align 4
  %113 = sdiv i32 100, %112
  %114 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %14, align 8
  %115 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %14, align 8
  %117 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %11, align 8
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %111, %67, %55, %47
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
