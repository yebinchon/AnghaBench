; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-i2c.c_em28xx_i2c_send_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-i2c.c_em28xx_i2c_send_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32 (%struct.em28xx*, i32, i32, i32*, i32)*, i32 (%struct.em28xx*, i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"writing to i2c device at 0x%x failed (error=%i)\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"%i bytes write to i2c device at 0x%x requested, but %i bytes written\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"I2C ACK error on writing to addr 0x%02x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"failed to get i2c transfer status from bridge register (error=%i)\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"write to i2c device at 0x%x timed out (status=%i)\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [67 x i8] c"write to i2c device at 0x%x failed with unknown error (status=%i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*, i32, i32*, i32, i32)* @em28xx_i2c_send_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_i2c_send_bytes(%struct.em28xx* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.em28xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %16 = call i64 @em28xx_i2c_timeout(%struct.em28xx* %15)
  %17 = add i64 %14, %16
  store i64 %17, i64* %12, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  %22 = icmp sgt i32 %21, 64
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %5
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %123

26:                                               ; preds = %20
  %27 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %28 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %27, i32 0, i32 0
  %29 = load i32 (%struct.em28xx*, i32, i32, i32*, i32)*, i32 (%struct.em28xx*, i32, i32, i32*, i32)** %28, align 8
  %30 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 2, i32 3
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 %29(%struct.em28xx* %30, i32 %34, i32 %35, i32* %36, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %26
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %47 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %49, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %6, align 4
  br label %123

54:                                               ; preds = %42
  %55 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %56 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %58, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %123

65:                                               ; preds = %26
  br label %66

66:                                               ; preds = %99, %65
  %67 = load i64, i64* %12, align 8
  %68 = call i64 @time_is_after_jiffies(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %101

70:                                               ; preds = %66
  %71 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %72 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %71, i32 0, i32 1
  %73 = load i32 (%struct.em28xx*, i32)*, i32 (%struct.em28xx*, i32)** %72, align 8
  %74 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %75 = call i32 %73(%struct.em28xx* %74, i32 5)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %6, align 4
  br label %123

80:                                               ; preds = %70
  %81 = load i32, i32* %13, align 4
  %82 = icmp eq i32 %81, 16
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @ENXIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %6, align 4
  br label %123

88:                                               ; preds = %80
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %93 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %13, align 4
  %97 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %95, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %13, align 4
  store i32 %98, i32* %6, align 4
  br label %123

99:                                               ; preds = %88
  %100 = call i32 @usleep_range(i32 5000, i32 6000)
  br label %66

101:                                              ; preds = %66
  %102 = load i32, i32* %13, align 4
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %13, align 4
  %106 = icmp eq i32 %105, 4
  br i1 %106, label %107, label %113

107:                                              ; preds = %104, %101
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %13, align 4
  %110 = call i32 (i32, i8*, i32, ...) @dprintk(i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %108, i32 %109)
  %111 = load i32, i32* @ETIMEDOUT, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  br label %123

113:                                              ; preds = %104
  %114 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %115 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %114, i32 0, i32 2
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %13, align 4
  %120 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %117, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i32 %118, i32 %119)
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %113, %107, %91, %83, %78, %54, %45, %23
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i64 @em28xx_i2c_timeout(%struct.em28xx*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, ...) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i32 @dprintk(i32, i8*, i32, ...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
