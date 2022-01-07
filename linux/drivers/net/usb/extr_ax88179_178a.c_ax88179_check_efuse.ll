; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_check_efuse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_check_efuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }

@AX_ACCESS_EFUS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32*)* @ax88179_check_efuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88179_check_efuse(%struct.usbnet* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [64 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %10 = load i32, i32* @AX_ACCESS_EFUS, align 4
  %11 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %12 = call i64 @ax88179_read_cmd(%struct.usbnet* %9, i32 %10, i32 0, i32 64, i32 64, i32* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %63

17:                                               ; preds = %2
  %18 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %19 = load i32, i32* %18, align 16
  %20 = icmp eq i32 %19, 255
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %63

24:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %35, %24
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 64
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %29, %33
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %25

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %42, %38
  %40 = load i32, i32* %8, align 4
  %41 = icmp sgt i32 %40, 255
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 255
  %45 = load i32, i32* %8, align 4
  %46 = ashr i32 %45, 8
  %47 = and i32 %46, 255
  %48 = add nsw i32 %44, %47
  store i32 %48, i32* %8, align 4
  br label %39

49:                                               ; preds = %39
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 255
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %63

55:                                               ; preds = %49
  %56 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 51
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 8
  %59 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 52
  %60 = load i32, i32* %59, align 16
  %61 = or i32 %58, %60
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %55, %52, %21, %14
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @ax88179_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
