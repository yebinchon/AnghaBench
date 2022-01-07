; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-gpio.c_mxl111sf_get_gpi_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-gpio.c_mxl111sf_get_gpi_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_state = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"(0x%02x)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl111sf_state*, i32, i32*)* @mxl111sf_get_gpi_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl111sf_get_gpi_state(%struct.mxl111sf_state* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxl111sf_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @mxl_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32*, i32** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %55 [
    i32 0, label %14
    i32 1, label %14
    i32 2, label %14
    i32 3, label %14
    i32 4, label %28
    i32 5, label %28
    i32 6, label %28
    i32 7, label %28
    i32 8, label %41
    i32 9, label %41
    i32 10, label %41
  ]

14:                                               ; preds = %3, %3, %3, %3
  %15 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %5, align 8
  %16 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %15, i32 35, i32* %9)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @mxl_fail(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %59

21:                                               ; preds = %14
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 4
  %25 = ashr i32 %22, %24
  %26 = and i32 %25, 1
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  br label %58

28:                                               ; preds = %3, %3, %3, %3
  %29 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %5, align 8
  %30 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %29, i32 47, i32* %9)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @mxl_fail(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %59

35:                                               ; preds = %28
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %6, align 4
  %38 = ashr i32 %36, %37
  %39 = and i32 %38, 1
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  br label %58

41:                                               ; preds = %3, %3, %3
  %42 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %5, align 8
  %43 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %42, i32 34, i32* %9)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @mxl_fail(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %59

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 3
  %52 = ashr i32 %49, %51
  %53 = and i32 %52, 1
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  br label %58

55:                                               ; preds = %3
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %61

58:                                               ; preds = %48, %35, %21
  br label %59

59:                                               ; preds = %58, %47, %34, %20
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %55
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @mxl_debug(i8*, i32) #1

declare dso_local i32 @mxl111sf_read_reg(%struct.mxl111sf_state*, i32, i32*) #1

declare dso_local i32 @mxl_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
