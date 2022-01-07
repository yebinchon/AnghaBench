; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_get_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_get_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RTL8152_REQ_GET_REGS = common dso_local global i32 0, align 4
@RTL8152_REQT_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8152*, i32, i32, i32, i8*)* @get_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_registers(%struct.r8152* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8152*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.r8152* %0, %struct.r8152** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kmalloc(i32 %14, i32 %15)
  store i8* %16, i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %52

22:                                               ; preds = %5
  %23 = load %struct.r8152*, %struct.r8152** %7, align 8
  %24 = getelementptr inbounds %struct.r8152, %struct.r8152* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.r8152*, %struct.r8152** %7, align 8
  %27 = getelementptr inbounds %struct.r8152, %struct.r8152* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @usb_rcvctrlpipe(i32 %28, i32 0)
  %30 = load i32, i32* @RTL8152_REQ_GET_REGS, align 4
  %31 = load i32, i32* @RTL8152_REQT_READ, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i8*, i8** %13, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @usb_control_msg(i32 %25, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i8* %34, i32 %35, i32 500)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %22
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @memset(i8* %40, i32 255, i32 %41)
  br label %48

43:                                               ; preds = %22
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @memcpy(i8* %44, i8* %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %39
  %49 = load i8*, i8** %13, align 8
  %50 = call i32 @kfree(i8* %49)
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %48, %19
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
