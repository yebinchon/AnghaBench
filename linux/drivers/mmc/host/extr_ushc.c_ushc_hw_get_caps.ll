; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_ushc.c_ushc_hw_get_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_ushc.c_ushc_hw_get_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ushc_data = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@USHC_GET_CAPS = common dso_local global i32 0, align 4
@USHC_GET_CAPS_TYPE = common dso_local global i32 0, align 4
@USHC_GET_CAPS_VERSION_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"controller version %d is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ushc_data*)* @ushc_hw_get_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ushc_hw_get_caps(%struct.ushc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ushc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ushc_data* %0, %struct.ushc_data** %3, align 8
  %6 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %7 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %10 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = call i32 @usb_rcvctrlpipe(%struct.TYPE_3__* %11, i32 0)
  %13 = load i32, i32* @USHC_GET_CAPS, align 4
  %14 = load i32, i32* @USHC_GET_CAPS_TYPE, align 4
  %15 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %16 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %15, i32 0, i32 0
  %17 = call i32 @usb_control_msg(%struct.TYPE_3__* %8, i32 %12, i32 %13, i32 %14, i32 0, i32 0, i32* %16, i32 4, i32 100)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %46

22:                                               ; preds = %1
  %23 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %24 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @le32_to_cpu(i32 %25)
  %27 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %28 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %30 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @USHC_GET_CAPS_VERSION_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 2
  br i1 %35, label %36, label %45

36:                                               ; preds = %22
  %37 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %38 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %36, %20
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @usb_control_msg(%struct.TYPE_3__*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
