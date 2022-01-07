; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_zc3xx.c_usb_exchange.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_zc3xx.c_usb_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.usb_action = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, %struct.usb_action*)* @usb_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_exchange(%struct.gspca_dev* %0, %struct.usb_action* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.usb_action*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store %struct.usb_action* %1, %struct.usb_action** %4, align 8
  br label %5

5:                                                ; preds = %62, %2
  %6 = load %struct.usb_action*, %struct.usb_action** %4, align 8
  %7 = getelementptr inbounds %struct.usb_action, %struct.usb_action* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %66

10:                                               ; preds = %5
  %11 = load %struct.usb_action*, %struct.usb_action** %4, align 8
  %12 = getelementptr inbounds %struct.usb_action, %struct.usb_action* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %57 [
    i32 160, label %14
    i32 161, label %23
    i32 170, label %29
    i32 187, label %43
  ]

14:                                               ; preds = %10
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %16 = load %struct.usb_action*, %struct.usb_action** %4, align 8
  %17 = getelementptr inbounds %struct.usb_action, %struct.usb_action* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.usb_action*, %struct.usb_action** %4, align 8
  %20 = getelementptr inbounds %struct.usb_action, %struct.usb_action* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @reg_w(%struct.gspca_dev* %15, i32 %18, i32 %21)
  br label %62

23:                                               ; preds = %10
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %25 = load %struct.usb_action*, %struct.usb_action** %4, align 8
  %26 = getelementptr inbounds %struct.usb_action, %struct.usb_action* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @reg_r(%struct.gspca_dev* %24, i32 %27)
  br label %62

29:                                               ; preds = %10
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %31 = load %struct.usb_action*, %struct.usb_action** %4, align 8
  %32 = getelementptr inbounds %struct.usb_action, %struct.usb_action* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.usb_action*, %struct.usb_action** %4, align 8
  %35 = getelementptr inbounds %struct.usb_action, %struct.usb_action* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 255
  %38 = load %struct.usb_action*, %struct.usb_action** %4, align 8
  %39 = getelementptr inbounds %struct.usb_action, %struct.usb_action* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 8
  %42 = call i32 @i2c_write(%struct.gspca_dev* %30, i32 %33, i32 %37, i32 %41)
  br label %62

43:                                               ; preds = %10
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %45 = load %struct.usb_action*, %struct.usb_action** %4, align 8
  %46 = getelementptr inbounds %struct.usb_action, %struct.usb_action* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 8
  %49 = load %struct.usb_action*, %struct.usb_action** %4, align 8
  %50 = getelementptr inbounds %struct.usb_action, %struct.usb_action* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 255
  %53 = load %struct.usb_action*, %struct.usb_action** %4, align 8
  %54 = getelementptr inbounds %struct.usb_action, %struct.usb_action* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @i2c_write(%struct.gspca_dev* %44, i32 %48, i32 %52, i32 %55)
  br label %62

57:                                               ; preds = %10
  %58 = load %struct.usb_action*, %struct.usb_action** %4, align 8
  %59 = getelementptr inbounds %struct.usb_action, %struct.usb_action* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @msleep(i32 %60)
  br label %62

62:                                               ; preds = %57, %43, %29, %23, %14
  %63 = load %struct.usb_action*, %struct.usb_action** %4, align 8
  %64 = getelementptr inbounds %struct.usb_action, %struct.usb_action* %63, i32 1
  store %struct.usb_action* %64, %struct.usb_action** %4, align 8
  %65 = call i32 @msleep(i32 1)
  br label %5

66:                                               ; preds = %5
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32) #1

declare dso_local i32 @i2c_write(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
