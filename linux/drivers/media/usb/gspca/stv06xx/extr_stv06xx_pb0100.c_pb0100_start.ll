; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_pb0100.c_pb0100_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_pb0100.c_pb0100_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, i32, i32, i32, %struct.cam }
%struct.cam = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32* }
%struct.usb_host_interface = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.usb_interface = type { i32 }
%struct.gspca_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@PB_ROWSPEED = common dso_local global i32 0, align 4
@PB0100_CROP_TO_VGA = common dso_local global i32 0, align 4
@PB_RSTART = common dso_local global i32 0, align 4
@PB_CSTART = common dso_local global i32 0, align 4
@PB_RWSIZE = common dso_local global i32 0, align 4
@PB_CWSIZE = common dso_local global i32 0, align 4
@PB0100_SUBSAMPLE = common dso_local global i32 0, align 4
@STV_Y_CTRL = common dso_local global i32 0, align 4
@STV_X_CTRL = common dso_local global i32 0, align 4
@STV_SCAN_RATE = common dso_local global i32 0, align 4
@PB_CONTROL = common dso_local global i32 0, align 4
@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Started stream, status: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*)* @pb0100_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pb0100_start(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_interface*, align 8
  %9 = alloca %struct.gspca_dev*, align 8
  %10 = alloca %struct.cam*, align 8
  %11 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  %12 = load %struct.sd*, %struct.sd** %3, align 8
  %13 = bitcast %struct.sd* %12 to %struct.gspca_dev*
  store %struct.gspca_dev* %13, %struct.gspca_dev** %9, align 8
  %14 = load %struct.sd*, %struct.sd** %3, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 4
  store %struct.cam* %16, %struct.cam** %10, align 8
  %17 = load %struct.cam*, %struct.cam** %10, align 8
  %18 = getelementptr inbounds %struct.cam, %struct.cam* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = load %struct.sd*, %struct.sd** %3, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.sd*, %struct.sd** %3, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sd*, %struct.sd** %3, align 8
  %32 = getelementptr inbounds %struct.sd, %struct.sd* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.usb_interface* @usb_ifnum_to_if(i32 %30, i32 %34)
  store %struct.usb_interface* %35, %struct.usb_interface** %8, align 8
  %36 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %37 = load %struct.sd*, %struct.sd** %3, align 8
  %38 = getelementptr inbounds %struct.sd, %struct.sd* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface* %36, i32 %40)
  store %struct.usb_host_interface* %41, %struct.usb_host_interface** %7, align 8
  %42 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %43 = icmp ne %struct.usb_host_interface* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %1
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %164

47:                                               ; preds = %1
  %48 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %49 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le16_to_cpu(i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load %struct.sd*, %struct.sd** %3, align 8
  %57 = getelementptr inbounds %struct.sd, %struct.sd* %56, i32 0, i32 1
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.sd*, %struct.sd** %3, align 8
  %62 = getelementptr inbounds %struct.sd, %struct.sd* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %47
  %71 = load %struct.sd*, %struct.sd** %3, align 8
  %72 = load i32, i32* @PB_ROWSPEED, align 4
  %73 = call i32 @BIT(i32 4)
  %74 = call i32 @BIT(i32 3)
  %75 = or i32 %73, %74
  %76 = call i32 @BIT(i32 1)
  %77 = or i32 %75, %76
  %78 = call i32 @stv06xx_write_sensor(%struct.sd* %71, i32 %72, i32 %77)
  br label %88

79:                                               ; preds = %47
  %80 = load %struct.sd*, %struct.sd** %3, align 8
  %81 = load i32, i32* @PB_ROWSPEED, align 4
  %82 = call i32 @BIT(i32 5)
  %83 = call i32 @BIT(i32 3)
  %84 = or i32 %82, %83
  %85 = call i32 @BIT(i32 1)
  %86 = or i32 %84, %85
  %87 = call i32 @stv06xx_write_sensor(%struct.sd* %80, i32 %81, i32 %86)
  br label %88

88:                                               ; preds = %79, %70
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @PB0100_CROP_TO_VGA, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %88
  %94 = load %struct.sd*, %struct.sd** %3, align 8
  %95 = load i32, i32* @PB_RSTART, align 4
  %96 = call i32 @stv06xx_write_sensor(%struct.sd* %94, i32 %95, i32 30)
  %97 = load %struct.sd*, %struct.sd** %3, align 8
  %98 = load i32, i32* @PB_CSTART, align 4
  %99 = call i32 @stv06xx_write_sensor(%struct.sd* %97, i32 %98, i32 20)
  %100 = load %struct.sd*, %struct.sd** %3, align 8
  %101 = load i32, i32* @PB_RWSIZE, align 4
  %102 = call i32 @stv06xx_write_sensor(%struct.sd* %100, i32 %101, i32 239)
  %103 = load %struct.sd*, %struct.sd** %3, align 8
  %104 = load i32, i32* @PB_CWSIZE, align 4
  %105 = call i32 @stv06xx_write_sensor(%struct.sd* %103, i32 %104, i32 319)
  br label %119

106:                                              ; preds = %88
  %107 = load %struct.sd*, %struct.sd** %3, align 8
  %108 = load i32, i32* @PB_RSTART, align 4
  %109 = call i32 @stv06xx_write_sensor(%struct.sd* %107, i32 %108, i32 8)
  %110 = load %struct.sd*, %struct.sd** %3, align 8
  %111 = load i32, i32* @PB_CSTART, align 4
  %112 = call i32 @stv06xx_write_sensor(%struct.sd* %110, i32 %111, i32 4)
  %113 = load %struct.sd*, %struct.sd** %3, align 8
  %114 = load i32, i32* @PB_RWSIZE, align 4
  %115 = call i32 @stv06xx_write_sensor(%struct.sd* %113, i32 %114, i32 287)
  %116 = load %struct.sd*, %struct.sd** %3, align 8
  %117 = load i32, i32* @PB_CWSIZE, align 4
  %118 = call i32 @stv06xx_write_sensor(%struct.sd* %116, i32 %117, i32 351)
  br label %119

119:                                              ; preds = %106, %93
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* @PB0100_SUBSAMPLE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %119
  %125 = load %struct.sd*, %struct.sd** %3, align 8
  %126 = load i32, i32* @STV_Y_CTRL, align 4
  %127 = call i32 @stv06xx_write_bridge(%struct.sd* %125, i32 %126, i32 2)
  %128 = load %struct.sd*, %struct.sd** %3, align 8
  %129 = load i32, i32* @STV_X_CTRL, align 4
  %130 = call i32 @stv06xx_write_bridge(%struct.sd* %128, i32 %129, i32 6)
  %131 = load %struct.sd*, %struct.sd** %3, align 8
  %132 = load i32, i32* @STV_SCAN_RATE, align 4
  %133 = call i32 @stv06xx_write_bridge(%struct.sd* %131, i32 %132, i32 16)
  br label %144

134:                                              ; preds = %119
  %135 = load %struct.sd*, %struct.sd** %3, align 8
  %136 = load i32, i32* @STV_Y_CTRL, align 4
  %137 = call i32 @stv06xx_write_bridge(%struct.sd* %135, i32 %136, i32 1)
  %138 = load %struct.sd*, %struct.sd** %3, align 8
  %139 = load i32, i32* @STV_X_CTRL, align 4
  %140 = call i32 @stv06xx_write_bridge(%struct.sd* %138, i32 %139, i32 10)
  %141 = load %struct.sd*, %struct.sd** %3, align 8
  %142 = load i32, i32* @STV_SCAN_RATE, align 4
  %143 = call i32 @stv06xx_write_bridge(%struct.sd* %141, i32 %142, i32 32)
  br label %144

144:                                              ; preds = %134, %124
  %145 = load %struct.sd*, %struct.sd** %3, align 8
  %146 = load i32, i32* @PB_CONTROL, align 4
  %147 = call i32 @BIT(i32 5)
  %148 = call i32 @BIT(i32 3)
  %149 = or i32 %147, %148
  %150 = call i32 @BIT(i32 1)
  %151 = or i32 %149, %150
  %152 = call i32 @stv06xx_write_sensor(%struct.sd* %145, i32 %146, i32 %151)
  store i32 %152, i32* %4, align 4
  %153 = load %struct.gspca_dev*, %struct.gspca_dev** %9, align 8
  %154 = load i32, i32* @D_STREAM, align 4
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @gspca_dbg(%struct.gspca_dev* %153, i32 %154, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* %4, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %144
  %160 = load i32, i32* %4, align 4
  br label %162

161:                                              ; preds = %144
  br label %162

162:                                              ; preds = %161, %159
  %163 = phi i32 [ %160, %159 ], [ 0, %161 ]
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %162, %44
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(i32, i32) #1

declare dso_local %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @stv06xx_write_sensor(%struct.sd*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @stv06xx_write_bridge(%struct.sd*, i32, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
