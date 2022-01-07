; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_technisat-usb2.c_technisat_usb2_i2c_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_technisat-usb2.c_technisat_usb2_i2c_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"i2c-access: %02x, tx: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"i2c TX buffer can't exceed 62 bytes (dev 0x%02x)\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"i2c RX buffer can't exceed 62 bytes (dev 0x%02x)\00", align 1
@I2C_SPEED_100KHZ_BIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"i2c-error: out failed %02x = %d\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"i2c-error: in failed %02x = %d\00", align 1
@I2C_STATUS_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"i2c-error: %02x = %d\00", align 1
@I2C_STATUS_NAK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"status: %d, \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"rx (%d): \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, i32*, i32, i32*, i32)* @technisat_usb2_i2c_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @technisat_usb2_i2c_access(%struct.usb_device* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kmalloc(i32 64, i32 %17)
  store i32* %18, i32** %14, align 8
  %19 = load i32*, i32** %14, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %139

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = call i32 (i8*, ...) @deb_i2c(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @debug_dump(i32* %27, i32 %28, i32 (i8*)* bitcast (i32 (i8*, ...)* @deb_i2c to i32 (i8*)*))
  %30 = call i32 (i8*, ...) @deb_i2c(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %11, align 4
  %32 = icmp sgt i32 %31, 62
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  %35 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  store i32 62, i32* %11, align 4
  br label %36

36:                                               ; preds = %33, %24
  %37 = load i32, i32* %13, align 4
  %38 = icmp sgt i32 %37, 62
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  store i32 62, i32* %13, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* @I2C_SPEED_100KHZ_BIT, align 4
  %44 = load i32*, i32** %14, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 %46, 1
  %48 = load i32*, i32** %14, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %47, i32* %49, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %42
  %53 = load i32, i32* %13, align 4
  %54 = load i32*, i32** %14, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load i32*, i32** %14, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %52, %42
  %63 = load i32*, i32** %14, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @memcpy(i32* %64, i32* %65, i32 %66)
  %68 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %69 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %70 = call i32 @usb_sndbulkpipe(%struct.usb_device* %69, i32 1)
  %71 = load i32*, i32** %14, align 8
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 2, %72
  %74 = call i32 @usb_bulk_msg(%struct.usb_device* %68, i32 %70, i32* %71, i32 %73, i32* null, i32 1000)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %62
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %15, align 4
  %80 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %78, i32 %79)
  br label %135

81:                                               ; preds = %62
  %82 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %83 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %84 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %83, i32 1)
  %85 = load i32*, i32** %14, align 8
  %86 = call i32 @usb_bulk_msg(%struct.usb_device* %82, i32 %84, i32* %85, i32 64, i32* %16, i32 1000)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %15, align 4
  %92 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %90, i32 %91)
  br label %135

93:                                               ; preds = %81
  %94 = load i32*, i32** %14, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @I2C_STATUS_OK, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %93
  %100 = load i32, i32* %9, align 4
  %101 = load i32*, i32** %14, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %100, i32 %103)
  %105 = load i32*, i32** %14, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @I2C_STATUS_NAK, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %99
  %111 = load i32, i32* %9, align 4
  %112 = icmp eq i32 %111, 96
  br i1 %112, label %114, label %113

113:                                              ; preds = %110, %99
  br label %135

114:                                              ; preds = %110
  br label %115

115:                                              ; preds = %114, %93
  %116 = load i32*, i32** %14, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i8*, ...) @deb_i2c(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %118)
  %120 = load i32*, i32** %12, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %133

122:                                              ; preds = %115
  %123 = load i32*, i32** %12, align 8
  %124 = load i32*, i32** %14, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @memcpy(i32* %123, i32* %125, i32 %126)
  %128 = load i32, i32* %13, align 4
  %129 = call i32 (i8*, ...) @deb_i2c(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %128)
  %130 = load i32*, i32** %12, align 8
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @debug_dump(i32* %130, i32 %131, i32 (i8*)* bitcast (i32 (i8*, ...)* @deb_i2c to i32 (i8*)*))
  br label %133

133:                                              ; preds = %122, %115
  %134 = call i32 (i8*, ...) @deb_i2c(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %113, %89, %77
  %136 = load i32*, i32** %14, align 8
  %137 = call i32 @kfree(i32* %136)
  %138 = load i32, i32* %15, align 4
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %135, %21
  %140 = load i32, i32* %7, align 4
  ret i32 %140
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @deb_i2c(i8*, ...) #1

declare dso_local i32 @debug_dump(i32*, i32, i32 (i8*)*) #1

declare dso_local i32 @err(i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
