; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_ushc.c_ushc_set_bus_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_ushc.c_ushc_set_bus_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ushc_data = type { i32, i32 }

@USHC_HOST_CTRL_HIGH_SPD = common dso_local global i32 0, align 4
@USHC_CLK_FREQ = common dso_local global i32 0, align 4
@USHC_CLK_FREQ_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ushc_data*, i32, i32)* @ushc_set_bus_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ushc_set_bus_freq(%struct.ushc_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ushc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ushc_data* %0, %struct.ushc_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 400000, i32* %6, align 4
  br label %12

12:                                               ; preds = %11, %3
  %13 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %14 = load i32, i32* @USHC_HOST_CTRL_HIGH_SPD, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @USHC_HOST_CTRL_HIGH_SPD, align 4
  br label %20

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  %22 = call i32 @ushc_hw_set_host_ctrl(%struct.ushc_data* %13, i32 %14, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %51

27:                                               ; preds = %20
  %28 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %29 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %32 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @usb_sndctrlpipe(i32 %33, i32 0)
  %35 = load i32, i32* @USHC_CLK_FREQ, align 4
  %36 = load i32, i32* @USHC_CLK_FREQ_TYPE, align 4
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 65535
  %39 = load i32, i32* %6, align 4
  %40 = ashr i32 %39, 16
  %41 = and i32 %40, 65535
  %42 = call i32 @usb_control_msg(i32 %30, i32 %34, i32 %35, i32 %36, i32 %38, i32 %41, i32* null, i32 0, i32 100)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %27
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %51

47:                                               ; preds = %27
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %50 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %45, %25
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @ushc_hw_set_host_ctrl(%struct.ushc_data*, i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
