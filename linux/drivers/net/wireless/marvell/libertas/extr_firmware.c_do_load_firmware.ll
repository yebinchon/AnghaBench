; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_firmware.c_do_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_firmware.c_do_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.firmware = type opaque
%struct.firmware.0 = type opaque

@.str = private unnamed_addr constant [15 x i8] c"Requesting %s\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"request_firmware_nowait error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbs_private*, i8*, void (%struct.firmware*, i8*)*)* @do_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_load_firmware(%struct.lbs_private* %0, i8* %1, void (%struct.firmware*, i8*)* %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (%struct.firmware*, i8*)*, align 8
  %7 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i8* %1, i8** %5, align 8
  store void (%struct.firmware*, i8*)* %2, void (%struct.firmware*, i8*)** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 (i8*, ...) @lbs_deb_fw(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load i32, i32* @THIS_MODULE, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %13 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %17 = load void (%struct.firmware*, i8*)*, void (%struct.firmware*, i8*)** %6, align 8
  %18 = bitcast void (%struct.firmware*, i8*)* %17 to void (%struct.firmware.0*, i8*)*
  %19 = call i32 @request_firmware_nowait(i32 %10, i32 1, i8* %11, i32 %14, i32 %15, %struct.lbs_private* %16, void (%struct.firmware.0*, i8*)* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (i8*, ...) @lbs_deb_fw(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @lbs_fw_loaded(%struct.lbs_private* %25, i32 %26, i32* null, i32* null)
  br label %28

28:                                               ; preds = %22, %3
  ret void
}

declare dso_local i32 @lbs_deb_fw(i8*, ...) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, i32, i32, %struct.lbs_private*, void (%struct.firmware.0*, i8*)*) #1

declare dso_local i32 @lbs_fw_loaded(%struct.lbs_private*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
