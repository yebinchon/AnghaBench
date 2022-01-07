; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-input.c_em28xx_ir_change_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-input.c_em28xx_ir_change_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.em28xx_IR* }
%struct.em28xx_IR = type { %struct.em28xx* }
%struct.em28xx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"Unrecognized em28xx chip id 0x%02x: IR not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32*)* @em28xx_ir_change_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_ir_change_protocol(%struct.rc_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.em28xx_IR*, align 8
  %7 = alloca %struct.em28xx*, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %9 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %8, i32 0, i32 0
  %10 = load %struct.em28xx_IR*, %struct.em28xx_IR** %9, align 8
  store %struct.em28xx_IR* %10, %struct.em28xx_IR** %6, align 8
  %11 = load %struct.em28xx_IR*, %struct.em28xx_IR** %6, align 8
  %12 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %11, i32 0, i32 0
  %13 = load %struct.em28xx*, %struct.em28xx** %12, align 8
  store %struct.em28xx* %13, %struct.em28xx** %7, align 8
  %14 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %15 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %25 [
    i32 131, label %17
    i32 129, label %17
    i32 128, label %21
    i32 130, label %21
    i32 133, label %21
    i32 132, label %21
  ]

17:                                               ; preds = %2, %2
  %18 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @em2860_ir_change_protocol(%struct.rc_dev* %18, i32* %19)
  store i32 %20, i32* %3, align 4
  br label %38

21:                                               ; preds = %2, %2, %2, %2
  %22 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @em2874_ir_change_protocol(%struct.rc_dev* %22, i32* %23)
  store i32 %24, i32* %3, align 4
  br label %38

25:                                               ; preds = %2
  %26 = load %struct.em28xx_IR*, %struct.em28xx_IR** %6, align 8
  %27 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %26, i32 0, i32 0
  %28 = load %struct.em28xx*, %struct.em28xx** %27, align 8
  %29 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %33 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %25, %21, %17
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @em2860_ir_change_protocol(%struct.rc_dev*, i32*) #1

declare dso_local i32 @em2874_ir_change_protocol(%struct.rc_dev*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
