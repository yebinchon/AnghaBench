; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx.c_stv06xx_read_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx.c_stv06xx_read_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32*, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.gspca_dev = type { i32 }

@STV_I2C_FLUSH = common dso_local global i32 0, align 4
@I2C_BUFFER_LENGTH = common dso_local global i32 0, align 4
@I2C_READ_CMD = common dso_local global i32 0, align 4
@STV06XX_URB_MSG_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"I2C: Read error writing address: %d\0A\00", align 1
@D_CONF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"I2C: Read 0x%x from address 0x%x, status: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stv06xx_read_sensor(%struct.sd* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gspca_dev*, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca i32*, align 8
  store %struct.sd* %0, %struct.sd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.sd*, %struct.sd** %5, align 8
  %13 = bitcast %struct.sd* %12 to %struct.gspca_dev*
  store %struct.gspca_dev* %13, %struct.gspca_dev** %9, align 8
  %14 = load %struct.sd*, %struct.sd** %5, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  store %struct.usb_device* %17, %struct.usb_device** %10, align 8
  %18 = load %struct.sd*, %struct.sd** %5, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %11, align 8
  %22 = load %struct.sd*, %struct.sd** %5, align 8
  %23 = load i32, i32* @STV_I2C_FLUSH, align 4
  %24 = load %struct.sd*, %struct.sd** %5, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @stv06xx_write_bridge(%struct.sd* %22, i32 %23, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %114

34:                                               ; preds = %3
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* @I2C_BUFFER_LENGTH, align 4
  %37 = call i32 @memset(i32* %35, i32 0, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.sd*, %struct.sd** %5, align 8
  %42 = getelementptr inbounds %struct.sd, %struct.sd* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 32
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 33
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* @I2C_READ_CMD, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 34
  store i32 %50, i32* %52, align 4
  %53 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %54 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %55 = call i32 @usb_sndctrlpipe(%struct.usb_device* %54, i32 0)
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* @I2C_BUFFER_LENGTH, align 4
  %58 = load i32, i32* @STV06XX_URB_MSG_TIMEOUT, align 4
  %59 = call i32 @usb_control_msg(%struct.usb_device* %53, i32 %55, i32 4, i32 64, i32 5120, i32 0, i32* %56, i32 %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %34
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %114

66:                                               ; preds = %34
  %67 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %68 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %69 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %68, i32 0)
  %70 = load i32*, i32** %11, align 8
  %71 = load %struct.sd*, %struct.sd** %5, align 8
  %72 = getelementptr inbounds %struct.sd, %struct.sd* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @STV06XX_URB_MSG_TIMEOUT, align 4
  %77 = call i32 @usb_control_msg(%struct.usb_device* %67, i32 %69, i32 4, i32 192, i32 5136, i32 0, i32* %70, i32 %75, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load %struct.sd*, %struct.sd** %5, align 8
  %79 = getelementptr inbounds %struct.sd, %struct.sd* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %94

84:                                               ; preds = %66
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %11, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 8
  %92 = or i32 %87, %91
  %93 = load i32*, i32** %7, align 8
  store i32 %92, i32* %93, align 4
  br label %99

94:                                               ; preds = %66
  %95 = load i32*, i32** %11, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %7, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %94, %84
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %9, align 8
  %101 = load i32, i32* @D_CONF, align 4
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @gspca_dbg(%struct.gspca_dev* %100, i32 %101, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %99
  %110 = load i32, i32* %8, align 4
  br label %112

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111, %109
  %113 = phi i32 [ %110, %109 ], [ 0, %111 ]
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %62, %32
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @stv06xx_write_bridge(%struct.sd*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
