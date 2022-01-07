; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_benq.c_sd_stopN.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_benq.c_sd_stopN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32 }
%struct.usb_interface = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @sd_stopN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_stopN(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.usb_interface*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = call i32 @reg_w(%struct.gspca_dev* %4, i32 60, i32 3)
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = call i32 @reg_w(%struct.gspca_dev* %6, i32 60, i32 4)
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = call i32 @reg_w(%struct.gspca_dev* %8, i32 60, i32 5)
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %11 = call i32 @reg_w(%struct.gspca_dev* %10, i32 60, i32 6)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = call i32 @reg_w(%struct.gspca_dev* %12, i32 60, i32 7)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.usb_interface* @usb_ifnum_to_if(i32 %16, i32 %19)
  store %struct.usb_interface* %20, %struct.usb_interface** %3, align 8
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %22 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %25 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %28 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %29, 1
  %31 = call i32 @usb_set_interface(i32 %23, i32 %26, i64 %30)
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(i32, i32) #1

declare dso_local i32 @usb_set_interface(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
