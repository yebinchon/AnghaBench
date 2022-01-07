; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ucan_priv = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.urb = type { i32 }

@UCAN_MAX_RX_URBS = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LOOPBACK = common dso_local global i32 0, align 4
@UCAN_MODE_LOOPBACK = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@UCAN_MODE_SILENT = common dso_local global i32 0, align 4
@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@UCAN_MODE_3_SAMPLES = common dso_local global i32 0, align 4
@CAN_CTRLMODE_ONE_SHOT = common dso_local global i32 0, align 4
@UCAN_MODE_ONE_SHOT = common dso_local global i32 0, align 4
@UCAN_MODE_BERR_REPORT = common dso_local global i32 0, align 4
@UCAN_COMMAND_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not start device, code: %d\0A\00", align 1
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@UCAN_COMMAND_STOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"could not stop device, code: %d\0A\00", align 1
@UCAN_COMMAND_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"could not reset device, code: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ucan_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucan_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ucan_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %11 = load i32, i32* @UCAN_MAX_RX_URBS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca %struct.urb*, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call %struct.ucan_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.ucan_priv* %16, %struct.ucan_priv** %9, align 8
  %17 = load %struct.ucan_priv*, %struct.ucan_priv** %9, align 8
  %18 = call i32 @ucan_alloc_context_array(%struct.ucan_priv* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %150

23:                                               ; preds = %1
  %24 = load %struct.ucan_priv*, %struct.ucan_priv** %9, align 8
  %25 = call i32 @ucan_prepare_and_anchor_rx_urbs(%struct.ucan_priv* %24, %struct.urb** %14)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %146

29:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  %30 = load %struct.ucan_priv*, %struct.ucan_priv** %9, align 8
  %31 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CAN_CTRLMODE_LOOPBACK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32, i32* @UCAN_MODE_LOOPBACK, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %29
  %42 = load %struct.ucan_priv*, %struct.ucan_priv** %9, align 8
  %43 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i32, i32* @UCAN_MODE_SILENT, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %41
  %54 = load %struct.ucan_priv*, %struct.ucan_priv** %9, align 8
  %55 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i32, i32* @UCAN_MODE_3_SAMPLES, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %53
  %66 = load %struct.ucan_priv*, %struct.ucan_priv** %9, align 8
  %67 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @CAN_CTRLMODE_ONE_SHOT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i32, i32* @UCAN_MODE_ONE_SHOT, align 4
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %73, %65
  %78 = load i32, i32* @UCAN_MODE_BERR_REPORT, align 4
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @cpu_to_le16(i32 %81)
  %83 = load %struct.ucan_priv*, %struct.ucan_priv** %9, align 8
  %84 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %83, i32 0, i32 2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %82, i32* %87, align 4
  %88 = load %struct.ucan_priv*, %struct.ucan_priv** %9, align 8
  %89 = load i32, i32* @UCAN_COMMAND_START, align 4
  %90 = call i32 @ucan_ctrl_command_out(%struct.ucan_priv* %88, i32 %89, i32 0, i32 2)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %77
  %94 = load %struct.ucan_priv*, %struct.ucan_priv** %9, align 8
  %95 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @netdev_err(i32 %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %97)
  br label %131

99:                                               ; preds = %77
  %100 = load %struct.net_device*, %struct.net_device** %3, align 8
  %101 = call i32 @open_candev(%struct.net_device* %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %118

105:                                              ; preds = %99
  %106 = load %struct.ucan_priv*, %struct.ucan_priv** %9, align 8
  %107 = call i32 @ucan_submit_rx_urbs(%struct.ucan_priv* %106, %struct.urb** %14)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %118

111:                                              ; preds = %105
  %112 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %113 = load %struct.ucan_priv*, %struct.ucan_priv** %9, align 8
  %114 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 4
  %116 = load %struct.net_device*, %struct.net_device** %3, align 8
  %117 = call i32 @netif_start_queue(%struct.net_device* %116)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %150

118:                                              ; preds = %110, %104
  %119 = load %struct.ucan_priv*, %struct.ucan_priv** %9, align 8
  %120 = load i32, i32* @UCAN_COMMAND_STOP, align 4
  %121 = call i32 @ucan_ctrl_command_out(%struct.ucan_priv* %119, i32 %120, i32 0, i32 0)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load %struct.ucan_priv*, %struct.ucan_priv** %9, align 8
  %126 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @netdev_err(i32 %127, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %124, %118
  br label %131

131:                                              ; preds = %130, %93
  %132 = load %struct.ucan_priv*, %struct.ucan_priv** %9, align 8
  %133 = load i32, i32* @UCAN_COMMAND_RESET, align 4
  %134 = call i32 @ucan_ctrl_command_out(%struct.ucan_priv* %132, i32 %133, i32 0, i32 0)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = load %struct.ucan_priv*, %struct.ucan_priv** %9, align 8
  %139 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @netdev_err(i32 %140, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %137, %131
  %144 = load %struct.ucan_priv*, %struct.ucan_priv** %9, align 8
  %145 = call i32 @ucan_cleanup_rx_urbs(%struct.ucan_priv* %144, %struct.urb** %14)
  br label %146

146:                                              ; preds = %143, %28
  %147 = load %struct.ucan_priv*, %struct.ucan_priv** %9, align 8
  %148 = call i32 @ucan_release_context_array(%struct.ucan_priv* %147)
  %149 = load i32, i32* %4, align 4
  store i32 %149, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %150

150:                                              ; preds = %146, %111, %21
  %151 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ucan_priv* @netdev_priv(%struct.net_device*) #2

declare dso_local i32 @ucan_alloc_context_array(%struct.ucan_priv*) #2

declare dso_local i32 @ucan_prepare_and_anchor_rx_urbs(%struct.ucan_priv*, %struct.urb**) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @ucan_ctrl_command_out(%struct.ucan_priv*, i32, i32, i32) #2

declare dso_local i32 @netdev_err(i32, i8*, i32) #2

declare dso_local i32 @open_candev(%struct.net_device*) #2

declare dso_local i32 @ucan_submit_rx_urbs(%struct.ucan_priv*, %struct.urb**) #2

declare dso_local i32 @netif_start_queue(%struct.net_device*) #2

declare dso_local i32 @ucan_cleanup_rx_urbs(%struct.ucan_priv*, %struct.urb**) #2

declare dso_local i32 @ucan_release_context_array(%struct.ucan_priv*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
