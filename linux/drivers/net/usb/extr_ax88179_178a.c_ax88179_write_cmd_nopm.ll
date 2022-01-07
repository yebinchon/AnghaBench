; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_write_cmd_nopm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_write_cmd_nopm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32, i32, i32, i32, i8*)* @ax88179_write_cmd_nopm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88179_write_cmd_nopm(%struct.usbnet* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.usbnet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %15 = load i32, i32* %11, align 4
  %16 = icmp eq i32 2, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %6
  %18 = load i8*, i8** %12, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %14, align 4
  %21 = call i32 @cpu_to_le16s(i32* %14)
  %22 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = bitcast i32* %14 to i8*
  %28 = call i32 @__ax88179_write_cmd(%struct.usbnet* %22, i32 %23, i32 %24, i32 %25, i32 %26, i8* %27, i32 1)
  store i32 %28, i32* %13, align 4
  br label %37

29:                                               ; preds = %6
  %30 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 @__ax88179_write_cmd(%struct.usbnet* %30, i32 %31, i32 %32, i32 %33, i32 %34, i8* %35, i32 1)
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %29, %17
  %38 = load i32, i32* %13, align 4
  ret i32 %38
}

declare dso_local i32 @cpu_to_le16s(i32*) #1

declare dso_local i32 @__ax88179_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
