; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_dcb_cee_peer_get_pg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_dcb_cee_peer_get_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cee_pg = type { i64*, i32* }
%struct.qlcnic_adapter = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.qlcnic_dcb_cee* }
%struct.qlcnic_dcb_cee = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }

@QLCNIC_DCB_STATE = common dso_local global i32 0, align 4
@QLC_DCB_PEER_IDX = common dso_local global i64 0, align 8
@QLC_DCB_MAX_PG = common dso_local global i64 0, align 8
@QLC_DCB_MAX_TC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.cee_pg*)* @qlcnic_dcb_cee_peer_get_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_dcb_cee_peer_get_pg(%struct.net_device* %0, %struct.cee_pg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.cee_pg*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.qlcnic_dcb_cee*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.cee_pg* %1, %struct.cee_pg** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.qlcnic_adapter* %13, %struct.qlcnic_adapter** %6, align 8
  %14 = load i32, i32* @QLCNIC_DCB_STATE, align 4
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = call i32 @test_bit(i32 %14, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %106

22:                                               ; preds = %2
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %24 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %28, align 8
  %30 = load i64, i64* @QLC_DCB_PEER_IDX, align 8
  %31 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %29, i64 %30
  store %struct.qlcnic_dcb_cee* %31, %struct.qlcnic_dcb_cee** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %32

32:                                               ; preds = %102, %22
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @QLC_DCB_MAX_PG, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %105

36:                                               ; preds = %32
  %37 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %7, align 8
  %38 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %102

46:                                               ; preds = %36
  %47 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %7, align 8
  %48 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cee_pg*, %struct.cee_pg** %5, align 8
  %55 = getelementptr inbounds %struct.cee_pg, %struct.cee_pg* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 %53, i32* %58, align 4
  store i64 0, i64* %10, align 8
  br label %59

59:                                               ; preds = %98, %46
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @QLC_DCB_MAX_TC, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %101

63:                                               ; preds = %59
  %64 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %7, align 8
  %65 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %63
  %73 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %7, align 8
  %74 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %72
  %83 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %7, align 8
  %84 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load %struct.cee_pg*, %struct.cee_pg** %5, align 8
  %92 = getelementptr inbounds %struct.cee_pg, %struct.cee_pg* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* %9, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %9, align 8
  %96 = getelementptr inbounds i64, i64* %93, i64 %94
  store i64 %90, i64* %96, align 8
  br label %101

97:                                               ; preds = %72, %63
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %10, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %10, align 8
  br label %59

101:                                              ; preds = %82, %59
  br label %102

102:                                              ; preds = %101, %45
  %103 = load i64, i64* %8, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %8, align 8
  br label %32

105:                                              ; preds = %32
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %21
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
