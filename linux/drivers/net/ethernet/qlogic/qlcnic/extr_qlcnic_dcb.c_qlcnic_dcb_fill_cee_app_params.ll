; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_dcb_fill_cee_app_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_dcb_fill_cee_app_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.qlcnic_dcb_param = type { i32*, i32* }
%struct.qlcnic_dcb_cee = type { %struct.qlcnic_dcb_app* }
%struct.qlcnic_dcb_app = type { i32, i64, i32, i64 }
%struct.dcb_app = type { i64, i32, i64 }

@QLC_DCB_MAX_TC = common dso_local global i64 0, align 8
@QLC_DCB_OPER_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*, i64, %struct.qlcnic_dcb_param*, %struct.qlcnic_dcb_cee*)* @qlcnic_dcb_fill_cee_app_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_dcb_fill_cee_app_params(%struct.qlcnic_adapter* %0, i64 %1, %struct.qlcnic_dcb_param* %2, %struct.qlcnic_dcb_cee* %3) #0 {
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qlcnic_dcb_param*, align 8
  %8 = alloca %struct.qlcnic_dcb_cee*, align 8
  %9 = alloca %struct.qlcnic_dcb_app*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.dcb_app, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.qlcnic_dcb_param* %2, %struct.qlcnic_dcb_param** %7, align 8
  store %struct.qlcnic_dcb_cee* %3, %struct.qlcnic_dcb_cee** %8, align 8
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %16 = load %struct.qlcnic_dcb_param*, %struct.qlcnic_dcb_param** %7, align 8
  %17 = getelementptr inbounds %struct.qlcnic_dcb_param, %struct.qlcnic_dcb_param* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @qlcnic_dcb_get_num_app(%struct.qlcnic_adapter* %15, i32 %20)
  store i64 %21, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %97, %4
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %100

26:                                               ; preds = %22
  %27 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %8, align 8
  %28 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %27, i32 0, i32 0
  %29 = load %struct.qlcnic_dcb_app*, %struct.qlcnic_dcb_app** %28, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds %struct.qlcnic_dcb_app, %struct.qlcnic_dcb_app* %29, i64 %30
  store %struct.qlcnic_dcb_app* %31, %struct.qlcnic_dcb_app** %9, align 8
  %32 = load %struct.qlcnic_dcb_app*, %struct.qlcnic_dcb_app** %9, align 8
  %33 = getelementptr inbounds %struct.qlcnic_dcb_app, %struct.qlcnic_dcb_app* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.qlcnic_dcb_param*, %struct.qlcnic_dcb_param** %7, align 8
  %35 = getelementptr inbounds %struct.qlcnic_dcb_param, %struct.qlcnic_dcb_param* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @QLC_DCB_GET_SELECTOR_APP(i32 %39)
  %41 = sub nsw i64 %40, 1
  %42 = load %struct.qlcnic_dcb_app*, %struct.qlcnic_dcb_app** %9, align 8
  %43 = getelementptr inbounds %struct.qlcnic_dcb_app, %struct.qlcnic_dcb_app* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  %44 = load %struct.qlcnic_dcb_app*, %struct.qlcnic_dcb_app** %9, align 8
  %45 = getelementptr inbounds %struct.qlcnic_dcb_app, %struct.qlcnic_dcb_app* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %14, i32 0, i32 2
  store i64 %46, i64* %47, align 8
  %48 = load %struct.qlcnic_dcb_param*, %struct.qlcnic_dcb_param** %7, align 8
  %49 = getelementptr inbounds %struct.qlcnic_dcb_param, %struct.qlcnic_dcb_param* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @QLC_DCB_GET_PROTO_ID_APP(i32 %53)
  %55 = load %struct.qlcnic_dcb_app*, %struct.qlcnic_dcb_app** %9, align 8
  %56 = getelementptr inbounds %struct.qlcnic_dcb_app, %struct.qlcnic_dcb_app* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.qlcnic_dcb_app*, %struct.qlcnic_dcb_app** %9, align 8
  %58 = getelementptr inbounds %struct.qlcnic_dcb_app, %struct.qlcnic_dcb_app* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %14, i32 0, i32 1
  store i32 %59, i32* %60, align 8
  %61 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %62 = load %struct.qlcnic_dcb_param*, %struct.qlcnic_dcb_param** %7, align 8
  %63 = getelementptr inbounds %struct.qlcnic_dcb_param, %struct.qlcnic_dcb_param* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @qlcnic_dcb_get_prio_map_app(%struct.qlcnic_adapter* %61, i32 %67)
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i64 @qlcnic_dcb_prio_count(i64 %69)
  store i64 %70, i64* %13, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* @QLC_DCB_MAX_TC, align 8
  %73 = icmp uge i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %26
  store i64 0, i64* %13, align 8
  br label %75

75:                                               ; preds = %74, %26
  %76 = load i64, i64* %13, align 8
  %77 = load %struct.qlcnic_dcb_app*, %struct.qlcnic_dcb_app** %9, align 8
  %78 = getelementptr inbounds %struct.qlcnic_dcb_app, %struct.qlcnic_dcb_app* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load i64, i64* %13, align 8
  %80 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %14, i32 0, i32 0
  store i64 %79, i64* %80, align 8
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* @QLC_DCB_OPER_IDX, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %75
  %85 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %86 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %93 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = call i32 @dcb_setapp(%struct.TYPE_2__* %94, %struct.dcb_app* %14)
  br label %96

96:                                               ; preds = %91, %84, %75
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %10, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %10, align 8
  br label %22

100:                                              ; preds = %22
  ret void
}

declare dso_local i64 @qlcnic_dcb_get_num_app(%struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @QLC_DCB_GET_SELECTOR_APP(i32) #1

declare dso_local i32 @QLC_DCB_GET_PROTO_ID_APP(i32) #1

declare dso_local i64 @qlcnic_dcb_get_prio_map_app(%struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @qlcnic_dcb_prio_count(i64) #1

declare dso_local i32 @dcb_setapp(%struct.TYPE_2__*, %struct.dcb_app*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
