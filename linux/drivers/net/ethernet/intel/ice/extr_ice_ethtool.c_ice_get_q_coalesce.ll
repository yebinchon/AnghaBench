; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_get_q_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_get_q_coalesce.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vsi*, %struct.ethtool_coalesce*, i32)* @ice_get_q_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_get_q_coalesce(%struct.ice_vsi* %0, %struct.ethtool_coalesce* %1, i32 %2) #0 {
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
  br i1 %12, label %13, label %56

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %16 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %13
  %20 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %21 = load i32, i32* @ICE_RX_CONTAINER, align 4
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
  %32 = call i64 @ice_get_rc_coalesce(%struct.ethtool_coalesce* %20, i32 %21, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %19
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %112

37:                                               ; preds = %19
  %38 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %39 = load i32, i32* @ICE_TX_CONTAINER, align 4
  %40 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %41 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %40, i32 0, i32 2
  %42 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %42, i64 %44
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = call i64 @ice_get_rc_coalesce(%struct.ethtool_coalesce* %38, i32 %39, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %37
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %112

55:                                               ; preds = %37
  br label %111

56:                                               ; preds = %13, %3
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %59 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %56
  %63 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %64 = load i32, i32* @ICE_RX_CONTAINER, align 4
  %65 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %66 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %65, i32 0, i32 3
  %67 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %67, i64 %69
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = call i64 @ice_get_rc_coalesce(%struct.ethtool_coalesce* %63, i32 %64, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %62
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %112

80:                                               ; preds = %62
  br label %110

81:                                               ; preds = %56
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %84 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %81
  %88 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %89 = load i32, i32* @ICE_TX_CONTAINER, align 4
  %90 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %91 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %90, i32 0, i32 2
  %92 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %92, i64 %94
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = call i64 @ice_get_rc_coalesce(%struct.ethtool_coalesce* %88, i32 %89, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %87
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %112

105:                                              ; preds = %87
  br label %109

106:                                              ; preds = %81
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %112

109:                                              ; preds = %105
  br label %110

110:                                              ; preds = %109, %80
  br label %111

111:                                              ; preds = %110, %55
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %106, %102, %77, %52, %34
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i64 @ice_get_rc_coalesce(%struct.ethtool_coalesce*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
