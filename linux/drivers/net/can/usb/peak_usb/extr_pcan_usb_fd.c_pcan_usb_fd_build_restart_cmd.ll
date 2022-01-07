; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_build_restart_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_build_restart_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pucan_wr_err_cnt = type { i64, i64, i8*, i8* }
%struct.pucan_command = type { i8* }
%struct.pucan_options = type { i64, i8*, i8* }

@PUCAN_CMD_WR_ERR_CNT = common dso_local global i32 0, align 4
@PUCAN_WRERRCNT_TE = common dso_local global i32 0, align 4
@PUCAN_WRERRCNT_RE = common dso_local global i32 0, align 4
@CAN_CTRLMODE_FD_NON_ISO = common dso_local global i32 0, align 4
@PUCAN_CMD_CLR_DIS_OPTION = common dso_local global i32 0, align 4
@PUCAN_CMD_SET_EN_OPTION = common dso_local global i32 0, align 4
@PUCAN_OPTION_CANDFDISO = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@PUCAN_CMD_LISTEN_ONLY_MODE = common dso_local global i32 0, align 4
@PUCAN_CMD_NORMAL_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_usb_device*, i32*)* @pcan_usb_fd_build_restart_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_fd_build_restart_cmd(%struct.peak_usb_device* %0, i32* %1) #0 {
  %3 = alloca %struct.peak_usb_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pucan_wr_err_cnt*, align 8
  %6 = alloca %struct.pucan_command*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pucan_options*, align 8
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = bitcast i32* %10 to %struct.pucan_wr_err_cnt*
  store %struct.pucan_wr_err_cnt* %11, %struct.pucan_wr_err_cnt** %5, align 8
  %12 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %13 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PUCAN_CMD_WR_ERR_CNT, align 4
  %16 = call i8* @pucan_cmd_opcode_channel(i32 %14, i32 %15)
  %17 = load %struct.pucan_wr_err_cnt*, %struct.pucan_wr_err_cnt** %5, align 8
  %18 = getelementptr inbounds %struct.pucan_wr_err_cnt, %struct.pucan_wr_err_cnt* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* @PUCAN_WRERRCNT_TE, align 4
  %20 = load i32, i32* @PUCAN_WRERRCNT_RE, align 4
  %21 = or i32 %19, %20
  %22 = call i8* @cpu_to_le16(i32 %21)
  %23 = load %struct.pucan_wr_err_cnt*, %struct.pucan_wr_err_cnt** %5, align 8
  %24 = getelementptr inbounds %struct.pucan_wr_err_cnt, %struct.pucan_wr_err_cnt* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.pucan_wr_err_cnt*, %struct.pucan_wr_err_cnt** %5, align 8
  %26 = getelementptr inbounds %struct.pucan_wr_err_cnt, %struct.pucan_wr_err_cnt* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.pucan_wr_err_cnt*, %struct.pucan_wr_err_cnt** %5, align 8
  %28 = getelementptr inbounds %struct.pucan_wr_err_cnt, %struct.pucan_wr_err_cnt* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 32
  store i32* %30, i32** %7, align 8
  %31 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %32 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CAN_CTRLMODE_FD_NON_ISO, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %72

38:                                               ; preds = %2
  %39 = load i32*, i32** %7, align 8
  %40 = bitcast i32* %39 to %struct.pucan_options*
  store %struct.pucan_options* %40, %struct.pucan_options** %8, align 8
  %41 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %42 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CAN_CTRLMODE_FD_NON_ISO, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %50 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PUCAN_CMD_CLR_DIS_OPTION, align 4
  %53 = call i8* @pucan_cmd_opcode_channel(i32 %51, i32 %52)
  br label %60

54:                                               ; preds = %38
  %55 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %56 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @PUCAN_CMD_SET_EN_OPTION, align 4
  %59 = call i8* @pucan_cmd_opcode_channel(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %48
  %61 = phi i8* [ %53, %48 ], [ %59, %54 ]
  %62 = load %struct.pucan_options*, %struct.pucan_options** %8, align 8
  %63 = getelementptr inbounds %struct.pucan_options, %struct.pucan_options* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @PUCAN_OPTION_CANDFDISO, align 4
  %65 = call i8* @cpu_to_le16(i32 %64)
  %66 = load %struct.pucan_options*, %struct.pucan_options** %8, align 8
  %67 = getelementptr inbounds %struct.pucan_options, %struct.pucan_options* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.pucan_options*, %struct.pucan_options** %8, align 8
  %69 = getelementptr inbounds %struct.pucan_options, %struct.pucan_options* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 24
  store i32* %71, i32** %7, align 8
  br label %72

72:                                               ; preds = %60, %2
  %73 = load i32*, i32** %7, align 8
  %74 = bitcast i32* %73 to %struct.pucan_command*
  store %struct.pucan_command* %74, %struct.pucan_command** %6, align 8
  %75 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %76 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %79 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %72
  %86 = load i32, i32* @PUCAN_CMD_LISTEN_ONLY_MODE, align 4
  br label %89

87:                                               ; preds = %72
  %88 = load i32, i32* @PUCAN_CMD_NORMAL_MODE, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = call i8* @pucan_cmd_opcode_channel(i32 %77, i32 %90)
  %92 = load %struct.pucan_command*, %struct.pucan_command** %6, align 8
  %93 = getelementptr inbounds %struct.pucan_command, %struct.pucan_command* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 8
  store i32* %95, i32** %7, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = ptrtoint i32* %96 to i64
  %99 = ptrtoint i32* %97 to i64
  %100 = sub i64 %98, %99
  %101 = sdiv exact i64 %100, 4
  %102 = trunc i64 %101 to i32
  ret i32 %102
}

declare dso_local i8* @pucan_cmd_opcode_channel(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
