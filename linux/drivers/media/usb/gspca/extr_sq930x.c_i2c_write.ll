; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sq930x.c_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sq930x.c_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sensor_s = type { i32, i32 }
%struct.sd = type { i64, %struct.gspca_dev }
%struct.gspca_dev = type { i32, i32*, i32 }
%struct.i2c_write_cmd = type { i32, i32 }

@sensor_tb = common dso_local global %struct.sensor_s* null, align 8
@SQ930_CTRL_I2C_IO = common dso_local global i32 0, align 4
@D_USBO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"i2c_w v: %04x i: %04x %02x...%02x\0A\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"i2c_write failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*, %struct.i2c_write_cmd*, i32)* @i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_write(%struct.sd* %0, %struct.i2c_write_cmd* %1, i32 %2) #0 {
  %4 = alloca %struct.sd*, align 8
  %5 = alloca %struct.i2c_write_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gspca_dev*, align 8
  %8 = alloca %struct.sensor_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %4, align 8
  store %struct.i2c_write_cmd* %1, %struct.i2c_write_cmd** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.sd*, %struct.sd** %4, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 1
  store %struct.gspca_dev* %14, %struct.gspca_dev** %7, align 8
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %16 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %130

20:                                               ; preds = %3
  %21 = load %struct.sensor_s*, %struct.sensor_s** @sensor_tb, align 8
  %22 = load %struct.sd*, %struct.sd** %4, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.sensor_s, %struct.sensor_s* %21, i64 %24
  store %struct.sensor_s* %25, %struct.sensor_s** %8, align 8
  %26 = load %struct.sensor_s*, %struct.sensor_s** %8, align 8
  %27 = getelementptr inbounds %struct.sensor_s, %struct.sensor_s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 8
  %30 = load i32, i32* @SQ930_CTRL_I2C_IO, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %9, align 4
  %32 = load %struct.i2c_write_cmd*, %struct.i2c_write_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.i2c_write_cmd, %struct.i2c_write_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 65280
  %36 = load %struct.i2c_write_cmd*, %struct.i2c_write_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.i2c_write_cmd, %struct.i2c_write_cmd* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %35, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %41 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %11, align 8
  %43 = load %struct.sensor_s*, %struct.sensor_s** %8, align 8
  %44 = getelementptr inbounds %struct.sensor_s, %struct.sensor_s* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %11, align 8
  store i32 %45, i32* %46, align 4
  %48 = load %struct.i2c_write_cmd*, %struct.i2c_write_cmd** %5, align 8
  %49 = getelementptr inbounds %struct.i2c_write_cmd, %struct.i2c_write_cmd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %11, align 8
  store i32 %50, i32* %51, align 4
  br label %53

53:                                               ; preds = %57, %20
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %6, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %53
  %58 = load %struct.i2c_write_cmd*, %struct.i2c_write_cmd** %5, align 8
  %59 = getelementptr inbounds %struct.i2c_write_cmd, %struct.i2c_write_cmd* %58, i32 1
  store %struct.i2c_write_cmd* %59, %struct.i2c_write_cmd** %5, align 8
  %60 = load %struct.i2c_write_cmd*, %struct.i2c_write_cmd** %5, align 8
  %61 = getelementptr inbounds %struct.i2c_write_cmd, %struct.i2c_write_cmd* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %11, align 8
  store i32 %62, i32* %63, align 4
  %65 = load %struct.i2c_write_cmd*, %struct.i2c_write_cmd** %5, align 8
  %66 = getelementptr inbounds %struct.i2c_write_cmd, %struct.i2c_write_cmd* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %67, 8
  %69 = load i32*, i32** %11, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %11, align 8
  store i32 %68, i32* %69, align 4
  %71 = load %struct.sensor_s*, %struct.sensor_s** %8, align 8
  %72 = getelementptr inbounds %struct.sensor_s, %struct.sensor_s* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %11, align 8
  store i32 %73, i32* %74, align 4
  %76 = load %struct.i2c_write_cmd*, %struct.i2c_write_cmd** %5, align 8
  %77 = getelementptr inbounds %struct.i2c_write_cmd, %struct.i2c_write_cmd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %11, align 8
  store i32 %78, i32* %79, align 4
  br label %53

81:                                               ; preds = %53
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %83 = load i32, i32* @D_USBO, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %87 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 -1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @gspca_dbg(%struct.gspca_dev* %82, i32 %83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85, i32 %90, i32 %93)
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %96 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %99 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @usb_sndctrlpipe(i32 %100, i32 0)
  %102 = load i32, i32* @USB_DIR_OUT, align 4
  %103 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %110 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %114 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = ptrtoint i32* %112 to i64
  %117 = ptrtoint i32* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sdiv exact i64 %118, 4
  %120 = trunc i64 %119 to i32
  %121 = call i32 @usb_control_msg(i32 %97, i32 %101, i32 12, i32 %106, i32 %107, i32 %108, i32* %111, i32 %120, i32 500)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %81
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %129 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  br label %130

130:                                              ; preds = %19, %124, %81
  ret void
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
