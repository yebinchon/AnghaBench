; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_gs_usb.c_gs_update_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_gs_usb.c_gs_update_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_can = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, %struct.can_device_stats }
%struct.can_device_stats = type { i32, i32, i32, i32 }
%struct.can_frame = type { i32, i32* }

@CAN_ERR_RESTARTED = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i8* null, align 8
@CAN_ERR_BUSOFF = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i8* null, align 8
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_WARNING = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_WARNING = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_WARNING = common dso_local global i8* null, align 8
@CAN_ERR_CRTL_TX_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_PASSIVE = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_PASSIVE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gs_can*, %struct.can_frame*)* @gs_update_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gs_update_state(%struct.gs_can* %0, %struct.can_frame* %1) #0 {
  %3 = alloca %struct.gs_can*, align 8
  %4 = alloca %struct.can_frame*, align 8
  %5 = alloca %struct.can_device_stats*, align 8
  store %struct.gs_can* %0, %struct.gs_can** %3, align 8
  store %struct.can_frame* %1, %struct.can_frame** %4, align 8
  %6 = load %struct.gs_can*, %struct.gs_can** %3, align 8
  %7 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store %struct.can_device_stats* %8, %struct.can_device_stats** %5, align 8
  %9 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %10 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @CAN_ERR_RESTARTED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load i8*, i8** @CAN_STATE_ERROR_ACTIVE, align 8
  %17 = load %struct.gs_can*, %struct.gs_can** %3, align 8
  %18 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i8* %16, i8** %19, align 8
  %20 = load %struct.can_device_stats*, %struct.can_device_stats** %5, align 8
  %21 = getelementptr inbounds %struct.can_device_stats, %struct.can_device_stats* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %110

24:                                               ; preds = %2
  %25 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %26 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CAN_ERR_BUSOFF, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load i8*, i8** @CAN_STATE_BUS_OFF, align 8
  %33 = load %struct.gs_can*, %struct.gs_can** %3, align 8
  %34 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  %36 = load %struct.can_device_stats*, %struct.can_device_stats** %5, align 8
  %37 = getelementptr inbounds %struct.can_device_stats, %struct.can_device_stats* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %109

40:                                               ; preds = %24
  %41 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %42 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @CAN_ERR_CRTL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %108

47:                                               ; preds = %40
  %48 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %49 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CAN_ERR_CRTL_TX_WARNING, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %47
  %57 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %58 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CAN_ERR_CRTL_RX_WARNING, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %56, %47
  %66 = load i8*, i8** @CAN_STATE_ERROR_WARNING, align 8
  %67 = load %struct.gs_can*, %struct.gs_can** %3, align 8
  %68 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i8* %66, i8** %69, align 8
  %70 = load %struct.can_device_stats*, %struct.can_device_stats** %5, align 8
  %71 = getelementptr inbounds %struct.can_device_stats, %struct.can_device_stats* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %107

74:                                               ; preds = %56
  %75 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %76 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @CAN_ERR_CRTL_TX_PASSIVE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %74
  %84 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %85 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @CAN_ERR_CRTL_RX_PASSIVE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %83, %74
  %93 = load i8*, i8** @CAN_STATE_ERROR_PASSIVE, align 8
  %94 = load %struct.gs_can*, %struct.gs_can** %3, align 8
  %95 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i8* %93, i8** %96, align 8
  %97 = load %struct.can_device_stats*, %struct.can_device_stats** %5, align 8
  %98 = getelementptr inbounds %struct.can_device_stats, %struct.can_device_stats* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %106

101:                                              ; preds = %83
  %102 = load i8*, i8** @CAN_STATE_ERROR_ACTIVE, align 8
  %103 = load %struct.gs_can*, %struct.gs_can** %3, align 8
  %104 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i8* %102, i8** %105, align 8
  br label %106

106:                                              ; preds = %101, %92
  br label %107

107:                                              ; preds = %106, %65
  br label %108

108:                                              ; preds = %107, %40
  br label %109

109:                                              ; preds = %108, %31
  br label %110

110:                                              ; preds = %109, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
