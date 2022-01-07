; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_dcb_fill_cee_tc_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_dcb_fill_cee_tc_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_dcb_mbx_params = type { i32 }
%struct.qlcnic_dcb_param = type { i32*, i32* }
%struct.qlcnic_dcb_cee = type { %struct.TYPE_4__*, i64, %struct.qlcnic_dcb_tc_cfg* }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_dcb_tc_cfg = type { i32, i64, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@QLC_DCB_MAX_PRIO = common dso_local global i64 0, align 8
@QLC_PFC_FULL = common dso_local global i32 0, align 4
@QLC_PRIO_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_dcb_mbx_params*, %struct.qlcnic_dcb_param*, %struct.qlcnic_dcb_cee*)* @qlcnic_dcb_fill_cee_tc_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_dcb_fill_cee_tc_params(%struct.qlcnic_dcb_mbx_params* %0, %struct.qlcnic_dcb_param* %1, %struct.qlcnic_dcb_cee* %2) #0 {
  %4 = alloca %struct.qlcnic_dcb_mbx_params*, align 8
  %5 = alloca %struct.qlcnic_dcb_param*, align 8
  %6 = alloca %struct.qlcnic_dcb_cee*, align 8
  %7 = alloca %struct.qlcnic_dcb_tc_cfg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.qlcnic_dcb_mbx_params* %0, %struct.qlcnic_dcb_mbx_params** %4, align 8
  store %struct.qlcnic_dcb_param* %1, %struct.qlcnic_dcb_param** %5, align 8
  store %struct.qlcnic_dcb_cee* %2, %struct.qlcnic_dcb_cee** %6, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %97, %3
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @QLC_DCB_MAX_PRIO, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %100

15:                                               ; preds = %11
  %16 = load %struct.qlcnic_dcb_mbx_params*, %struct.qlcnic_dcb_mbx_params** %4, align 8
  %17 = getelementptr inbounds %struct.qlcnic_dcb_mbx_params, %struct.qlcnic_dcb_mbx_params* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @QLC_DCB_GET_TC_PRIO(i32 %18, i64 %19)
  store i64 %20, i64* %9, align 8
  %21 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %6, align 8
  %22 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %21, i32 0, i32 2
  %23 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %23, i64 %24
  store %struct.qlcnic_dcb_tc_cfg* %25, %struct.qlcnic_dcb_tc_cfg** %7, align 8
  %26 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %7, align 8
  %27 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @QLC_DCB_GET_MAP(i64 %28)
  %30 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %7, align 8
  %31 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.qlcnic_dcb_param*, %struct.qlcnic_dcb_param** %5, align 8
  %35 = getelementptr inbounds %struct.qlcnic_dcb_param, %struct.qlcnic_dcb_param* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @QLC_DCB_GET_PFC_PRIO(i32 %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %15
  %43 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %6, align 8
  %44 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %7, align 8
  %49 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %48, i32 0, i32 3
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* @QLC_PFC_FULL, align 4
  %55 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %7, align 8
  %56 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %55, i32 0, i32 3
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 %54, i32* %60, align 4
  br label %61

61:                                               ; preds = %47, %42, %15
  %62 = load i64, i64* %8, align 8
  %63 = icmp ult i64 %62, 4
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.qlcnic_dcb_param*, %struct.qlcnic_dcb_param** %5, align 8
  %66 = getelementptr inbounds %struct.qlcnic_dcb_param, %struct.qlcnic_dcb_param* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %8, align 8
  %71 = call i64 @QLC_DCB_GET_PGID_PRIO(i32 %69, i64 %70)
  store i64 %71, i64* %10, align 8
  br label %80

72:                                               ; preds = %61
  %73 = load %struct.qlcnic_dcb_param*, %struct.qlcnic_dcb_param** %5, align 8
  %74 = getelementptr inbounds %struct.qlcnic_dcb_param, %struct.qlcnic_dcb_param* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %8, align 8
  %79 = call i64 @QLC_DCB_GET_PGID_PRIO(i32 %77, i64 %78)
  store i64 %79, i64* %10, align 8
  br label %80

80:                                               ; preds = %72, %64
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %7, align 8
  %83 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* @QLC_PRIO_LINK, align 4
  %85 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %7, align 8
  %86 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %6, align 8
  %88 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load %struct.qlcnic_dcb_tc_cfg*, %struct.qlcnic_dcb_tc_cfg** %7, align 8
  %91 = getelementptr inbounds %struct.qlcnic_dcb_tc_cfg, %struct.qlcnic_dcb_tc_cfg* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %80
  %98 = load i64, i64* %8, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %8, align 8
  br label %11

100:                                              ; preds = %11
  ret void
}

declare dso_local i64 @QLC_DCB_GET_TC_PRIO(i32, i64) #1

declare dso_local i32 @QLC_DCB_GET_MAP(i64) #1

declare dso_local i64 @QLC_DCB_GET_PFC_PRIO(i32, i64) #1

declare dso_local i64 @QLC_DCB_GET_PGID_PRIO(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
