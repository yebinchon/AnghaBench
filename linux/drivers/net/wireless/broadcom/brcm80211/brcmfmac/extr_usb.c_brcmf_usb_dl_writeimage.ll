; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_dl_writeimage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_dl_writeimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_usbdev_info = type { i32 }
%struct.rdl_state_le = type { i32, i32 }

@USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Enter, fw %p, len %d\0A\00", align 1
@TRX_RDL_CHUNK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DL_START = common dso_local global i32 0, align 4
@DL_WAITING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Failed to DL_START\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"send_bulk failed\0A\00", align 1
@DL_GETSTATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"DL_GETSTATE Failed\0A\00", align 1
@DL_BAD_HDR = common dso_local global i64 0, align 8
@DL_BAD_CRC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Bad Hdr or Bad CRC state %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Exit, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_usbdev_info*, i8*, i32)* @brcmf_usb_dl_writeimage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_usb_dl_writeimage(%struct.brcmf_usbdev_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.brcmf_usbdev_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.rdl_state_le, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.brcmf_usbdev_info* %0, %struct.brcmf_usbdev_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %10, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* @USB, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %18)
  %20 = load i32, i32* @TRX_RDL_CHUNK, align 4
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call i8* @kmalloc(i32 %20, i32 %21)
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %15, align 4
  br label %133

28:                                               ; preds = %3
  %29 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %30 = load i32, i32* @DL_START, align 4
  %31 = call i32 @brcmf_usb_dl_cmd(%struct.brcmf_usbdev_info* %29, i32 %30, %struct.rdl_state_le* %12, i32 8)
  %32 = getelementptr inbounds %struct.rdl_state_le, %struct.rdl_state_le* %12, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @le32_to_cpu(i32 %33)
  store i64 %34, i64* %13, align 8
  %35 = getelementptr inbounds %struct.rdl_state_le, %struct.rdl_state_le* %12, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @le32_to_cpu(i32 %36)
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* @DL_WAITING, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %15, align 4
  br label %133

45:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  %46 = load i8*, i8** %5, align 8
  store i8* %46, i8** %11, align 8
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %131, %45
  %49 = load i64, i64* %14, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = icmp ne i64 %49, %51
  br i1 %52, label %53, label %132

53:                                               ; preds = %48
  %54 = load i64, i64* %14, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = icmp eq i64 %54, %56
  br i1 %57, label %58, label %104

58:                                               ; preds = %53
  %59 = load i64, i64* %14, align 8
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  %62 = icmp ne i64 %59, %61
  br i1 %62, label %63, label %104

63:                                               ; preds = %58
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %8, align 4
  %66 = sub i32 %64, %65
  %67 = load i32, i32* @TRX_RDL_CHUNK, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = sub i32 %70, %71
  store i32 %72, i32* %7, align 4
  br label %75

73:                                               ; preds = %63
  %74 = load i32, i32* @TRX_RDL_CHUNK, align 4
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %73, %69
  %76 = load i32, i32* %7, align 4
  %77 = urem i32 %76, 64
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = sub i32 %80, 4
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %79, %75
  %83 = load i8*, i8** %10, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @memcpy(i8* %83, i8* %84, i32 %85)
  %87 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i64 @brcmf_usb_dl_send_bulk(%struct.brcmf_usbdev_info* %87, i8* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %82
  %93 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %15, align 4
  br label %133

96:                                               ; preds = %82
  %97 = load i32, i32* %7, align 4
  %98 = load i8*, i8** %11, align 8
  %99 = zext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %11, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = add i32 %102, %101
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %96, %58, %53
  %105 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %106 = load i32, i32* @DL_GETSTATE, align 4
  %107 = call i32 @brcmf_usb_dl_cmd(%struct.brcmf_usbdev_info* %105, i32 %106, %struct.rdl_state_le* %12, i32 8)
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %15, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %133

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.rdl_state_le, %struct.rdl_state_le* %12, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @le32_to_cpu(i32 %114)
  store i64 %115, i64* %13, align 8
  %116 = getelementptr inbounds %struct.rdl_state_le, %struct.rdl_state_le* %12, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @le32_to_cpu(i32 %117)
  store i64 %118, i64* %14, align 8
  %119 = load i64, i64* %13, align 8
  %120 = load i64, i64* @DL_BAD_HDR, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %126, label %122

122:                                              ; preds = %112
  %123 = load i64, i64* %13, align 8
  %124 = load i64, i64* @DL_BAD_CRC, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %122, %112
  %127 = load i64, i64* %13, align 8
  %128 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %127)
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %15, align 4
  br label %133

131:                                              ; preds = %122
  br label %48

132:                                              ; preds = %48
  br label %133

133:                                              ; preds = %132, %126, %110, %92, %41, %25
  %134 = load i8*, i8** %10, align 8
  %135 = call i32 @kfree(i8* %134)
  %136 = load i32, i32* @USB, align 4
  %137 = load i32, i32* %15, align 4
  %138 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %136, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %15, align 4
  ret i32 %139
}

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @brcmf_usb_dl_cmd(%struct.brcmf_usbdev_info*, i32, %struct.rdl_state_le*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @brcmf_err(i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @brcmf_usb_dl_send_bulk(%struct.brcmf_usbdev_info*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
