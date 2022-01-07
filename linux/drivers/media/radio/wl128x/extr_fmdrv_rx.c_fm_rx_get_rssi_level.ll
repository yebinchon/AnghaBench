; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_rx.c_fm_rx_get_rssi_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_rx.c_fm_rx_get_rssi_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Invalid memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RSSI_LVL_GET = common dso_local global i32 0, align 4
@REG_RD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm_rx_get_rssi_level(%struct.fmdev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fmdev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fmdev* %0, %struct.fmdev** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = call i32 @fmerr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %28

15:                                               ; preds = %2
  %16 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %17 = load i32, i32* @RSSI_LVL_GET, align 4
  %18 = load i32, i32* @REG_RD, align 4
  %19 = call i32 @fmc_send_cmd(%struct.fmdev* %16, i32 %17, i32 %18, i32* null, i32 2, i32* %6, i32* %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %28

24:                                               ; preds = %15
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @be16_to_cpu(i32 %25)
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %22, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @fmerr(i8*) #1

declare dso_local i32 @fmc_send_cmd(%struct.fmdev*, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
