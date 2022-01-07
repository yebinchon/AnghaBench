; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-i2c.c_em2800_i2c_recv_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-i2c.c_em2800_i2c_recv_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { {}*, i32 (%struct.em28xx*, i32)*, i32 (%struct.em28xx*, i32, i32, i32*, i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"failed to trigger read from i2c address 0x%x (error=%i)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"R05 returned 0x%02x: I2C ACK error\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"failed to get i2c transfer status from bridge register (error=%i)\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"read from i2c device at 0x%x timed out\0A\00", align 1
@.str.4 = private unnamed_addr constant [102 x i8] c"reading from i2c device at 0x%x failed: couldn't get the received message from the bridge (error=%i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*, i32, i32*, i32)* @em2800_i2c_recv_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em2800_i2c_recv_bytes(%struct.em28xx* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.em28xx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %16 = call i64 @em28xx_i2c_timeout(%struct.em28xx* %15)
  %17 = add i64 %14, %16
  store i64 %17, i64* %10, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 4
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %4
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %161

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 132, %27
  %29 = sub nsw i32 %28, 1
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32 %31, i32* %32, align 16
  %33 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %34 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i32 (%struct.em28xx*, i32, i32*, i32)**
  %36 = load i32 (%struct.em28xx*, i32, i32*, i32)*, i32 (%struct.em28xx*, i32, i32*, i32)** %35, align 8
  %37 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %39 = call i32 %36(%struct.em28xx* %37, i32 4, i32* %38, i32 2)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 2
  br i1 %41, label %42, label %59

42:                                               ; preds = %26
  %43 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %44 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %46, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* %12, align 4
  br label %57

54:                                               ; preds = %42
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  br label %57

57:                                               ; preds = %54, %52
  %58 = phi i32 [ %53, %52 ], [ %56, %54 ]
  store i32 %58, i32* %5, align 4
  br label %161

59:                                               ; preds = %26
  br label %60

60:                                               ; preds = %98, %59
  %61 = load i64, i64* %10, align 8
  %62 = call i64 @time_is_after_jiffies(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %100

64:                                               ; preds = %60
  %65 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %66 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %65, i32 0, i32 1
  %67 = load i32 (%struct.em28xx*, i32)*, i32 (%struct.em28xx*, i32)** %66, align 8
  %68 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %69 = call i32 %67(%struct.em28xx* %68, i32 5)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 132, %71
  %73 = sub nsw i32 %72, 1
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %100

76:                                               ; preds = %64
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 148, %78
  %80 = sub nsw i32 %79, 1
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @ENXIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %161

87:                                               ; preds = %76
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %92 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %91, i32 0, i32 3
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %12, align 4
  %96 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %94, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %5, align 4
  br label %161

98:                                               ; preds = %87
  %99 = call i32 @usleep_range(i32 5000, i32 6000)
  br label %60

100:                                              ; preds = %75, %60
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 132, %102
  %104 = sub nsw i32 %103, 1
  %105 = icmp ne i32 %101, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @dprintk(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %106, %100
  %110 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %111 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %110, i32 0, i32 2
  %112 = load i32 (%struct.em28xx*, i32, i32, i32*, i32)*, i32 (%struct.em28xx*, i32, i32, i32*, i32)** %111, align 8
  %113 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sub nsw i32 4, %114
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %117 = load i32, i32* %9, align 4
  %118 = call i32 %112(%struct.em28xx* %113, i32 0, i32 %115, i32* %116, i32 %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %139

122:                                              ; preds = %109
  %123 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %124 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %123, i32 0, i32 3
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %126, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i32 %127, i32 %128)
  %130 = load i32, i32* %12, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %122
  %133 = load i32, i32* %12, align 4
  br label %137

134:                                              ; preds = %122
  %135 = load i32, i32* @EIO, align 4
  %136 = sub nsw i32 0, %135
  br label %137

137:                                              ; preds = %134, %132
  %138 = phi i32 [ %133, %132 ], [ %136, %134 ]
  store i32 %138, i32* %5, align 4
  br label %161

139:                                              ; preds = %109
  store i32 0, i32* %13, align 4
  br label %140

140:                                              ; preds = %156, %139
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %159

144:                                              ; preds = %140
  %145 = load i32, i32* %9, align 4
  %146 = sub nsw i32 %145, 1
  %147 = load i32, i32* %13, align 4
  %148 = sub nsw i32 %146, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %8, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %151, i32* %155, align 4
  br label %156

156:                                              ; preds = %144
  %157 = load i32, i32* %13, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %13, align 4
  br label %140

159:                                              ; preds = %140
  %160 = load i32, i32* %12, align 4
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %159, %137, %90, %82, %57, %23
  %162 = load i32, i32* %5, align 4
  ret i32 %162
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
