; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_get_software_details.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_get_software_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { i32*, %struct.TYPE_8__*, i8*, %struct.kvaser_usb_dev_card_data }
%struct.TYPE_8__ = type { i32 }
%struct.kvaser_usb_dev_card_data = type { i32, i32 }
%struct.kvaser_cmd = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_GET_SOFTWARE_DETAILS_REQ = common dso_local global i32 0, align 4
@KVASER_USB_HYDRA_HE_ADDRESS_ILLEGAL = common dso_local global i32 0, align 4
@CMD_GET_SOFTWARE_DETAILS_RESP = common dso_local global i32 0, align 4
@KVASER_USB_HYDRA_SW_FLAG_FW_BAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Bad firmware, device refuse to run!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KVASER_USB_HYDRA_SW_FLAG_FW_BETA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Beta firmware in use\0A\00", align 1
@KVASER_USB_HYDRA_SW_FLAG_EXT_CAP = common dso_local global i32 0, align 4
@KVASER_USB_CAP_EXT_CAP = common dso_local global i32 0, align 4
@KVASER_USB_HYDRA_SW_FLAG_EXT_CMD = common dso_local global i32 0, align 4
@KVASER_USB_HYDRA_CAP_EXT_CMD = common dso_local global i32 0, align 4
@KVASER_USB_HYDRA_SW_FLAG_CANFD = common dso_local global i32 0, align 4
@CAN_CTRLMODE_FD = common dso_local global i32 0, align 4
@KVASER_USB_HYDRA_SW_FLAG_NONISO = common dso_local global i32 0, align 4
@CAN_CTRLMODE_FD_NON_ISO = common dso_local global i32 0, align 4
@KVASER_USB_HYDRA_SW_FLAG_FREQ_80M = common dso_local global i32 0, align 4
@kvaser_usb_hydra_dev_cfg_kcan = common dso_local global i32 0, align 4
@kvaser_usb_hydra_dev_cfg_flexc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_usb*)* @kvaser_usb_hydra_get_software_details to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_hydra_get_software_details(%struct.kvaser_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca %struct.kvaser_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvaser_usb_dev_card_data*, align 8
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  %8 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %9 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %8, i32 0, i32 3
  store %struct.kvaser_usb_dev_card_data* %9, %struct.kvaser_usb_dev_card_data** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.kvaser_cmd* @kcalloc(i32 1, i32 16, i32 %10)
  store %struct.kvaser_cmd* %11, %struct.kvaser_cmd** %4, align 8
  %12 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %13 = icmp ne %struct.kvaser_cmd* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %145

17:                                               ; preds = %1
  %18 = load i32, i32* @CMD_GET_SOFTWARE_DETAILS_REQ, align 4
  %19 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %20 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %23 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %26 = load i32, i32* @KVASER_USB_HYDRA_HE_ADDRESS_ILLEGAL, align 4
  %27 = call i32 @kvaser_usb_hydra_set_cmd_dest_he(%struct.kvaser_cmd* %25, i32 %26)
  %28 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %29 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %30 = call i32 @kvaser_usb_hydra_get_next_transid(%struct.kvaser_usb* %29)
  %31 = call i32 @kvaser_usb_hydra_set_cmd_transid(%struct.kvaser_cmd* %28, i32 %30)
  %32 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %33 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %34 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %35 = call i32 @kvaser_usb_hydra_cmd_size(%struct.kvaser_cmd* %34)
  %36 = call i32 @kvaser_usb_send_cmd(%struct.kvaser_usb* %32, %struct.kvaser_cmd* %33, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %17
  br label %141

40:                                               ; preds = %17
  %41 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %42 = load i32, i32* @CMD_GET_SOFTWARE_DETAILS_RESP, align 4
  %43 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %44 = call i32 @kvaser_usb_hydra_wait_cmd(%struct.kvaser_usb* %41, i32 %42, %struct.kvaser_cmd* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %141

48:                                               ; preds = %40
  %49 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %50 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @le32_to_cpu(i32 %52)
  %54 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %55 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %57 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @le32_to_cpu(i32 %59)
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @KVASER_USB_HYDRA_SW_FLAG_FW_BAD, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %48
  %67 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %68 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %67, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %141

74:                                               ; preds = %48
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @KVASER_USB_HYDRA_SW_FLAG_FW_BETA, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %81 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = call i32 @dev_info(i32* %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %79, %74
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @KVASER_USB_HYDRA_SW_FLAG_EXT_CAP, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i32, i32* @KVASER_USB_CAP_EXT_CAP, align 4
  %92 = load %struct.kvaser_usb_dev_card_data*, %struct.kvaser_usb_dev_card_data** %7, align 8
  %93 = getelementptr inbounds %struct.kvaser_usb_dev_card_data, %struct.kvaser_usb_dev_card_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %90, %85
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @KVASER_USB_HYDRA_SW_FLAG_EXT_CMD, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load i32, i32* @KVASER_USB_HYDRA_CAP_EXT_CMD, align 4
  %103 = load %struct.kvaser_usb_dev_card_data*, %struct.kvaser_usb_dev_card_data** %7, align 8
  %104 = getelementptr inbounds %struct.kvaser_usb_dev_card_data, %struct.kvaser_usb_dev_card_data* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %101, %96
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @KVASER_USB_HYDRA_SW_FLAG_CANFD, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load i32, i32* @CAN_CTRLMODE_FD, align 4
  %114 = load %struct.kvaser_usb_dev_card_data*, %struct.kvaser_usb_dev_card_data** %7, align 8
  %115 = getelementptr inbounds %struct.kvaser_usb_dev_card_data, %struct.kvaser_usb_dev_card_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %112, %107
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @KVASER_USB_HYDRA_SW_FLAG_NONISO, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load i32, i32* @CAN_CTRLMODE_FD_NON_ISO, align 4
  %125 = load %struct.kvaser_usb_dev_card_data*, %struct.kvaser_usb_dev_card_data** %7, align 8
  %126 = getelementptr inbounds %struct.kvaser_usb_dev_card_data, %struct.kvaser_usb_dev_card_data* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %123, %118
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @KVASER_USB_HYDRA_SW_FLAG_FREQ_80M, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %136 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %135, i32 0, i32 0
  store i32* @kvaser_usb_hydra_dev_cfg_kcan, i32** %136, align 8
  br label %140

137:                                              ; preds = %129
  %138 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %139 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %138, i32 0, i32 0
  store i32* @kvaser_usb_hydra_dev_cfg_flexc, i32** %139, align 8
  br label %140

140:                                              ; preds = %137, %134
  br label %141

141:                                              ; preds = %140, %66, %47, %39
  %142 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %143 = call i32 @kfree(%struct.kvaser_cmd* %142)
  %144 = load i32, i32* %5, align 4
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %141, %14
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.kvaser_cmd* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kvaser_usb_hydra_set_cmd_dest_he(%struct.kvaser_cmd*, i32) #1

declare dso_local i32 @kvaser_usb_hydra_set_cmd_transid(%struct.kvaser_cmd*, i32) #1

declare dso_local i32 @kvaser_usb_hydra_get_next_transid(%struct.kvaser_usb*) #1

declare dso_local i32 @kvaser_usb_send_cmd(%struct.kvaser_usb*, %struct.kvaser_cmd*, i32) #1

declare dso_local i32 @kvaser_usb_hydra_cmd_size(%struct.kvaser_cmd*) #1

declare dso_local i32 @kvaser_usb_hydra_wait_cmd(%struct.kvaser_usb*, i32, %struct.kvaser_cmd*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @kfree(%struct.kvaser_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
