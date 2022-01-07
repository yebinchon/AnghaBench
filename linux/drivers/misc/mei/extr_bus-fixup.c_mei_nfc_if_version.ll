; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus-fixup.c_mei_nfc_if_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus-fixup.c_mei_nfc_if_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { %struct.mei_device* }
%struct.mei_device = type { i32, i32 }
%struct.mei_nfc_if_version = type { i32, i32, i32 }
%struct.mei_nfc_cmd = type { i32, i32, i32 }
%struct.mei_nfc_reply = type { i32 }

@MEI_NFC_SUBCMD_IF_VERSION = common dso_local global i32 0, align 4
@MEI_NFC_CMD_MAINTENANCE = common dso_local global i32 0, align 4
@MEI_CL_IO_TX_BLOCKING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not send IF version cmd\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Could not read IF version\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"NFC MEI VERSION: IVN 0x%x Vendor ID 0x%x Type 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_cl*, %struct.mei_nfc_if_version*)* @mei_nfc_if_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_nfc_if_version(%struct.mei_cl* %0, %struct.mei_nfc_if_version* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mei_cl*, align 8
  %5 = alloca %struct.mei_nfc_if_version*, align 8
  %6 = alloca %struct.mei_device*, align 8
  %7 = alloca %struct.mei_nfc_cmd, align 4
  %8 = alloca %struct.mei_nfc_reply*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mei_cl* %0, %struct.mei_cl** %4, align 8
  store %struct.mei_nfc_if_version* %1, %struct.mei_nfc_if_version** %5, align 8
  %12 = getelementptr inbounds %struct.mei_nfc_cmd, %struct.mei_nfc_cmd* %7, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.mei_nfc_cmd, %struct.mei_nfc_cmd* %7, i32 0, i32 1
  %14 = load i32, i32* @MEI_NFC_SUBCMD_IF_VERSION, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.mei_nfc_cmd, %struct.mei_nfc_cmd* %7, i32 0, i32 2
  %16 = load i32, i32* @MEI_NFC_CMD_MAINTENANCE, align 4
  store i32 %16, i32* %15, align 4
  store %struct.mei_nfc_reply* null, %struct.mei_nfc_reply** %8, align 8
  %17 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %18 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %17, i32 0, i32 0
  %19 = load %struct.mei_device*, %struct.mei_device** %18, align 8
  store %struct.mei_device* %19, %struct.mei_device** %6, align 8
  %20 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %21 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %20, i32 0, i32 1
  %22 = call i32 @mutex_is_locked(i32* %21)
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %25 = bitcast %struct.mei_nfc_cmd* %7 to i32*
  %26 = load i32, i32* @MEI_CL_IO_TX_BLOCKING, align 4
  %27 = call i32 @__mei_cl_send(%struct.mei_cl* %24, i32* %25, i32 12, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %32 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %3, align 4
  br label %88

36:                                               ; preds = %2
  store i64 16, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.mei_nfc_reply* @kzalloc(i64 %37, i32 %38)
  store %struct.mei_nfc_reply* %39, %struct.mei_nfc_reply** %8, align 8
  %40 = load %struct.mei_nfc_reply*, %struct.mei_nfc_reply** %8, align 8
  %41 = icmp ne %struct.mei_nfc_reply* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %88

45:                                               ; preds = %36
  store i32 0, i32* %11, align 4
  %46 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %47 = load %struct.mei_nfc_reply*, %struct.mei_nfc_reply** %8, align 8
  %48 = bitcast %struct.mei_nfc_reply* %47 to i32*
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @__mei_cl_recv(%struct.mei_cl* %46, i32* %48, i64 %49, i32 0, i32 0)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %9, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %53, %45
  %59 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %60 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %11, align 4
  br label %84

65:                                               ; preds = %53
  %66 = load %struct.mei_nfc_if_version*, %struct.mei_nfc_if_version** %5, align 8
  %67 = load %struct.mei_nfc_reply*, %struct.mei_nfc_reply** %8, align 8
  %68 = getelementptr inbounds %struct.mei_nfc_reply, %struct.mei_nfc_reply* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memcpy(%struct.mei_nfc_if_version* %66, i32 %69, i32 12)
  %71 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %72 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.mei_nfc_if_version*, %struct.mei_nfc_if_version** %5, align 8
  %75 = getelementptr inbounds %struct.mei_nfc_if_version, %struct.mei_nfc_if_version* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.mei_nfc_if_version*, %struct.mei_nfc_if_version** %5, align 8
  %78 = getelementptr inbounds %struct.mei_nfc_if_version, %struct.mei_nfc_if_version* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mei_nfc_if_version*, %struct.mei_nfc_if_version** %5, align 8
  %81 = getelementptr inbounds %struct.mei_nfc_if_version, %struct.mei_nfc_if_version* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_info(i32 %73, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %65, %58
  %85 = load %struct.mei_nfc_reply*, %struct.mei_nfc_reply** %8, align 8
  %86 = call i32 @kfree(%struct.mei_nfc_reply* %85)
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %84, %42, %30
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @__mei_cl_send(%struct.mei_cl*, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.mei_nfc_reply* @kzalloc(i64, i32) #1

declare dso_local i32 @__mei_cl_recv(%struct.mei_cl*, i32*, i64, i32, i32) #1

declare dso_local i32 @memcpy(%struct.mei_nfc_if_version*, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.mei_nfc_reply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
