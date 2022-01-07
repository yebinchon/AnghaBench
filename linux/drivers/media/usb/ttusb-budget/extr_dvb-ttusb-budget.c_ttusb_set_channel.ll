; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/ttusb-budget/extr_dvb-ttusb-budget.c_ttusb_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/ttusb-budget/extr_dvb-ttusb-budget.c_ttusb_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttusb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttusb*, i32, i32, i32)* @ttusb_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttusb_set_channel(%struct.ttusb* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ttusb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i32], align 16
  store %struct.ttusb* %0, %struct.ttusb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  store i32 170, i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load %struct.ttusb*, %struct.ttusb** %5, align 8
  %14 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  store i32 %16, i32* %12, align 4
  %17 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 34, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 4, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds i32, i32* %21, i64 1
  %24 = load i32, i32* %8, align 4
  %25 = ashr i32 %24, 8
  %26 = and i32 %25, 255
  store i32 %26, i32* %23, align 4
  %27 = getelementptr inbounds i32, i32* %23, i64 1
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 255
  store i32 %29, i32* %27, align 4
  %30 = load %struct.ttusb*, %struct.ttusb** %5, align 8
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %32 = call i32 @ttusb_cmd(%struct.ttusb* %30, i32* %31, i32 32, i32 0)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local i32 @ttusb_cmd(%struct.ttusb*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
