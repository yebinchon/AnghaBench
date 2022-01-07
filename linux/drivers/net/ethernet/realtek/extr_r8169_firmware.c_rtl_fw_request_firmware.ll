; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_firmware.c_rtl_fw_request_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_firmware.c_rtl_fw_request_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_fw = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to load firmware %s (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl_fw_request_firmware(%struct.rtl_fw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl_fw*, align 8
  %4 = alloca i32, align 4
  store %struct.rtl_fw* %0, %struct.rtl_fw** %3, align 8
  %5 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %6 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %5, i32 0, i32 2
  %7 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %8 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %11 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @request_firmware(i32* %6, i32 %9, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %33

17:                                               ; preds = %1
  %18 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %19 = call i32 @rtl_fw_format_ok(%struct.rtl_fw* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %23 = call i32 @rtl_fw_data_ok(%struct.rtl_fw* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %27 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @release_firmware(i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %33

32:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %43

33:                                               ; preds = %25, %16
  %34 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %35 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %38 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %33, %32
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @request_firmware(i32*, i32, i32) #1

declare dso_local i32 @rtl_fw_format_ok(%struct.rtl_fw*) #1

declare dso_local i32 @rtl_fw_data_ok(%struct.rtl_fw*) #1

declare dso_local i32 @release_firmware(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
