; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-i2c.c_em28xx_i2c_recv_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-i2c.c_em28xx_i2c_recv_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32 (%struct.em28xx*, i32, i32, i32*, i32)*, i32 (%struct.em28xx*, i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"reading from i2c device at 0x%x failed (error=%i)\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"failed to get i2c transfer status from bridge register (error=%i)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"I2C ACK error on writing to addr 0x%02x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"write to i2c device at 0x%x timed out (status=%i)\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"write to i2c device at 0x%x failed with unknown error (status=%i)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*, i32, i32*, i32)* @em28xx_i2c_recv_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_i2c_recv_bytes(%struct.em28xx* %0, i32 %1, i32* %2, i32 %3) #0 {
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
  br label %90

19:                                               ; preds = %13
  %20 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %21 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %20, i32 0, i32 0
  %22 = load i32 (%struct.em28xx*, i32, i32, i32*, i32)*, i32 (%struct.em28xx*, i32, i32, i32*, i32)** %21, align 8
  %23 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 %22(%struct.em28xx* %23, i32 2, i32 %24, i32* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %19
  %31 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %32 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %34, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %90

39:                                               ; preds = %19
  %40 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %41 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %40, i32 0, i32 1
  %42 = load i32 (%struct.em28xx*, i32)*, i32 (%struct.em28xx*, i32)** %41, align 8
  %43 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %44 = call i32 %42(%struct.em28xx* %43, i32 5)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %5, align 4
  br label %90

49:                                               ; preds = %39
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %54 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %10, align 4
  %58 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %56, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %5, align 4
  br label %90

60:                                               ; preds = %49
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %61, 16
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @ENXIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %90

68:                                               ; preds = %60
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 4
  br i1 %73, label %74, label %80

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 (i32, i8*, i32, ...) @dprintk(i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32, i32* @ETIMEDOUT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %90

80:                                               ; preds = %71
  %81 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %82 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %84, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %80, %74, %63, %52, %47, %30, %16
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @dev_warn(i32*, i8*, i32, ...) #1

declare dso_local i32 @dprintk(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
