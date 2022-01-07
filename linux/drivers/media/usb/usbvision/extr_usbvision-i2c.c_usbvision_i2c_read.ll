; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-i2c.c_usbvision_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-i2c.c_usbvision_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_usbvision*, i8, i8*, i16)* @usbvision_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvision_i2c_read(%struct.usb_usbvision* %0, i8 zeroext %1, i8* %2, i16 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_usbvision*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i16, align 2
  %10 = alloca [4 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8* %2, i8** %8, align 8
  store i16 %3, i16* %9, align 2
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %75, %4
  %16 = load i16, i16* %9, align 2
  %17 = sext i16 %16 to i32
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %76

19:                                               ; preds = %15
  %20 = load i16, i16* %9, align 2
  %21 = sext i16 %20 to i32
  %22 = icmp sgt i32 %21, 3
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %27

24:                                               ; preds = %19
  %25 = load i16, i16* %9, align 2
  %26 = sext i16 %25 to i32
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi i32 [ 4, %23 ], [ %26, %24 ]
  store i32 %28, i32* %14, align 4
  %29 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %30 = load i8, i8* %7, align 1
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @usbvision_i2c_read_max4(%struct.usb_usbvision* %29, i8 zeroext %30, i8* %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %27
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %53, %36
  %38 = load i32, i32* %12, align 4
  %39 = load i16, i16* %9, align 2
  %40 = sext i16 %39 to i32
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %47, i64 %51
  store i8 %46, i8* %52, align 1
  br label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %37

56:                                               ; preds = %37
  %57 = load i32, i32* %14, align 4
  %58 = load i16, i16* %9, align 2
  %59 = sext i16 %58 to i32
  %60 = sub nsw i32 %59, %57
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %9, align 2
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %13, align 4
  br label %75

65:                                               ; preds = %27
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  br label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @EFAULT, align 4
  %72 = sub nsw i32 0, %71
  br label %73

73:                                               ; preds = %70, %68
  %74 = phi i32 [ %69, %68 ], [ %72, %70 ]
  store i32 %74, i32* %5, align 4
  br label %78

75:                                               ; preds = %56
  br label %15

76:                                               ; preds = %15
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %73
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @usbvision_i2c_read_max4(%struct.usb_usbvision*, i8 zeroext, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
