; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-i2c.c_em2800_i2c_send_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-i2c.c_em2800_i2c_send_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { {}*, i32 (%struct.em28xx*, i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"failed to trigger write to i2c address 0x%x (error=%i)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"R05 returned 0x%02x: I2C ACK error\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"failed to get i2c transfer status from bridge register (error=%i)\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"write to i2c device at 0x%x timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*, i32, i32*, i32)* @em2800_i2c_send_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em2800_i2c_send_bytes(%struct.em28xx* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.em28xx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [6 x i32], align 16
  store %struct.em28xx* %0, %struct.em28xx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* @jiffies, align 8
  %14 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %15 = call i64 @em28xx_i2c_timeout(%struct.em28xx* %14)
  %16 = add i64 %13, %15
  store i64 %16, i64* %10, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp sgt i32 %20, 4
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %4
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %142

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 128, %26
  %28 = sub nsw i32 %27, 1
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 5
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 4
  store i32 %30, i32* %31, align 16
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 3
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %43

38:                                               ; preds = %25
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 2
  store i32 %41, i32* %42, align 8
  br label %43

43:                                               ; preds = %38, %25
  %44 = load i32, i32* %9, align 4
  %45 = icmp sgt i32 %44, 2
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 1
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %43
  %52 = load i32, i32* %9, align 4
  %53 = icmp sgt i32 %52, 3
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  store i32 %57, i32* %58, align 16
  br label %59

59:                                               ; preds = %54, %51
  %60 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %61 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %60, i32 0, i32 0
  %62 = bitcast {}** %61 to i32 (%struct.em28xx*, i32, i32*, i32)**
  %63 = load i32 (%struct.em28xx*, i32, i32*, i32)*, i32 (%struct.em28xx*, i32, i32*, i32)** %62, align 8
  %64 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sub nsw i32 4, %65
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 4, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 %69
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 2, %71
  %73 = call i32 %63(%struct.em28xx* %64, i32 %66, i32* %70, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 2, %75
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %59
  %79 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %80 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %82, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %78
  %89 = load i32, i32* %11, align 4
  br label %93

90:                                               ; preds = %78
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  br label %93

93:                                               ; preds = %90, %88
  %94 = phi i32 [ %89, %88 ], [ %92, %90 ]
  store i32 %94, i32* %5, align 4
  br label %142

95:                                               ; preds = %59
  br label %96

96:                                               ; preds = %135, %95
  %97 = load i64, i64* %10, align 8
  %98 = call i64 @time_is_after_jiffies(i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %137

100:                                              ; preds = %96
  %101 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %102 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %101, i32 0, i32 1
  %103 = load i32 (%struct.em28xx*, i32)*, i32 (%struct.em28xx*, i32)** %102, align 8
  %104 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %105 = call i32 %103(%struct.em28xx* %104, i32 5)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 128, %107
  %109 = sub nsw i32 %108, 1
  %110 = icmp eq i32 %106, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %100
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %5, align 4
  br label %142

113:                                              ; preds = %100
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 148, %115
  %117 = sub nsw i32 %116, 1
  %118 = icmp eq i32 %114, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @ENXIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %5, align 4
  br label %142

124:                                              ; preds = %113
  %125 = load i32, i32* %11, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %124
  %128 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %129 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %128, i32 0, i32 2
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %11, align 4
  %133 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %131, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %11, align 4
  store i32 %134, i32* %5, align 4
  br label %142

135:                                              ; preds = %124
  %136 = call i32 @usleep_range(i32 5000, i32 6000)
  br label %96

137:                                              ; preds = %96
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @dprintk(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* @ETIMEDOUT, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %137, %127, %119, %111, %93, %22
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i64 @em28xx_i2c_timeout(%struct.em28xx*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, ...) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i32 @dprintk(i32, i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
