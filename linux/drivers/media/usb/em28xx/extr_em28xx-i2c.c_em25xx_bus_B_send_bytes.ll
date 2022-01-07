; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-i2c.c_em25xx_bus_B_send_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-i2c.c_em25xx_bus_B_send_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32 (%struct.em28xx*, i32, i32, i32*, i32)*, i32 (%struct.em28xx*, i32, i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"writing to i2c device at 0x%x failed (error=%i)\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"%i bytes write to i2c device at 0x%x requested, but %i bytes written\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Bus B R08 returned 0x%02x: I2C ACK error\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*, i32, i32*, i32)* @em25xx_bus_B_send_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em25xx_bus_B_send_bytes(%struct.em28xx* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.em28xx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sgt i32 %14, 64
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %4
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %74

19:                                               ; preds = %13
  %20 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %21 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %20, i32 0, i32 0
  %22 = load i32 (%struct.em28xx*, i32, i32, i32*, i32)*, i32 (%struct.em28xx*, i32, i32, i32*, i32)** %21, align 8
  %23 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 %22(%struct.em28xx* %23, i32 6, i32 %24, i32* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %19
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %36 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 (i32*, i8*, i32, i32, ...) @dev_warn(i32* %38, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %5, align 4
  br label %74

43:                                               ; preds = %31
  %44 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %45 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 (i32*, i8*, i32, i32, ...) @dev_warn(i32* %47, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %74

54:                                               ; preds = %19
  %55 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %56 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %55, i32 0, i32 1
  %57 = load i32 (%struct.em28xx*, i32, i32)*, i32 (%struct.em28xx*, i32, i32)** %56, align 8
  %58 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %59 = call i32 %57(%struct.em28xx* %58, i32 8, i32 0)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %5, align 4
  br label %74

64:                                               ; preds = %54
  %65 = load i32, i32* %10, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @ENXIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %67, %62, %43, %34, %16
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @dprintk(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
