; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-core.c_au0828_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-core.c_au0828_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.au0828_dev = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"Resume\0A\00", align 1
@REG_600 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @au0828_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au0828_resume(%struct.usb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.au0828_dev*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %6 = call %struct.au0828_dev* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.au0828_dev* %6, %struct.au0828_dev** %4, align 8
  %7 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %8 = icmp ne %struct.au0828_dev* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

10:                                               ; preds = %1
  %11 = call i32 @pr_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %13 = load i32, i32* @REG_600, align 4
  %14 = call i32 @au0828_write(%struct.au0828_dev* %12, i32 %13, i32 16)
  %15 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %16 = call i32 @au0828_gpio_setup(%struct.au0828_dev* %15)
  %17 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %18 = call i32 @au0828_rc_resume(%struct.au0828_dev* %17)
  %19 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %20 = call i32 @au0828_v4l2_resume(%struct.au0828_dev* %19)
  %21 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %22 = call i32 @au0828_dvb_resume(%struct.au0828_dev* %21)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %10, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.au0828_dev* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @au0828_write(%struct.au0828_dev*, i32, i32) #1

declare dso_local i32 @au0828_gpio_setup(%struct.au0828_dev*) #1

declare dso_local i32 @au0828_rc_resume(%struct.au0828_dev*) #1

declare dso_local i32 @au0828_v4l2_resume(%struct.au0828_dev*) #1

declare dso_local i32 @au0828_dvb_resume(%struct.au0828_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
