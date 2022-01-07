; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_mceusb.c_mceusb_set_rx_carrier_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_mceusb.c_mceusb_set_rx_carrier_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.mceusb_dev* }
%struct.mceusb_dev = type { i32, i32, i64, i32 }

@MCE_CMD_PORT_IR = common dso_local global i32 0, align 4
@MCE_CMD_SETIRRXPORTEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s short-range receiver carrier reporting\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32)* @mceusb_set_rx_carrier_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mceusb_set_rx_carrier_report(%struct.rc_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rc_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mceusb_dev*, align 8
  %6 = alloca [3 x i8], align 1
  store %struct.rc_dev* %0, %struct.rc_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %7, i32 0, i32 0
  %9 = load %struct.mceusb_dev*, %struct.mceusb_dev** %8, align 8
  store %struct.mceusb_dev* %9, %struct.mceusb_dev** %5, align 8
  %10 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %11 = load i32, i32* @MCE_CMD_PORT_IR, align 4
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %10, align 1
  %13 = getelementptr inbounds i8, i8* %10, i64 1
  %14 = load i32, i32* @MCE_CMD_SETIRRXPORTEN, align 4
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %13, align 1
  %16 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 0, i8* %16, align 1
  %17 = load %struct.mceusb_dev*, %struct.mceusb_dev** %5, align 8
  %18 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %24 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %2
  %28 = load %struct.mceusb_dev*, %struct.mceusb_dev** %5, align 8
  %29 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.mceusb_dev*, %struct.mceusb_dev** %5, align 8
  %31 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  store i8 2, i8* %35, align 1
  %36 = load %struct.mceusb_dev*, %struct.mceusb_dev** %5, align 8
  %37 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %38 = call i32 @mce_command_out(%struct.mceusb_dev* %36, i8* %37, i32 3)
  br label %39

39:                                               ; preds = %34, %27
  br label %58

40:                                               ; preds = %2
  %41 = load %struct.mceusb_dev*, %struct.mceusb_dev** %5, align 8
  %42 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.mceusb_dev*, %struct.mceusb_dev** %5, align 8
  %44 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load %struct.mceusb_dev*, %struct.mceusb_dev** %5, align 8
  %49 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  store i8 1, i8* %53, align 1
  %54 = load %struct.mceusb_dev*, %struct.mceusb_dev** %5, align 8
  %55 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %56 = call i32 @mce_command_out(%struct.mceusb_dev* %54, i8* %55, i32 3)
  br label %57

57:                                               ; preds = %52, %47, %40
  br label %58

58:                                               ; preds = %57, %39
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @mce_command_out(%struct.mceusb_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
