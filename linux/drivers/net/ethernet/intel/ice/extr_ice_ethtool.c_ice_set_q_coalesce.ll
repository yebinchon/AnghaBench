; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_set_q_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_set_q_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, i32, %struct.TYPE_8__**, %struct.TYPE_6__** }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ethtool_coalesce = type { i32 }

@ICE_RX_CONTAINER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ICE_TX_CONTAINER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vsi*, %struct.ethtool_coalesce*, i32)* @ice_set_q_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_set_q_coalesce(%struct.ice_vsi* %0, %struct.ethtool_coalesce* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ice_vsi*, align 8
  %6 = alloca %struct.ethtool_coalesce*, align 8
  %7 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %5, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %10 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %58

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %16 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %58

19:                                               ; preds = %13
  %20 = load i32, i32* @ICE_RX_CONTAINER, align 4
  %21 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %22 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %23 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %22, i32 0, i32 3
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %24, i64 %26
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %33 = call i64 @ice_set_rc_coalesce(i32 %20, %struct.ethtool_coalesce* %21, i32* %31, %struct.ice_vsi* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %19
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %116

38:                                               ; preds = %19
  %39 = load i32, i32* @ICE_TX_CONTAINER, align 4
  %40 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %41 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %42 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %41, i32 0, i32 2
  %43 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %43, i64 %45
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %52 = call i64 @ice_set_rc_coalesce(i32 %39, %struct.ethtool_coalesce* %40, i32* %50, %struct.ice_vsi* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %38
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %116

57:                                               ; preds = %38
  br label %115

58:                                               ; preds = %13, %3
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %61 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %58
  %65 = load i32, i32* @ICE_RX_CONTAINER, align 4
  %66 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %67 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %68 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %67, i32 0, i32 3
  %69 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %69, i64 %71
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %78 = call i64 @ice_set_rc_coalesce(i32 %65, %struct.ethtool_coalesce* %66, i32* %76, %struct.ice_vsi* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %64
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %116

83:                                               ; preds = %64
  br label %114

84:                                               ; preds = %58
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %87 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %110

90:                                               ; preds = %84
  %91 = load i32, i32* @ICE_TX_CONTAINER, align 4
  %92 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %93 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %94 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %93, i32 0, i32 2
  %95 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %95, i64 %97
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %104 = call i64 @ice_set_rc_coalesce(i32 %91, %struct.ethtool_coalesce* %92, i32* %102, %struct.ice_vsi* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %90
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %116

109:                                              ; preds = %90
  br label %113

110:                                              ; preds = %84
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %116

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %113, %83
  br label %115

115:                                              ; preds = %114, %57
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %110, %106, %80, %54, %35
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i64 @ice_set_rc_coalesce(i32, %struct.ethtool_coalesce*, i32*, %struct.ice_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
