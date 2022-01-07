; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_kaweth.c_kaweth_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_kaweth.c_kaweth_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaweth_device = type { i32, i32 }
%struct.usb_ctrlrequest = type { i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [16 x i8] c"in_interrupt()\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kaweth_device*, i32, i8*, i8*, i32, i32, i8*, i32, i32)* @kaweth_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kaweth_control(%struct.kaweth_device* %0, i32 %1, i8* %2, i8* %3, i32 %4, i32 %5, i8* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.kaweth_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.usb_ctrlrequest*, align 8
  %21 = alloca i32, align 4
  store %struct.kaweth_device* %0, %struct.kaweth_device** %11, align 8
  store i32 %1, i32* %12, align 4
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %22 = call i64 (...) @in_interrupt()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %9
  %25 = load %struct.kaweth_device*, %struct.kaweth_device** %11, align 8
  %26 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @netdev_dbg(i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %10, align 4
  br label %70

31:                                               ; preds = %9
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call %struct.usb_ctrlrequest* @kmalloc(i32 40, i32 %32)
  store %struct.usb_ctrlrequest* %33, %struct.usb_ctrlrequest** %20, align 8
  %34 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %20, align 8
  %35 = icmp ne %struct.usb_ctrlrequest* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %10, align 4
  br label %70

39:                                               ; preds = %31
  %40 = load i8*, i8** %14, align 8
  %41 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %20, align 8
  %42 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %20, align 8
  %45 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %15, align 4
  %47 = call i8* @cpu_to_le16(i32 %46)
  %48 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %20, align 8
  %49 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %16, align 4
  %51 = call i8* @cpu_to_le16(i32 %50)
  %52 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %20, align 8
  %53 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %18, align 4
  %55 = call i8* @cpu_to_le16(i32 %54)
  %56 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %20, align 8
  %57 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.kaweth_device*, %struct.kaweth_device** %11, align 8
  %59 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %20, align 8
  %63 = load i8*, i8** %17, align 8
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %19, align 4
  %66 = call i32 @kaweth_internal_control_msg(i32 %60, i32 %61, %struct.usb_ctrlrequest* %62, i8* %63, i32 %64, i32 %65)
  store i32 %66, i32* %21, align 4
  %67 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %20, align 8
  %68 = call i32 @kfree(%struct.usb_ctrlrequest* %67)
  %69 = load i32, i32* %21, align 4
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %39, %36, %24
  %71 = load i32, i32* %10, align 4
  ret i32 %71
}

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local %struct.usb_ctrlrequest* @kmalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @kaweth_internal_control_msg(i32, i32, %struct.usb_ctrlrequest*, i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.usb_ctrlrequest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
