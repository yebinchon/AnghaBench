; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_driver.c_uvc_format_by_guid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_driver.c_uvc_format_by_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_format_desc = type { i32 }

@uvc_fmts = common dso_local global %struct.uvc_format_desc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uvc_format_desc* (i32*)* @uvc_format_by_guid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uvc_format_desc* @uvc_format_by_guid(i32* %0) #0 {
  %2 = alloca %struct.uvc_format_desc*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load %struct.uvc_format_desc*, %struct.uvc_format_desc** @uvc_fmts, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.uvc_format_desc* %6)
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %28, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %8
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.uvc_format_desc*, %struct.uvc_format_desc** @uvc_fmts, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.uvc_format_desc, %struct.uvc_format_desc* %14, i64 %16
  %18 = getelementptr inbounds %struct.uvc_format_desc, %struct.uvc_format_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @memcmp(i32* %13, i32 %19, i32 16)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load %struct.uvc_format_desc*, %struct.uvc_format_desc** @uvc_fmts, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.uvc_format_desc, %struct.uvc_format_desc* %23, i64 %25
  store %struct.uvc_format_desc* %26, %struct.uvc_format_desc** %2, align 8
  br label %32

27:                                               ; preds = %12
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %8

31:                                               ; preds = %8
  store %struct.uvc_format_desc* null, %struct.uvc_format_desc** %2, align 8
  br label %32

32:                                               ; preds = %31, %22
  %33 = load %struct.uvc_format_desc*, %struct.uvc_format_desc** %2, align 8
  ret %struct.uvc_format_desc* %33
}

declare dso_local i32 @ARRAY_SIZE(%struct.uvc_format_desc*) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
