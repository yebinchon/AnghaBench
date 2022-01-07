; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_parse_device_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_parse_device_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucan_priv = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_5__ = type { i32, %struct.can_bittiming_const }
%struct.can_bittiming_const = type { i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.ucan_ctl_cmd_device_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"ucan\00", align 1
@UCAN_MODE_LOOPBACK = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LOOPBACK = common dso_local global i32 0, align 4
@UCAN_MODE_SILENT = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@UCAN_MODE_3_SAMPLES = common dso_local global i32 0, align 4
@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@UCAN_MODE_ONE_SHOT = common dso_local global i32 0, align 4
@CAN_CTRLMODE_ONE_SHOT = common dso_local global i32 0, align 4
@UCAN_MODE_BERR_REPORT = common dso_local global i32 0, align 4
@CAN_CTRLMODE_BERR_REPORTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucan_priv*, %struct.ucan_ctl_cmd_device_info*)* @ucan_parse_device_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucan_parse_device_info(%struct.ucan_priv* %0, %struct.ucan_ctl_cmd_device_info* %1) #0 {
  %3 = alloca %struct.ucan_priv*, align 8
  %4 = alloca %struct.ucan_ctl_cmd_device_info*, align 8
  %5 = alloca %struct.can_bittiming_const*, align 8
  %6 = alloca i32, align 4
  store %struct.ucan_priv* %0, %struct.ucan_priv** %3, align 8
  store %struct.ucan_ctl_cmd_device_info* %1, %struct.ucan_ctl_cmd_device_info** %4, align 8
  %7 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store %struct.can_bittiming_const* %9, %struct.can_bittiming_const** %5, align 8
  %10 = load %struct.ucan_ctl_cmd_device_info*, %struct.ucan_ctl_cmd_device_info** %4, align 8
  %11 = getelementptr inbounds %struct.ucan_ctl_cmd_device_info, %struct.ucan_ctl_cmd_device_info* %10, i32 0, i32 10
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @le32_to_cpu(i32 %12)
  %14 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %15 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i8* %13, i8** %17, align 8
  %18 = load %struct.ucan_ctl_cmd_device_info*, %struct.ucan_ctl_cmd_device_info** %4, align 8
  %19 = getelementptr inbounds %struct.ucan_ctl_cmd_device_info, %struct.ucan_ctl_cmd_device_info* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %22 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %5, align 8
  %25 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strcpy(i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.ucan_ctl_cmd_device_info*, %struct.ucan_ctl_cmd_device_info** %4, align 8
  %29 = getelementptr inbounds %struct.ucan_ctl_cmd_device_info, %struct.ucan_ctl_cmd_device_info* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %5, align 8
  %32 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ucan_ctl_cmd_device_info*, %struct.ucan_ctl_cmd_device_info** %4, align 8
  %34 = getelementptr inbounds %struct.ucan_ctl_cmd_device_info, %struct.ucan_ctl_cmd_device_info* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %5, align 8
  %37 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ucan_ctl_cmd_device_info*, %struct.ucan_ctl_cmd_device_info** %4, align 8
  %39 = getelementptr inbounds %struct.ucan_ctl_cmd_device_info, %struct.ucan_ctl_cmd_device_info* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %5, align 8
  %42 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ucan_ctl_cmd_device_info*, %struct.ucan_ctl_cmd_device_info** %4, align 8
  %44 = getelementptr inbounds %struct.ucan_ctl_cmd_device_info, %struct.ucan_ctl_cmd_device_info* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %5, align 8
  %47 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ucan_ctl_cmd_device_info*, %struct.ucan_ctl_cmd_device_info** %4, align 8
  %49 = getelementptr inbounds %struct.ucan_ctl_cmd_device_info, %struct.ucan_ctl_cmd_device_info* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %5, align 8
  %52 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ucan_ctl_cmd_device_info*, %struct.ucan_ctl_cmd_device_info** %4, align 8
  %54 = getelementptr inbounds %struct.ucan_ctl_cmd_device_info, %struct.ucan_ctl_cmd_device_info* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @le32_to_cpu(i32 %55)
  %57 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %5, align 8
  %58 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.ucan_ctl_cmd_device_info*, %struct.ucan_ctl_cmd_device_info** %4, align 8
  %60 = getelementptr inbounds %struct.ucan_ctl_cmd_device_info, %struct.ucan_ctl_cmd_device_info* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @le32_to_cpu(i32 %61)
  %63 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %5, align 8
  %64 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.ucan_ctl_cmd_device_info*, %struct.ucan_ctl_cmd_device_info** %4, align 8
  %66 = getelementptr inbounds %struct.ucan_ctl_cmd_device_info, %struct.ucan_ctl_cmd_device_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @le16_to_cpu(i32 %67)
  %69 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %5, align 8
  %70 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load %struct.ucan_ctl_cmd_device_info*, %struct.ucan_ctl_cmd_device_info** %4, align 8
  %72 = getelementptr inbounds %struct.ucan_ctl_cmd_device_info, %struct.ucan_ctl_cmd_device_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @le16_to_cpu(i32 %73)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %6, align 4
  %76 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %77 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @UCAN_MODE_LOOPBACK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %2
  %84 = load i32, i32* @CAN_CTRLMODE_LOOPBACK, align 4
  %85 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %86 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %84
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %83, %2
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @UCAN_MODE_SILENT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %97 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %98 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %95, %90
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @UCAN_MODE_3_SAMPLES, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %109 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %110 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %108
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %107, %102
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @UCAN_MODE_ONE_SHOT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load i32, i32* @CAN_CTRLMODE_ONE_SHOT, align 4
  %121 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %122 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %120
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %119, %114
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @UCAN_MODE_BERR_REPORT, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  %132 = load i32, i32* @CAN_CTRLMODE_BERR_REPORTING, align 4
  %133 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %134 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %132
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %131, %126
  ret void
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
