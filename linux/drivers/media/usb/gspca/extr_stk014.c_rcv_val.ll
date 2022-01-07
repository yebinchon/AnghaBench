; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_stk014.c_rcv_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_stk014.c_rcv_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32, %struct.usb_device* }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"rcv_val err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @rcv_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcv_val(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 2
  %10 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  store %struct.usb_device* %10, %struct.usb_device** %5, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = call i32 @reg_w(%struct.gspca_dev* %11, i32 1588, i32 %14)
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 255
  %20 = call i32 @reg_w(%struct.gspca_dev* %16, i32 1589, i32 %19)
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 255
  %24 = call i32 @reg_w(%struct.gspca_dev* %21, i32 1590, i32 %23)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %26 = call i32 @reg_w(%struct.gspca_dev* %25, i32 1591, i32 0)
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %28 = call i32 @reg_w(%struct.gspca_dev* %27, i32 1592, i32 4)
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %30 = call i32 @reg_w(%struct.gspca_dev* %29, i32 1593, i32 0)
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %32 = call i32 @reg_w(%struct.gspca_dev* %31, i32 1594, i32 0)
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %34 = call i32 @reg_w(%struct.gspca_dev* %33, i32 1595, i32 0)
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %36 = call i32 @reg_w(%struct.gspca_dev* %35, i32 1584, i32 5)
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %38 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  br label %58

42:                                               ; preds = %2
  %43 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %44 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %45 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %44, i32 5)
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %47 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @usb_bulk_msg(%struct.usb_device* %43, i32 %45, i32 %48, i32 4, i32* %6, i32 500)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %57 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %41, %52, %42
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
