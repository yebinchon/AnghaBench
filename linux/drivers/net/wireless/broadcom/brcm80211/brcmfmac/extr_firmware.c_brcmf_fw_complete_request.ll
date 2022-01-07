; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_fw_complete_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_fw_complete_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.brcmf_fw = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.brcmf_fw_item* }
%struct.brcmf_fw_item = type { i32, i32, %struct.firmware*, i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"firmware %s %sfound\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"unknown fw type: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BRCMF_FW_REQF_OPTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firmware*, %struct.brcmf_fw*)* @brcmf_fw_complete_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_fw_complete_request(%struct.firmware* %0, %struct.brcmf_fw* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca %struct.brcmf_fw*, align 8
  %5 = alloca %struct.brcmf_fw_item*, align 8
  %6 = alloca i32, align 4
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store %struct.brcmf_fw* %1, %struct.brcmf_fw** %4, align 8
  %7 = load %struct.brcmf_fw*, %struct.brcmf_fw** %4, align 8
  %8 = getelementptr inbounds %struct.brcmf_fw, %struct.brcmf_fw* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.brcmf_fw_item*, %struct.brcmf_fw_item** %10, align 8
  %12 = load %struct.brcmf_fw*, %struct.brcmf_fw** %4, align 8
  %13 = getelementptr inbounds %struct.brcmf_fw, %struct.brcmf_fw* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.brcmf_fw_item, %struct.brcmf_fw_item* %11, i64 %14
  store %struct.brcmf_fw_item* %15, %struct.brcmf_fw_item** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load i32, i32* @TRACE, align 4
  %17 = load %struct.brcmf_fw_item*, %struct.brcmf_fw_item** %5, align 8
  %18 = getelementptr inbounds %struct.brcmf_fw_item, %struct.brcmf_fw_item* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.firmware*, %struct.firmware** %3, align 8
  %21 = icmp ne %struct.firmware* %20, null
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %24 = call i32 @brcmf_dbg(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %23)
  %25 = load %struct.brcmf_fw_item*, %struct.brcmf_fw_item** %5, align 8
  %26 = getelementptr inbounds %struct.brcmf_fw_item, %struct.brcmf_fw_item* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %43 [
    i32 128, label %28
    i32 129, label %32
  ]

28:                                               ; preds = %2
  %29 = load %struct.firmware*, %struct.firmware** %3, align 8
  %30 = load %struct.brcmf_fw*, %struct.brcmf_fw** %4, align 8
  %31 = call i32 @brcmf_fw_request_nvram_done(%struct.firmware* %29, %struct.brcmf_fw* %30)
  store i32 %31, i32* %6, align 4
  br label %52

32:                                               ; preds = %2
  %33 = load %struct.firmware*, %struct.firmware** %3, align 8
  %34 = icmp ne %struct.firmware* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.firmware*, %struct.firmware** %3, align 8
  %37 = load %struct.brcmf_fw_item*, %struct.brcmf_fw_item** %5, align 8
  %38 = getelementptr inbounds %struct.brcmf_fw_item, %struct.brcmf_fw_item* %37, i32 0, i32 2
  store %struct.firmware* %36, %struct.firmware** %38, align 8
  br label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %39, %35
  br label %52

43:                                               ; preds = %2
  %44 = load %struct.brcmf_fw_item*, %struct.brcmf_fw_item** %5, align 8
  %45 = getelementptr inbounds %struct.brcmf_fw_item, %struct.brcmf_fw_item* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @brcmf_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load %struct.firmware*, %struct.firmware** %3, align 8
  %49 = call i32 @release_firmware(%struct.firmware* %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %43, %42, %28
  %53 = load %struct.brcmf_fw_item*, %struct.brcmf_fw_item** %5, align 8
  %54 = getelementptr inbounds %struct.brcmf_fw_item, %struct.brcmf_fw_item* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @BRCMF_FW_REQF_OPTIONAL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %6, align 4
  br label %62

62:                                               ; preds = %60, %59
  %63 = phi i32 [ 0, %59 ], [ %61, %60 ]
  ret i32 %63
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, i8*) #1

declare dso_local i32 @brcmf_fw_request_nvram_done(%struct.firmware*, %struct.brcmf_fw*) #1

declare dso_local i32 @brcmf_err(i8*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
