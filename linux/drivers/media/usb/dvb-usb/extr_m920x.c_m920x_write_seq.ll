; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_m920x.c_m920x_write_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_m920x.c_m920x_write_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.m920x_inits = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, %struct.m920x_inits*)* @m920x_write_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m920x_write_seq(%struct.usb_device* %0, i32 %1, %struct.m920x_inits* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.m920x_inits*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.m920x_inits* %2, %struct.m920x_inits** %7, align 8
  br label %9

9:                                                ; preds = %26, %3
  %10 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.m920x_inits*, %struct.m920x_inits** %7, align 8
  %13 = getelementptr inbounds %struct.m920x_inits, %struct.m920x_inits* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.m920x_inits*, %struct.m920x_inits** %7, align 8
  %16 = getelementptr inbounds %struct.m920x_inits, %struct.m920x_inits* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @m920x_write(%struct.usb_device* %10, i32 %11, i32 %14, i64 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %9
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %32

23:                                               ; preds = %9
  %24 = load %struct.m920x_inits*, %struct.m920x_inits** %7, align 8
  %25 = getelementptr inbounds %struct.m920x_inits, %struct.m920x_inits* %24, i32 1
  store %struct.m920x_inits* %25, %struct.m920x_inits** %7, align 8
  br label %26

26:                                               ; preds = %23
  %27 = load %struct.m920x_inits*, %struct.m920x_inits** %7, align 8
  %28 = getelementptr inbounds %struct.m920x_inits, %struct.m920x_inits* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %9, label %31

31:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %21
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @m920x_write(%struct.usb_device*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
