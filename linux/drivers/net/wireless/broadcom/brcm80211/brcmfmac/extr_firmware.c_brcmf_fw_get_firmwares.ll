; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_fw_get_firmwares.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_fw_get_firmwares.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.brcmf_fw_request = type { %struct.brcmf_fw_item* }
%struct.brcmf_fw_item = type { i32 }
%struct.brcmf_fw = type { void (%struct.device*, i32, %struct.brcmf_fw_request*)*, %struct.device*, %struct.brcmf_fw_request* }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"enter: dev=%s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_fw_get_firmwares(%struct.device* %0, %struct.brcmf_fw_request* %1, void (%struct.device*, i32, %struct.brcmf_fw_request*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.brcmf_fw_request*, align 8
  %7 = alloca void (%struct.device*, i32, %struct.brcmf_fw_request*)*, align 8
  %8 = alloca %struct.brcmf_fw_item*, align 8
  %9 = alloca %struct.brcmf_fw*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.brcmf_fw_request* %1, %struct.brcmf_fw_request** %6, align 8
  store void (%struct.device*, i32, %struct.brcmf_fw_request*)* %2, void (%struct.device*, i32, %struct.brcmf_fw_request*)** %7, align 8
  %11 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %6, align 8
  %12 = getelementptr inbounds %struct.brcmf_fw_request, %struct.brcmf_fw_request* %11, i32 0, i32 0
  %13 = load %struct.brcmf_fw_item*, %struct.brcmf_fw_item** %12, align 8
  %14 = getelementptr inbounds %struct.brcmf_fw_item, %struct.brcmf_fw_item* %13, i64 0
  store %struct.brcmf_fw_item* %14, %struct.brcmf_fw_item** %8, align 8
  %15 = load i32, i32* @TRACE, align 4
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call i32 @dev_name(%struct.device* %16)
  %18 = call i32 @brcmf_dbg(i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load void (%struct.device*, i32, %struct.brcmf_fw_request*)*, void (%struct.device*, i32, %struct.brcmf_fw_request*)** %7, align 8
  %20 = icmp ne void (%struct.device*, i32, %struct.brcmf_fw_request*)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %65

24:                                               ; preds = %3
  %25 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %6, align 8
  %26 = call i32 @brcmf_fw_request_is_valid(%struct.brcmf_fw_request* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %65

31:                                               ; preds = %24
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.brcmf_fw* @kzalloc(i32 24, i32 %32)
  store %struct.brcmf_fw* %33, %struct.brcmf_fw** %9, align 8
  %34 = load %struct.brcmf_fw*, %struct.brcmf_fw** %9, align 8
  %35 = icmp ne %struct.brcmf_fw* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %65

39:                                               ; preds = %31
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load %struct.brcmf_fw*, %struct.brcmf_fw** %9, align 8
  %42 = getelementptr inbounds %struct.brcmf_fw, %struct.brcmf_fw* %41, i32 0, i32 1
  store %struct.device* %40, %struct.device** %42, align 8
  %43 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %6, align 8
  %44 = load %struct.brcmf_fw*, %struct.brcmf_fw** %9, align 8
  %45 = getelementptr inbounds %struct.brcmf_fw, %struct.brcmf_fw* %44, i32 0, i32 2
  store %struct.brcmf_fw_request* %43, %struct.brcmf_fw_request** %45, align 8
  %46 = load void (%struct.device*, i32, %struct.brcmf_fw_request*)*, void (%struct.device*, i32, %struct.brcmf_fw_request*)** %7, align 8
  %47 = load %struct.brcmf_fw*, %struct.brcmf_fw** %9, align 8
  %48 = getelementptr inbounds %struct.brcmf_fw, %struct.brcmf_fw* %47, i32 0, i32 0
  store void (%struct.device*, i32, %struct.brcmf_fw_request*)* %46, void (%struct.device*, i32, %struct.brcmf_fw_request*)** %48, align 8
  %49 = load i32, i32* @THIS_MODULE, align 4
  %50 = load %struct.brcmf_fw_item*, %struct.brcmf_fw_item** %8, align 8
  %51 = getelementptr inbounds %struct.brcmf_fw_item, %struct.brcmf_fw_item* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.brcmf_fw*, %struct.brcmf_fw** %9, align 8
  %54 = getelementptr inbounds %struct.brcmf_fw, %struct.brcmf_fw* %53, i32 0, i32 1
  %55 = load %struct.device*, %struct.device** %54, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = load %struct.brcmf_fw*, %struct.brcmf_fw** %9, align 8
  %58 = call i32 @request_firmware_nowait(i32 %49, i32 1, i32 %52, %struct.device* %55, i32 %56, %struct.brcmf_fw* %57, i32 (i32*, %struct.brcmf_fw*)* @brcmf_fw_request_done)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %39
  %62 = load %struct.brcmf_fw*, %struct.brcmf_fw** %9, align 8
  %63 = call i32 @brcmf_fw_request_done(i32* null, %struct.brcmf_fw* %62)
  br label %64

64:                                               ; preds = %61, %39
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %36, %28, %21
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @brcmf_fw_request_is_valid(%struct.brcmf_fw_request*) #1

declare dso_local %struct.brcmf_fw* @kzalloc(i32, i32) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i32, %struct.device*, i32, %struct.brcmf_fw*, i32 (i32*, %struct.brcmf_fw*)*) #1

declare dso_local i32 @brcmf_fw_request_done(i32*, %struct.brcmf_fw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
