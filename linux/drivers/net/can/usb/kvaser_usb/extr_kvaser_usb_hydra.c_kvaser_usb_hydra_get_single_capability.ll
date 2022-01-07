; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_get_single_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_get_single_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { i32, %struct.TYPE_10__*, %struct.kvaser_usb_dev_card_data }
%struct.TYPE_10__ = type { i32 }
%struct.kvaser_usb_dev_card_data = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.kvaser_cmd = type { %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_GET_CAPABILITIES_REQ = common dso_local global i32 0, align 4
@CMD_GET_CAPABILITIES_RESP = common dso_local global i32 0, align 4
@KVASER_USB_HYDRA_CAP_STAT_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unknown capability command %u\0A\00", align 1
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@KVASER_USB_CAP_BERR_CAP = common dso_local global i32 0, align 4
@CAN_CTRLMODE_ONE_SHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_usb*, i32, i32*)* @kvaser_usb_hydra_get_single_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_hydra_get_single_capability(%struct.kvaser_usb* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvaser_usb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kvaser_usb_dev_card_data*, align 8
  %9 = alloca %struct.kvaser_cmd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load %struct.kvaser_usb*, %struct.kvaser_usb** %5, align 8
  %16 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %15, i32 0, i32 2
  store %struct.kvaser_usb_dev_card_data* %16, %struct.kvaser_usb_dev_card_data** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.kvaser_cmd* @kcalloc(i32 1, i32 24, i32 %17)
  store %struct.kvaser_cmd* %18, %struct.kvaser_cmd** %9, align 8
  %19 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %9, align 8
  %20 = icmp ne %struct.kvaser_cmd* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %142

24:                                               ; preds = %3
  %25 = load i32, i32* @CMD_GET_CAPABILITIES_REQ, align 4
  %26 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %9, align 8
  %27 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @cpu_to_le16(i32 %29)
  %31 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %9, align 8
  %32 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %9, align 8
  %35 = load %struct.kvaser_usb_dev_card_data*, %struct.kvaser_usb_dev_card_data** %8, align 8
  %36 = getelementptr inbounds %struct.kvaser_usb_dev_card_data, %struct.kvaser_usb_dev_card_data* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @kvaser_usb_hydra_set_cmd_dest_he(%struct.kvaser_cmd* %34, i32 %38)
  %40 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %9, align 8
  %41 = load %struct.kvaser_usb*, %struct.kvaser_usb** %5, align 8
  %42 = call i32 @kvaser_usb_hydra_get_next_transid(%struct.kvaser_usb* %41)
  %43 = call i32 @kvaser_usb_hydra_set_cmd_transid(%struct.kvaser_cmd* %40, i32 %42)
  %44 = load %struct.kvaser_usb*, %struct.kvaser_usb** %5, align 8
  %45 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %9, align 8
  %46 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %9, align 8
  %47 = call i32 @kvaser_usb_hydra_cmd_size(%struct.kvaser_cmd* %46)
  %48 = call i32 @kvaser_usb_send_cmd(%struct.kvaser_usb* %44, %struct.kvaser_cmd* %45, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %24
  br label %138

52:                                               ; preds = %24
  %53 = load %struct.kvaser_usb*, %struct.kvaser_usb** %5, align 8
  %54 = load i32, i32* @CMD_GET_CAPABILITIES_RESP, align 4
  %55 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %9, align 8
  %56 = call i32 @kvaser_usb_hydra_wait_cmd(%struct.kvaser_usb* %53, i32 %54, %struct.kvaser_cmd* %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %138

60:                                               ; preds = %52
  %61 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %9, align 8
  %62 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le16_to_cpu(i32 %64)
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @KVASER_USB_HYDRA_CAP_STAT_OK, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %138

72:                                               ; preds = %60
  %73 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %9, align 8
  %74 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le16_to_cpu(i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  switch i32 %78, label %90 [
    i32 129, label %79
    i32 130, label %79
    i32 128, label %79
  ]

79:                                               ; preds = %72, %72, %72
  %80 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %9, align 8
  %81 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @le32_to_cpu(i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %9, align 8
  %86 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le32_to_cpu(i32 %88)
  store i32 %89, i32* %11, align 4
  br label %97

90:                                               ; preds = %72
  %91 = load %struct.kvaser_usb*, %struct.kvaser_usb** %5, align 8
  %92 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %91, i32 0, i32 1
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @dev_warn(i32* %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %90, %79
  store i32 0, i32* %14, align 4
  br label %98

98:                                               ; preds = %134, %97
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.kvaser_usb*, %struct.kvaser_usb** %5, align 8
  %101 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %137

104:                                              ; preds = %98
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @BIT(i32 %105)
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %11, align 4
  %109 = and i32 %107, %108
  %110 = and i32 %106, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %133

112:                                              ; preds = %104
  %113 = load i32, i32* %12, align 4
  switch i32 %113, label %132 [
    i32 129, label %114
    i32 130, label %120
    i32 128, label %126
  ]

114:                                              ; preds = %112
  %115 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %116 = load %struct.kvaser_usb_dev_card_data*, %struct.kvaser_usb_dev_card_data** %8, align 8
  %117 = getelementptr inbounds %struct.kvaser_usb_dev_card_data, %struct.kvaser_usb_dev_card_data* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %132

120:                                              ; preds = %112
  %121 = load i32, i32* @KVASER_USB_CAP_BERR_CAP, align 4
  %122 = load %struct.kvaser_usb_dev_card_data*, %struct.kvaser_usb_dev_card_data** %8, align 8
  %123 = getelementptr inbounds %struct.kvaser_usb_dev_card_data, %struct.kvaser_usb_dev_card_data* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %132

126:                                              ; preds = %112
  %127 = load i32, i32* @CAN_CTRLMODE_ONE_SHOT, align 4
  %128 = load %struct.kvaser_usb_dev_card_data*, %struct.kvaser_usb_dev_card_data** %8, align 8
  %129 = getelementptr inbounds %struct.kvaser_usb_dev_card_data, %struct.kvaser_usb_dev_card_data* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %112, %126, %120, %114
  br label %133

133:                                              ; preds = %132, %104
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %14, align 4
  br label %98

137:                                              ; preds = %98
  br label %138

138:                                              ; preds = %137, %71, %59, %51
  %139 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %9, align 8
  %140 = call i32 @kfree(%struct.kvaser_cmd* %139)
  %141 = load i32, i32* %13, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %138, %21
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local %struct.kvaser_cmd* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @kvaser_usb_hydra_set_cmd_dest_he(%struct.kvaser_cmd*, i32) #1

declare dso_local i32 @kvaser_usb_hydra_set_cmd_transid(%struct.kvaser_cmd*, i32) #1

declare dso_local i32 @kvaser_usb_hydra_get_next_transid(%struct.kvaser_usb*) #1

declare dso_local i32 @kvaser_usb_send_cmd(%struct.kvaser_usb*, %struct.kvaser_cmd*, i32) #1

declare dso_local i32 @kvaser_usb_hydra_cmd_size(%struct.kvaser_cmd*) #1

declare dso_local i32 @kvaser_usb_hydra_wait_cmd(%struct.kvaser_usb*, i32, %struct.kvaser_cmd*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @kfree(%struct.kvaser_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
