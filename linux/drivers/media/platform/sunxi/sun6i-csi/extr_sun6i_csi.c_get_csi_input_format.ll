; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_get_csi_input_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_get_csi_input_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_csi_dev = type { i32 }

@CSI_INPUT_FORMAT_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Select YUV422 as default input format of CSI.\0A\00", align 1
@CSI_INPUT_FORMAT_YUV422 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun6i_csi_dev*, i32, i32)* @get_csi_input_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_csi_input_format(%struct.sun6i_csi_dev* %0, i32 %1, i32 %2) #0 {
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
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @CSI_INPUT_FORMAT_RAW, align 4
  store i32 %12, i32* %4, align 4
  br label %24

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %17 [
    i32 129, label %15
    i32 128, label %15
    i32 131, label %15
    i32 130, label %15
  ]

15:                                               ; preds = %13, %13, %13, %13
  %16 = load i32, i32* @CSI_INPUT_FORMAT_RAW, align 4
  store i32 %16, i32* %4, align 4
  br label %24

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %5, align 8
  %20 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @CSI_INPUT_FORMAT_YUV422, align 4
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %18, %15, %11
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
