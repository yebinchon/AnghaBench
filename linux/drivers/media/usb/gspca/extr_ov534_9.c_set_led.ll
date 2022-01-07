; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534_9.c_set_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534_9.c_set_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"led status: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @set_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_led(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = load i32, i32* @D_CONF, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @gspca_dbg(%struct.gspca_dev* %6, i32 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %11 = call i32 @reg_r(%struct.gspca_dev* %10, i32 33)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, 128
  store i32 %13, i32* %5, align 4
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @reg_w(%struct.gspca_dev* %14, i32 33, i32 %15)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %18 = call i32 @reg_r(%struct.gspca_dev* %17, i32 35)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, 128
  store i32 %23, i32* %5, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, -129
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @reg_w(%struct.gspca_dev* %28, i32 35, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %27
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %35 = call i32 @reg_r(%struct.gspca_dev* %34, i32 33)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, -129
  store i32 %37, i32* %5, align 4
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @reg_w(%struct.gspca_dev* %38, i32 33, i32 %39)
  br label %41

41:                                               ; preds = %33, %27
  ret void
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
