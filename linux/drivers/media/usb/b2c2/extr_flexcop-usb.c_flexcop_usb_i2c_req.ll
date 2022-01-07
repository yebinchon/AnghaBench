; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/b2c2/extr_flexcop-usb.c_flexcop_usb_i2c_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/b2c2/extr_flexcop-usb.c_flexcop_usb_i2c_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_i2c_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.flexcop_usb* }
%struct.flexcop_usb = type { i32*, i32, i32 }

@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Buffer size bigger than max URB control message\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@B2C2_USB_CTRL_PIPE_OUT = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@B2C2_USB_CTRL_PIPE_IN = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"unsupported function for i2c_req %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"i2c %2d: %02x %02x %02x %02x %02x %02x\0A\00", align 1
@USB_ENDPOINT_DIR_MASK = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flexcop_i2c_adapter*, i32, i32, i32, i32, i32*, i32)* @flexcop_usb_i2c_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_usb_i2c_req(%struct.flexcop_i2c_adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.flexcop_i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.flexcop_usb*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.flexcop_i2c_adapter* %0, %struct.flexcop_i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %23 = load %struct.flexcop_i2c_adapter*, %struct.flexcop_i2c_adapter** %9, align 8
  %24 = getelementptr inbounds %struct.flexcop_i2c_adapter, %struct.flexcop_i2c_adapter* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.flexcop_usb*, %struct.flexcop_usb** %26, align 8
  store %struct.flexcop_usb* %27, %struct.flexcop_usb** %16, align 8
  %28 = load i32, i32* @USB_TYPE_VENDOR, align 4
  store i32 %28, i32* %22, align 4
  %29 = load i32, i32* %15, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ugt i64 %30, 8
  br i1 %31, label %32, label %36

32:                                               ; preds = %7
  %33 = call i32 @err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %136

36:                                               ; preds = %7
  %37 = load i32, i32* %11, align 4
  switch i32 %37, label %48 [
    i32 128, label %38
    i32 132, label %38
    i32 129, label %38
    i32 133, label %38
    i32 131, label %43
    i32 130, label %43
  ]

38:                                               ; preds = %36, %36, %36, %36
  %39 = load i32, i32* @B2C2_USB_CTRL_PIPE_OUT, align 4
  store i32 %39, i32* %20, align 4
  store i32 2, i32* %19, align 4
  %40 = load i32, i32* @USB_DIR_OUT, align 4
  %41 = load i32, i32* %22, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %22, align 4
  br label %53

43:                                               ; preds = %36, %36
  %44 = load i32, i32* @B2C2_USB_CTRL_PIPE_IN, align 4
  store i32 %44, i32* %20, align 4
  store i32 2, i32* %19, align 4
  %45 = load i32, i32* @USB_DIR_IN, align 4
  %46 = load i32, i32* %22, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %22, align 4
  br label %53

48:                                               ; preds = %36
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @deb_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %136

53:                                               ; preds = %43, %38
  %54 = load i32, i32* %11, align 4
  %55 = shl i32 %54, 8
  %56 = load %struct.flexcop_i2c_adapter*, %struct.flexcop_i2c_adapter** %9, align 8
  %57 = getelementptr inbounds %struct.flexcop_i2c_adapter, %struct.flexcop_i2c_adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = shl i32 %58, 4
  %60 = or i32 %55, %59
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %12, align 4
  %62 = shl i32 %61, 8
  %63 = load i32, i32* %13, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %22, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %17, align 4
  %69 = and i32 %68, 255
  %70 = load i32, i32* %17, align 4
  %71 = ashr i32 %70, 8
  %72 = load i32, i32* %18, align 4
  %73 = and i32 %72, 255
  %74 = load i32, i32* %18, align 4
  %75 = ashr i32 %74, 8
  %76 = call i32 @deb_i2c(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %66, i32 %67, i32 %69, i32 %71, i32 %73, i32 %75)
  %77 = load %struct.flexcop_usb*, %struct.flexcop_usb** %16, align 8
  %78 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %77, i32 0, i32 1
  %79 = call i32 @mutex_lock(i32* %78)
  %80 = load i32, i32* %22, align 4
  %81 = load i32, i32* @USB_ENDPOINT_DIR_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @USB_DIR_OUT, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %53
  %86 = load %struct.flexcop_usb*, %struct.flexcop_usb** %16, align 8
  %87 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @memcpy(i32* %88, i32* %89, i32 %90)
  br label %92

92:                                               ; preds = %85, %53
  %93 = load %struct.flexcop_usb*, %struct.flexcop_usb** %16, align 8
  %94 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %22, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %18, align 4
  %101 = load %struct.flexcop_usb*, %struct.flexcop_usb** %16, align 8
  %102 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %19, align 4
  %106 = load i32, i32* @HZ, align 4
  %107 = mul nsw i32 %105, %106
  %108 = call i32 @usb_control_msg(i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32* %103, i32 %104, i32 %107)
  store i32 %108, i32* %21, align 4
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %92
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %21, align 4
  br label %115

115:                                              ; preds = %112, %92
  %116 = load i32, i32* %21, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %115
  store i32 0, i32* %21, align 4
  %119 = load i32, i32* %22, align 4
  %120 = load i32, i32* @USB_ENDPOINT_DIR_MASK, align 4
  %121 = and i32 %119, %120
  %122 = load i32, i32* @USB_DIR_IN, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load i32*, i32** %14, align 8
  %126 = load %struct.flexcop_usb*, %struct.flexcop_usb** %16, align 8
  %127 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @memcpy(i32* %125, i32* %128, i32 %129)
  br label %131

131:                                              ; preds = %124, %118
  br label %132

132:                                              ; preds = %131, %115
  %133 = load %struct.flexcop_usb*, %struct.flexcop_usb** %16, align 8
  %134 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %133, i32 0, i32 1
  %135 = call i32 @mutex_unlock(i32* %134)
  store i32 0, i32* %8, align 4
  br label %136

136:                                              ; preds = %132, %48, %32
  %137 = load i32, i32* %8, align 4
  ret i32 %137
}

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @deb_info(i8*, i32) #1

declare dso_local i32 @deb_i2c(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
