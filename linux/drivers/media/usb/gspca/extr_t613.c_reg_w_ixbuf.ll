; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_t613.c_reg_w_ixbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_t613.c_reg_w_ixbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32* }

@USB_BUF_SZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32, i32*, i32)* @reg_w_ixbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_w_ixbuf(%struct.gspca_dev* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = mul nsw i32 %12, 2
  %14 = load i32, i32* @USB_BUF_SZ, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %18 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %11, align 8
  store i32* %19, i32** %10, align 8
  br label %29

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32* @kmalloc_array(i32 %21, i32 2, i32 %22)
  store i32* %23, i32** %11, align 8
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %69

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %35, %29
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %9, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %10, align 8
  store i32 %36, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %7, align 8
  %42 = load i32, i32* %40, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %10, align 8
  store i32 %42, i32* %43, align 4
  br label %31

45:                                               ; preds = %31
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %47 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %50 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @usb_sndctrlpipe(i32 %51, i32 0)
  %53 = load i32, i32* @USB_DIR_OUT, align 4
  %54 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %57 = or i32 %55, %56
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %8, align 4
  %60 = mul nsw i32 %59, 2
  %61 = call i32 @usb_control_msg(i32 %48, i32 %52, i32 0, i32 %57, i32 1, i32 0, i32* %58, i32 %60, i32 500)
  %62 = load i32, i32* %8, align 4
  %63 = mul nsw i32 %62, 2
  %64 = load i32, i32* @USB_BUF_SZ, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %45
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @kfree(i32* %67)
  br label %69

69:                                               ; preds = %26, %66, %45
  ret void
}

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
