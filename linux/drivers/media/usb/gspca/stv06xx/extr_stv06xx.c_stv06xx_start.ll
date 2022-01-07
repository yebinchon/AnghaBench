; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx.c_stv06xx_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx.c_stv06xx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 (%struct.sd*)* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.usb_host_interface = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Couldn't get altsetting\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@STV_ISO_SIZE_L = common dso_local global i32 0, align 4
@STV_ISO_ENABLE = common dso_local global i32 0, align 4
@D_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Starting stream failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Started streaming\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @stv06xx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv06xx_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca %struct.usb_host_interface*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %4, align 8
  %11 = load %struct.sd*, %struct.sd** %4, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.sd*, %struct.sd** %4, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.usb_interface* @usb_ifnum_to_if(i32 %14, i32 %18)
  store %struct.usb_interface* %19, %struct.usb_interface** %6, align 8
  %20 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %21 = load %struct.sd*, %struct.sd** %4, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface* %20, i32 %24)
  store %struct.usb_host_interface* %25, %struct.usb_host_interface** %5, align 8
  %26 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %27 = icmp ne %struct.usb_host_interface* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %1
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %30 = call i32 @gspca_err(%struct.gspca_dev* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %84

33:                                               ; preds = %1
  %34 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %35 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le16_to_cpu(i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.sd*, %struct.sd** %4, align 8
  %43 = load i32, i32* @STV_ISO_SIZE_L, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @stv06xx_write_bridge(%struct.sd* %42, i32 %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %84

50:                                               ; preds = %33
  %51 = load %struct.sd*, %struct.sd** %4, align 8
  %52 = getelementptr inbounds %struct.sd, %struct.sd* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32 (%struct.sd*)*, i32 (%struct.sd*)** %54, align 8
  %56 = load %struct.sd*, %struct.sd** %4, align 8
  %57 = call i32 %55(%struct.sd* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %65

61:                                               ; preds = %50
  %62 = load %struct.sd*, %struct.sd** %4, align 8
  %63 = load i32, i32* @STV_ISO_ENABLE, align 4
  %64 = call i32 @stv06xx_write_bridge(%struct.sd* %62, i32 %63, i32 1)
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %61, %60
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %70 = load i32, i32* @D_STREAM, align 4
  %71 = call i32 @gspca_dbg(%struct.gspca_dev* %69, i32 %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %76

72:                                               ; preds = %65
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %74 = load i32, i32* @D_STREAM, align 4
  %75 = call i32 @gspca_dbg(%struct.gspca_dev* %73, i32 %74, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %76

76:                                               ; preds = %72, %68
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  br label %82

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 0, %81 ]
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %48, %28
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(i32, i32) #1

declare dso_local %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface*, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @stv06xx_write_bridge(%struct.sd*, i32, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
