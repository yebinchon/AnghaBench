; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-i2c.c_usbvision_i2c_write_max4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-i2c.c_usbvision_i2c_write_max4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i8*, i32 }

@USBVISION_OP_CODE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USBVISION_SER_ADRS = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@USBVISION_SER_CONT = common dso_local global i32 0, align 4
@i2c_debug = common dso_local global i32 0, align 4
@DBG_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"wrote %x at address %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_usbvision*, i8, i8*, i16)* @usbvision_i2c_write_max4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvision_i2c_write_max4(%struct.usb_usbvision* %0, i8 zeroext %1, i8* %2, i16 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_usbvision*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8* %2, i8** %8, align 8
  store i16 %3, i16* %9, align 2
  %16 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %17 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %13, align 8
  %19 = load i16, i16* %9, align 2
  %20 = sext i16 %19 to i32
  %21 = and i32 %20, 7
  %22 = or i32 %21, 16
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %14, align 1
  %24 = load i8, i8* %7, align 1
  %25 = load i8*, i8** %13, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 %24, i8* %26, align 1
  %27 = load i8, i8* %14, align 1
  %28 = load i8*, i8** %13, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 %27, i8* %29, align 1
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %46, %4
  %31 = load i32, i32* %12, align 4
  %32 = load i16, i16* %9, align 2
  %33 = sext i16 %32 to i32
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %13, align 8
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  store i8 %40, i8* %45, align 1
  br label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %12, align 4
  br label %30

49:                                               ; preds = %30
  store i32 5, i32* %11, align 4
  br label %50

50:                                               ; preds = %121, %49
  %51 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %52 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %55 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @usb_sndctrlpipe(i32 %56, i32 1)
  %58 = load i32, i32* @USBVISION_OP_CODE, align 4
  %59 = load i32, i32* @USB_DIR_OUT, align 4
  %60 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %63 = or i32 %61, %62
  %64 = load i64, i64* @USBVISION_SER_ADRS, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i8*, i8** %13, align 8
  %67 = load i16, i16* %9, align 2
  %68 = sext i16 %67 to i32
  %69 = add nsw i32 %68, 2
  %70 = trunc i32 %69 to i16
  %71 = load i32, i32* @HZ, align 4
  %72 = call i32 @usb_control_msg(i32 %53, i32 %57, i32 %58, i32 %63, i32 0, i32 %65, i8* %66, i16 signext %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %50
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %5, align 4
  br label %149

77:                                               ; preds = %50
  %78 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %79 = load i32, i32* @USBVISION_SER_CONT, align 4
  %80 = load i16, i16* %9, align 2
  %81 = sext i16 %80 to i32
  %82 = and i32 %81, 7
  %83 = or i32 %82, 16
  %84 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %78, i32 %79, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %5, align 4
  br label %149

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %101, %89
  %91 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %92 = load i32, i32* @USBVISION_SER_CONT, align 4
  %93 = call i32 @usbvision_read_reg(%struct.usb_usbvision* %91, i32 %92)
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %10, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* %10, align 4
  %99 = and i32 %98, 16
  %100 = icmp ne i32 %99, 0
  br label %101

101:                                              ; preds = %97, %94
  %102 = phi i1 [ false, %94 ], [ %100, %97 ]
  br i1 %102, label %90, label %103

103:                                              ; preds = %101
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %5, align 4
  br label %149

108:                                              ; preds = %103
  %109 = load i32, i32* %10, align 4
  %110 = and i32 %109, 32
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %122

113:                                              ; preds = %108
  %114 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %115 = load i32, i32* @USBVISION_SER_CONT, align 4
  %116 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %114, i32 %115, i32 0)
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %11, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  store i32 -1, i32* %5, align 4
  br label %149

121:                                              ; preds = %113
  br label %50

122:                                              ; preds = %112
  %123 = load i32, i32* @i2c_debug, align 4
  %124 = load i32, i32* @DBG_I2C, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %146

127:                                              ; preds = %122
  store i32 0, i32* %15, align 4
  br label %128

128:                                              ; preds = %142, %127
  %129 = load i32, i32* %15, align 4
  %130 = load i16, i16* %9, align 2
  %131 = sext i16 %130 to i32
  %132 = icmp slt i32 %129, %131
  br i1 %132, label %133, label %145

133:                                              ; preds = %128
  %134 = load i32, i32* @DBG_I2C, align 4
  %135 = load i8*, i8** %8, align 8
  %136 = load i32, i32* %15, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = load i8, i8* %7, align 1
  %141 = call i32 @PDEBUG(i32 %134, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8 zeroext %139, i8 zeroext %140)
  br label %142

142:                                              ; preds = %133
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %15, align 4
  br label %128

145:                                              ; preds = %128
  br label %146

146:                                              ; preds = %145, %122
  %147 = load i16, i16* %9, align 2
  %148 = sext i16 %147 to i32
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %146, %120, %106, %87, %75
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i16 signext, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usbvision_write_reg(%struct.usb_usbvision*, i32, i32) #1

declare dso_local i32 @usbvision_read_reg(%struct.usb_usbvision*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
