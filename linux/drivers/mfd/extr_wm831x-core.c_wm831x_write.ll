; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-core.c_wm831x_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-core.c_wm831x_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x = type { i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Write %04x to R%d(0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm831x*, i16, i32, i8*)* @wm831x_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_write(%struct.wm831x* %0, i16 zeroext %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm831x*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wm831x* %0, %struct.wm831x** %6, align 8
  store i16 %1, i16* %7, align 2
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = srem i32 %15, 2
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = icmp sle i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %74, %4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %8, align 4
  %25 = sdiv i32 %24, 2
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %77

27:                                               ; preds = %22
  %28 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %29 = load i16, i16* %7, align 2
  %30 = call i64 @wm831x_reg_locked(%struct.wm831x* %28, i16 zeroext %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EPERM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %78

35:                                               ; preds = %27
  %36 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %37 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i16, i16* %7, align 2
  %45 = zext i16 %44 to i32
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %45, %46
  %48 = trunc i32 %47 to i16
  %49 = load i16, i16* %7, align 2
  %50 = zext i16 %49 to i32
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %50, %51
  %53 = trunc i32 %52 to i16
  %54 = call i32 @dev_vdbg(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %43, i16 zeroext %48, i16 zeroext %53)
  %55 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %56 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i16, i16* %7, align 2
  %59 = zext i16 %58 to i32
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %59, %60
  %62 = trunc i32 %61 to i16
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @regmap_write(i32 %57, i16 zeroext %62, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %35
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %5, align 4
  br label %78

73:                                               ; preds = %35
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %22

77:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %71, %32
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @wm831x_reg_locked(%struct.wm831x*, i16 zeroext) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @regmap_write(i32, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
