; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_stk1135.c_stk1135_serial_wait_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_stk1135.c_stk1135_serial_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@STK1135_REG_SICTL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"serial bus timeout: status=0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @stk1135_serial_wait_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk1135_serial_wait_ready(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = load i64, i64* @STK1135_REG_SICTL, align 8
  %9 = add nsw i64 %8, 1
  %10 = call i32 @reg_r(%struct.gspca_dev* %7, i64 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %4, align 4
  %13 = icmp sgt i32 %11, 500
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 -1, i32* %2, align 4
  br label %30

17:                                               ; preds = %6
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 16
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 5
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i1 [ true, %18 ], [ %26, %22 ]
  br i1 %28, label %6, label %29

29:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %14
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @reg_r(%struct.gspca_dev*, i64) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
