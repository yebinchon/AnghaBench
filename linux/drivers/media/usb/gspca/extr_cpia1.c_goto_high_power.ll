; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_cpia1.c_goto_high_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_cpia1.c_goto_high_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@CPIA_COMMAND_GotoHiPower = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@CPIA_COMMAND_GetCameraStatus = common dso_local global i32 0, align 4
@HI_POWER_STATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"unexpected state after hi power cmd: %02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@D_CONF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"camera now in HIGH power state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @goto_high_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goto_high_power(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %4, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = load i32, i32* @CPIA_COMMAND_GotoHiPower, align 4
  %10 = call i32 @do_command(%struct.gspca_dev* %8, i32 %9, i32 0, i32 0, i32 0, i32 0)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %57

15:                                               ; preds = %1
  %16 = call i32 @msleep_interruptible(i32 40)
  %17 = load i32, i32* @current, align 4
  %18 = call i64 @signal_pending(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINTR, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %57

23:                                               ; preds = %15
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %25 = load i32, i32* @CPIA_COMMAND_GetCameraStatus, align 4
  %26 = call i32 @do_command(%struct.gspca_dev* %24, i32 %25, i32 0, i32 0, i32 0, i32 0)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %57

31:                                               ; preds = %23
  %32 = load %struct.sd*, %struct.sd** %4, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @HI_POWER_STATE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %31
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %41 = load %struct.sd*, %struct.sd** %4, align 8
  %42 = getelementptr inbounds %struct.sd, %struct.sd* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @gspca_err(%struct.gspca_dev* %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %48 = load %struct.sd*, %struct.sd** %4, align 8
  %49 = getelementptr inbounds %struct.sd, %struct.sd* %48, i32 0, i32 0
  %50 = call i32 @printstatus(%struct.gspca_dev* %47, %struct.TYPE_4__* %49)
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %57

53:                                               ; preds = %31
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %55 = load i32, i32* @D_CONF, align 4
  %56 = call i32 @gspca_dbg(%struct.gspca_dev* %54, i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %39, %29, %20, %13
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @do_command(%struct.gspca_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*, i64) #1

declare dso_local i32 @printstatus(%struct.gspca_dev*, %struct.TYPE_4__*) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
