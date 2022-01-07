; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_device_begin_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_device_begin_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_device = type { i32, i32*, %struct.TYPE_8__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@VXGE_HW_OK = common dso_local global i32 0, align 4
@VXGE_HW_ERR_WRONG_IRQ = common dso_local global i32 0, align 4
@VXGE_HW_ALL_FOXES = common dso_local global i64 0, align 8
@NULL_VPID = common dso_local global i32 0, align 4
@VXGE_HW_EVENT_SLOT_FREEZE = common dso_local global i32 0, align 4
@VXGE_HW_ERR_SLOT_FREEZE = common dso_local global i32 0, align 4
@VXGE_HW_MAX_VIRTUAL_PATHS = common dso_local global i32 0, align 4
@VXGE_HW_TITAN_GENERAL_INT_STATUS_VPATH_ALARM_INT = common dso_local global i64 0, align 8
@VXGE_HW_ERR_CRITICAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vxge_hw_device_begin_irq(%struct.__vxge_hw_device* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.__vxge_hw_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.__vxge_hw_device* %0, %struct.__vxge_hw_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %14 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %5, align 8
  %16 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %15, i32 0, i32 3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = call i64 @readq(i32* %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i64*, i64** %7, align 8
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @VXGE_HW_ERR_WRONG_IRQ, align 4
  store i32 %28, i32* %12, align 4
  br label %148

29:                                               ; preds = %3
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @VXGE_HW_ALL_FOXES, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %29
  %37 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %5, align 8
  %38 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %37, i32 0, i32 3
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = call i64 @readq(i32* %40)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @VXGE_HW_ALL_FOXES, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %5, align 8
  %47 = load i32, i32* @NULL_VPID, align 4
  %48 = load i32, i32* @VXGE_HW_EVENT_SLOT_FREEZE, align 4
  %49 = call i32 @__vxge_hw_device_handle_error(%struct.__vxge_hw_device* %46, i32 %47, i32 %48)
  %50 = load i64*, i64** %7, align 8
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @VXGE_HW_ERR_SLOT_FREEZE, align 4
  store i32 %51, i32* %12, align 4
  br label %148

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52, %29
  %54 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %5, align 8
  %55 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load i64, i64* %9, align 8
  %61 = load i64*, i64** %7, align 8
  store i64 %60, i64* %61, align 8
  %62 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %5, align 8
  %63 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @VXGE_HW_MAX_VIRTUAL_PATHS, align 4
  %66 = sub nsw i32 64, %65
  %67 = ashr i32 %64, %66
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i64 @VXGE_HW_TITAN_GENERAL_INT_STATUS_VPATH_TRAFFIC_INT(i64 %70)
  %72 = and i64 %69, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %53
  %75 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %5, align 8
  %76 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %81, i32* %4, align 4
  br label %150

82:                                               ; preds = %53
  %83 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %5, align 8
  %84 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* @VXGE_HW_TITAN_GENERAL_INT_STATUS_VPATH_ALARM_INT, align 8
  %91 = and i64 %89, %90
  %92 = trunc i64 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %147

95:                                               ; preds = %82
  %96 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %96, i32* %13, align 4
  %97 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %5, align 8
  %98 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %142, %95
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @VXGE_HW_MAX_VIRTUAL_PATHS, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %145

107:                                              ; preds = %103
  %108 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %5, align 8
  %109 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @vxge_mBIT(i32 %111)
  %113 = and i32 %110, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %107
  br label %142

116:                                              ; preds = %107
  %117 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %5, align 8
  %118 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @__vxge_hw_vpath_alarm_process(i32* %122, i32 %123)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @VXGE_HW_SET_LEVEL(i32 %125, i32 %126)
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @VXGE_HW_ERR_CRITICAL, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %135, label %131

131:                                              ; preds = %116
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @VXGE_HW_ERR_SLOT_FREEZE, align 4
  %134 = icmp eq i32 %132, %133
  br label %135

135:                                              ; preds = %131, %116
  %136 = phi i1 [ true, %116 ], [ %134, %131 ]
  %137 = zext i1 %136 to i32
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %145

141:                                              ; preds = %135
  br label %142

142:                                              ; preds = %141, %115
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %103

145:                                              ; preds = %140, %103
  %146 = load i32, i32* %13, align 4
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %145, %82
  br label %148

148:                                              ; preds = %147, %45, %26
  %149 = load i32, i32* %12, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %148, %74
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i64 @readq(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__vxge_hw_device_handle_error(%struct.__vxge_hw_device*, i32, i32) #1

declare dso_local i64 @VXGE_HW_TITAN_GENERAL_INT_STATUS_VPATH_TRAFFIC_INT(i64) #1

declare dso_local i32 @vxge_mBIT(i32) #1

declare dso_local i32 @__vxge_hw_vpath_alarm_process(i32*, i32) #1

declare dso_local i32 @VXGE_HW_SET_LEVEL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
