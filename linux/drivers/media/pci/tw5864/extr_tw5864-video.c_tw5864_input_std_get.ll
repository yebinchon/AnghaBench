; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_input_std_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_input_std_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw5864_input = type { i32, %struct.tw5864_dev* }
%struct.tw5864_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"Video format detection is in progress, please wait\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tw5864_input*, i32*)* @tw5864_input_std_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw5864_input_std_get(%struct.tw5864_input* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tw5864_input*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tw5864_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.tw5864_input* %0, %struct.tw5864_input** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %9 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %8, i32 0, i32 1
  %10 = load %struct.tw5864_dev*, %struct.tw5864_dev** %9, align 8
  store %struct.tw5864_dev* %10, %struct.tw5864_dev** %6, align 8
  %11 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %12 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @TW5864_INDIR_VIN_E(i32 %13)
  %15 = call i32 @tw_indir_readb(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 112
  %18 = ashr i32 %17, 4
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 128
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load %struct.tw5864_dev*, %struct.tw5864_dev** %6, align 8
  %25 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_dbg(i32* %27, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @tw_indir_readb(i32) #1

declare dso_local i32 @TW5864_INDIR_VIN_E(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
