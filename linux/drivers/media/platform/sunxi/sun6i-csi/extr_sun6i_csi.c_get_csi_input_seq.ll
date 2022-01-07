; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_get_csi_input_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_get_csi_input_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_csi_dev = type { i32 }

@CSI_INPUT_SEQ_UYVY = common dso_local global i32 0, align 4
@CSI_INPUT_SEQ_VYUY = common dso_local global i32 0, align 4
@CSI_INPUT_SEQ_YUYV = common dso_local global i32 0, align 4
@CSI_INPUT_SEQ_YVYU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unsupported mbus code: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Unsupported pixformat: 0x%x, defaulting to YUYV\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun6i_csi_dev*, i32, i32)* @get_csi_input_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_csi_input_seq(%struct.sun6i_csi_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sun6i_csi_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sun6i_csi_dev* %0, %struct.sun6i_csi_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = and i32 %8, 61440
  %10 = icmp ne i32 %9, 8192
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %58

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %50 [
    i32 136, label %14
    i32 135, label %14
    i32 134, label %14
    i32 131, label %14
    i32 130, label %14
    i32 133, label %31
    i32 132, label %31
    i32 128, label %31
    i32 129, label %48
  ]

14:                                               ; preds = %12, %12, %12, %12, %12
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %24 [
    i32 143, label %16
    i32 144, label %16
    i32 141, label %18
    i32 142, label %18
    i32 139, label %20
    i32 140, label %20
    i32 138, label %22
    i32 137, label %22
  ]

16:                                               ; preds = %14, %14
  %17 = load i32, i32* @CSI_INPUT_SEQ_UYVY, align 4
  store i32 %17, i32* %4, align 4
  br label %58

18:                                               ; preds = %14, %14
  %19 = load i32, i32* @CSI_INPUT_SEQ_VYUY, align 4
  store i32 %19, i32* %4, align 4
  br label %58

20:                                               ; preds = %14, %14
  %21 = load i32, i32* @CSI_INPUT_SEQ_YUYV, align 4
  store i32 %21, i32* %4, align 4
  br label %58

22:                                               ; preds = %14, %14
  %23 = load i32, i32* @CSI_INPUT_SEQ_YVYU, align 4
  store i32 %23, i32* %4, align 4
  br label %58

24:                                               ; preds = %14
  %25 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %5, align 8
  %26 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dev_warn(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %24
  br label %56

31:                                               ; preds = %12, %12, %12
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %41 [
    i32 143, label %33
    i32 144, label %33
    i32 141, label %35
    i32 142, label %35
    i32 139, label %37
    i32 140, label %37
    i32 138, label %39
    i32 137, label %39
  ]

33:                                               ; preds = %31, %31
  %34 = load i32, i32* @CSI_INPUT_SEQ_VYUY, align 4
  store i32 %34, i32* %4, align 4
  br label %58

35:                                               ; preds = %31, %31
  %36 = load i32, i32* @CSI_INPUT_SEQ_UYVY, align 4
  store i32 %36, i32* %4, align 4
  br label %58

37:                                               ; preds = %31, %31
  %38 = load i32, i32* @CSI_INPUT_SEQ_YVYU, align 4
  store i32 %38, i32* %4, align 4
  br label %58

39:                                               ; preds = %31, %31
  %40 = load i32, i32* @CSI_INPUT_SEQ_YUYV, align 4
  store i32 %40, i32* %4, align 4
  br label %58

41:                                               ; preds = %31
  %42 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %5, align 8
  %43 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @dev_warn(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %41
  br label %56

48:                                               ; preds = %12
  %49 = load i32, i32* @CSI_INPUT_SEQ_YUYV, align 4
  store i32 %49, i32* %4, align 4
  br label %58

50:                                               ; preds = %12
  %51 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %5, align 8
  %52 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @dev_warn(i32 %53, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %50, %47, %30
  %57 = load i32, i32* @CSI_INPUT_SEQ_YUYV, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %48, %39, %37, %35, %33, %22, %20, %18, %16, %11
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
