; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/zr364xx/extr_zr364xx.c_zr364xx_start_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/zr364xx/extr_zr364xx.c_zr364xx_start_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zr364xx_camera = type { i32, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"start acquire\0A\00", align 1
@FRAMES = common dso_local global i32 0, align 4
@ZR364XX_READ_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zr364xx_camera*)* @zr364xx_start_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zr364xx_start_acquire(%struct.zr364xx_camera* %0) #0 {
  %2 = alloca %struct.zr364xx_camera*, align 8
  %3 = alloca i32, align 4
  store %struct.zr364xx_camera* %0, %struct.zr364xx_camera** %2, align 8
  %4 = call i32 @DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %2, align 8
  %6 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %5, i32 0, i32 0
  store i32 -1, i32* %6, align 8
  %7 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %2, align 8
  %8 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %31, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @FRAMES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load i32, i32* @ZR364XX_READ_IDLE, align 4
  %15 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %2, align 8
  %16 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 %14, i32* %22, align 8
  %23 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %2, align 8
  %24 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %13
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %9

34:                                               ; preds = %9
  %35 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %2, align 8
  %36 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  ret i32 0
}

declare dso_local i32 @DBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
