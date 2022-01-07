; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_82xx_dcb_get_cee_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_82xx_dcb_get_cee_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_dcb = type { i32, %struct.qlcnic_dcb_mbx_params* }
%struct.qlcnic_dcb_mbx_params = type { i32, i32* }

@QLC_DCB_LOCAL_PARAM_FWID = common dso_local global i32 0, align 4
@QLC_DCB_OPER_PARAM_FWID = common dso_local global i32 0, align 4
@QLC_DCB_PEER_PARAM_FWID = common dso_local global i32 0, align 4
@QLC_82XX_DCB_PRIO_TC_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_dcb*)* @qlcnic_82xx_dcb_get_cee_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_82xx_dcb_get_cee_cfg(%struct.qlcnic_dcb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_dcb*, align 8
  %4 = alloca %struct.qlcnic_dcb_mbx_params*, align 8
  %5 = alloca i32, align 4
  store %struct.qlcnic_dcb* %0, %struct.qlcnic_dcb** %3, align 8
  %6 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %7 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %6, i32 0, i32 1
  %8 = load %struct.qlcnic_dcb_mbx_params*, %struct.qlcnic_dcb_mbx_params** %7, align 8
  store %struct.qlcnic_dcb_mbx_params* %8, %struct.qlcnic_dcb_mbx_params** %4, align 8
  %9 = load %struct.qlcnic_dcb_mbx_params*, %struct.qlcnic_dcb_mbx_params** %4, align 8
  %10 = icmp ne %struct.qlcnic_dcb_mbx_params* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

12:                                               ; preds = %1
  %13 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %14 = load %struct.qlcnic_dcb_mbx_params*, %struct.qlcnic_dcb_mbx_params** %4, align 8
  %15 = getelementptr inbounds %struct.qlcnic_dcb_mbx_params, %struct.qlcnic_dcb_mbx_params* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = bitcast i32* %17 to i8*
  %19 = load i32, i32* @QLC_DCB_LOCAL_PARAM_FWID, align 4
  %20 = call i32 @qlcnic_dcb_query_cee_param(%struct.qlcnic_dcb* %13, i8* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %60

25:                                               ; preds = %12
  %26 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %27 = load %struct.qlcnic_dcb_mbx_params*, %struct.qlcnic_dcb_mbx_params** %4, align 8
  %28 = getelementptr inbounds %struct.qlcnic_dcb_mbx_params, %struct.qlcnic_dcb_mbx_params* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = bitcast i32* %30 to i8*
  %32 = load i32, i32* @QLC_DCB_OPER_PARAM_FWID, align 4
  %33 = call i32 @qlcnic_dcb_query_cee_param(%struct.qlcnic_dcb* %26, i8* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %60

38:                                               ; preds = %25
  %39 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %40 = load %struct.qlcnic_dcb_mbx_params*, %struct.qlcnic_dcb_mbx_params** %4, align 8
  %41 = getelementptr inbounds %struct.qlcnic_dcb_mbx_params, %struct.qlcnic_dcb_mbx_params* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = bitcast i32* %43 to i8*
  %45 = load i32, i32* @QLC_DCB_PEER_PARAM_FWID, align 4
  %46 = call i32 @qlcnic_dcb_query_cee_param(%struct.qlcnic_dcb* %39, i8* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %60

51:                                               ; preds = %38
  %52 = load i32, i32* @QLC_82XX_DCB_PRIO_TC_MAP, align 4
  %53 = load %struct.qlcnic_dcb_mbx_params*, %struct.qlcnic_dcb_mbx_params** %4, align 8
  %54 = getelementptr inbounds %struct.qlcnic_dcb_mbx_params, %struct.qlcnic_dcb_mbx_params* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %56 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @qlcnic_dcb_data_cee_param_map(i32 %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %51, %49, %36, %23, %11
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @qlcnic_dcb_query_cee_param(%struct.qlcnic_dcb*, i8*, i32) #1

declare dso_local i32 @qlcnic_dcb_data_cee_param_map(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
