; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ics932s401.c_show_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ics932s401.c_show_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_attribute = type { i32 }
%struct.device = type { i32 }

@dev_attr_usb_clock = common dso_local global %struct.device_attribute zeroinitializer, align 4
@dev_attr_ref_clock = common dso_local global %struct.device_attribute zeroinitializer, align 4
@BASE_CLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_value(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %9 = icmp eq %struct.device_attribute* %8, @dev_attr_usb_clock
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 48000, i32* %7, align 4
  br label %19

11:                                               ; preds = %3
  %12 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %13 = icmp eq %struct.device_attribute* %12, @dev_attr_ref_clock
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* @BASE_CLOCK, align 4
  store i32 %15, i32* %7, align 4
  br label %18

16:                                               ; preds = %11
  %17 = call i32 (...) @BUG()
  br label %18

18:                                               ; preds = %16, %14
  br label %19

19:                                               ; preds = %18, %10
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %21)
  ret i32 %22
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
