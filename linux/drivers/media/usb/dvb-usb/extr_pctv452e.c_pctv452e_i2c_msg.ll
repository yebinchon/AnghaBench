; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_pctv452e.c_pctv452e_i2c_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_pctv452e.c_pctv452e_i2c_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i64 }
%struct.pctv452e_state = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SYNC_BYTE_OUT = common dso_local global i32 0, align 4
@PCTV_CMD_I2C = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SYNC_BYTE_IN = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"I2C error %d; %02X %02X  %02X %02X %02X -> %*ph\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32*, i32, i32*, i32)* @pctv452e_i2c_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pctv452e_i2c_msg(%struct.dvb_usb_device* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pctv452e_state*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %19 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.pctv452e_state*
  store %struct.pctv452e_state* %21, %struct.pctv452e_state** %14, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32* @kmalloc(i32 64, i32 %22)
  store i32* %23, i32** %15, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %132

29:                                               ; preds = %6
  %30 = load %struct.pctv452e_state*, %struct.pctv452e_state** %14, align 8
  %31 = getelementptr inbounds %struct.pctv452e_state, %struct.pctv452e_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  store i32 %32, i32* %16, align 4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp sgt i32 %36, 57
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %13, align 4
  %40 = icmp sgt i32 %39, 57
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %29
  br label %119

42:                                               ; preds = %38
  %43 = load i32, i32* @SYNC_BYTE_OUT, align 4
  %44 = load i32*, i32** %15, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32*, i32** %15, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @PCTV_CMD_I2C, align 4
  %50 = load i32*, i32** %15, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 3
  %54 = load i32*, i32** %15, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %9, align 4
  %57 = shl i32 %56, 1
  %58 = load i32*, i32** %15, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32*, i32** %15, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 5
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32*, i32** %15, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 6
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** %15, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 7
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @memcpy(i32* %67, i32* %68, i32 %69)
  %71 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %72 = load i32*, i32** %15, align 8
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 7, %73
  %75 = load i32*, i32** %15, align 8
  %76 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %71, i32* %72, i32 %74, i32* %75, i32 64, i32 0)
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %42
  br label %119

80:                                               ; preds = %42
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* @SYNC_BYTE_IN, align 4
  %84 = load i32*, i32** %15, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %16, align 4
  %90 = load i32*, i32** %15, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88, %80
  br label %119

95:                                               ; preds = %88
  %96 = load i32, i32* @EREMOTEIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %17, align 4
  %98 = load i32*, i32** %15, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 5
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %95
  %104 = load i32*, i32** %15, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 6
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103, %95
  br label %119

110:                                              ; preds = %103
  %111 = load i32*, i32** %12, align 8
  %112 = load i32*, i32** %15, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 7
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @memcpy(i32* %111, i32* %113, i32 %114)
  %116 = load i32*, i32** %15, align 8
  %117 = call i32 @kfree(i32* %116)
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %7, align 4
  br label %132

119:                                              ; preds = %109, %94, %79, %41
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* @SYNC_BYTE_OUT, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %9, align 4
  %124 = shl i32 %123, 1
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32*, i32** %15, align 8
  %128 = call i32 @err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %120, i32 %121, i32 %122, i32 %124, i32 %125, i32 %126, i32 7, i32* %127)
  %129 = load i32*, i32** %15, align 8
  %130 = call i32 @kfree(i32* %129)
  %131 = load i32, i32* %17, align 4
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %119, %110, %26
  %133 = load i32, i32* %7, align 4
  ret i32 %133
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @err(i8*, i32, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
