; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_sd_isoc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_sd_isoc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__** }
%struct.TYPE_10__ = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_isoc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_isoc_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.usb_host_interface*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %11 [
    i32 160, label %9
    i32 176, label %10
  ]

9:                                                ; preds = %1
  store i32 450, i32* %4, align 4
  br label %12

10:                                               ; preds = %1
  store i32 600, i32* %4, align 4
  br label %12

11:                                               ; preds = %1
  store i32 1022, i32* %4, align 4
  br label %12

12:                                               ; preds = %11, %10, %9
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %14 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %19, i64 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.usb_host_interface*, %struct.usb_host_interface** %22, align 8
  %24 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %23, i64 1
  store %struct.usb_host_interface* %24, %struct.usb_host_interface** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @cpu_to_le16(i32 %25)
  %27 = load %struct.usb_host_interface*, %struct.usb_host_interface** %3, align 8
  %28 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 %26, i32* %32, align 4
  ret i32 0
}

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
