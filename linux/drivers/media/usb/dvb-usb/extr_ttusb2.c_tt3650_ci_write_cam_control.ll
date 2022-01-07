; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_ttusb2.c_tt3650_ci_write_cam_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_ttusb2.c_tt3650_ci_write_cam_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"%d 0x%02x 0x%02x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TT3650_CMD_CI_WR_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32, i32, i32)* @tt3650_ci_write_cam_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tt3650_ci_write_cam_control(%struct.dvb_ca_en50221* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_ca_en50221*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @ci_dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %29

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %6, align 8
  %26 = load i32, i32* @TT3650_CMD_CI_WR_CTRL, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %28 = call i32 @tt3650_ci_msg_locked(%struct.dvb_ca_en50221* %25, i32 %26, i32* %27, i32 2, i32 2)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %20, %17
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @ci_dbg(i8*, i32, i32, i32) #1

declare dso_local i32 @tt3650_ci_msg_locked(%struct.dvb_ca_en50221*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
