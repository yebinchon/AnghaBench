; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx.c_stv06xx_write_sensor_words.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx.c_stv06xx_write_sensor_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32*, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.gspca_dev = type { i32 }

@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"I2C: Command buffer contains %d entries\0A\00", align 1
@I2C_BUFFER_LENGTH = common dso_local global i32 0, align 4
@I2C_MAX_WORDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"I2C: Writing 0x%04x to reg 0x%02x\0A\00", align 1
@I2C_WRITE_CMD = common dso_local global i32 0, align 4
@STV06XX_URB_MSG_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stv06xx_write_sensor_words(%struct.sd* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gspca_dev*, align 8
  %12 = alloca %struct.usb_device*, align 8
  %13 = alloca i32*, align 8
  store %struct.sd* %0, %struct.sd** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.sd*, %struct.sd** %5, align 8
  %15 = bitcast %struct.sd* %14 to %struct.gspca_dev*
  store %struct.gspca_dev* %15, %struct.gspca_dev** %11, align 8
  %16 = load %struct.sd*, %struct.sd** %5, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  store %struct.usb_device* %19, %struct.usb_device** %12, align 8
  %20 = load %struct.sd*, %struct.sd** %5, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %13, align 8
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %11, align 8
  %25 = load i32, i32* @D_CONF, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 (%struct.gspca_dev*, i32, i8*, i32, ...) @gspca_dbg(%struct.gspca_dev* %24, i32 %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %132, %3
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %133

32:                                               ; preds = %28
  %33 = load i32*, i32** %13, align 8
  %34 = load i32, i32* @I2C_BUFFER_LENGTH, align 4
  %35 = call i32 @memset(i32* %33, i32 0, i32 %34)
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %101, %32
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @I2C_MAX_WORDS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %41, %42
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i1 [ false, %36 ], [ %43, %40 ]
  br i1 %45, label %46, label %106

46:                                               ; preds = %44
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = mul nsw i32 2, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 2, %58
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %10, align 4
  %66 = mul nsw i32 %65, 2
  %67 = add nsw i32 16, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  store i32 %63, i32* %69, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = mul nsw i32 2, %71
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 8
  %78 = load i32*, i32** %13, align 8
  %79 = load i32, i32* %10, align 4
  %80 = mul nsw i32 %79, 2
  %81 = add nsw i32 16, %80
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %78, i64 %83
  store i32 %77, i32* %84, align 4
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %11, align 8
  %86 = load i32, i32* @D_CONF, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %9, align 4
  %89 = mul nsw i32 2, %88
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = mul nsw i32 2, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (%struct.gspca_dev*, i32, i8*, i32, ...) @gspca_dbg(%struct.gspca_dev* %85, i32 %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %99)
  br label %101

101:                                              ; preds = %46
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %36

106:                                              ; preds = %44
  %107 = load %struct.sd*, %struct.sd** %5, align 8
  %108 = getelementptr inbounds %struct.sd, %struct.sd* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %13, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 32
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %10, align 4
  %115 = sub nsw i32 %114, 1
  %116 = load i32*, i32** %13, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 33
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @I2C_WRITE_CMD, align 4
  %119 = load i32*, i32** %13, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 34
  store i32 %118, i32* %120, align 4
  %121 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %122 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %123 = call i32 @usb_sndctrlpipe(%struct.usb_device* %122, i32 0)
  %124 = load i32*, i32** %13, align 8
  %125 = load i32, i32* @I2C_BUFFER_LENGTH, align 4
  %126 = load i32, i32* @STV06XX_URB_MSG_TIMEOUT, align 4
  %127 = call i32 @usb_control_msg(%struct.usb_device* %121, i32 %123, i32 4, i32 64, i32 1024, i32 0, i32* %124, i32 %125, i32 %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %106
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %4, align 4
  br label %136

132:                                              ; preds = %106
  br label %28

133:                                              ; preds = %28
  %134 = load %struct.sd*, %struct.sd** %5, align 8
  %135 = call i32 @stv06xx_write_sensor_finish(%struct.sd* %134)
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %133, %130
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @stv06xx_write_sensor_finish(%struct.sd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
