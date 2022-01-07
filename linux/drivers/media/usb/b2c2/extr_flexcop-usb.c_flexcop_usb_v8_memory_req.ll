; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/b2c2/extr_flexcop-usb.c_flexcop_usb_v8_memory_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/b2c2/extr_flexcop-usb.c_flexcop_usb_v8_memory_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_usb = type { i32*, i32, i32 }

@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Buffer size bigger than max URB control message\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@B2C2_WAIT_FOR_OPERATION_V8READ = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@B2C2_USB_CTRL_PIPE_IN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@B2C2_WAIT_FOR_OPERATION_V8WRITE = common dso_local global i32 0, align 4
@B2C2_USB_CTRL_PIPE_OUT = common dso_local global i32 0, align 4
@B2C2_WAIT_FOR_OPERATION_V8FLASH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"unsupported request for v8_mem_req %x.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"v8mem: %02x %02x %04x %04x, len: %d\0A\00", align 1
@USB_ENDPOINT_DIR_MASK = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flexcop_usb*, i32, i32, i32, i32*, i32)* @flexcop_usb_v8_memory_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_usb_v8_memory_req(%struct.flexcop_usb* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.flexcop_usb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.flexcop_usb* %0, %struct.flexcop_usb** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* @USB_TYPE_VENDOR, align 4
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %10, align 4
  %21 = shl i32 %20, 8
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ugt i64 %23, 8
  br i1 %24, label %25, label %29

25:                                               ; preds = %6
  %26 = call i32 @err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %129

29:                                               ; preds = %6
  %30 = load i32, i32* %9, align 4
  switch i32 %30, label %54 [
    i32 129, label %31
    i32 128, label %37
    i32 130, label %48
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* @B2C2_WAIT_FOR_OPERATION_V8READ, align 4
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* @USB_DIR_IN, align 4
  %34 = load i32, i32* %14, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* @B2C2_USB_CTRL_PIPE_IN, align 4
  store i32 %36, i32* %17, align 4
  br label %59

37:                                               ; preds = %29
  %38 = load i32*, i32** %12, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %15, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* @USB_DIR_OUT, align 4
  %44 = load i32, i32* %14, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* @B2C2_WAIT_FOR_OPERATION_V8WRITE, align 4
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* @B2C2_USB_CTRL_PIPE_OUT, align 4
  store i32 %47, i32* %17, align 4
  br label %59

48:                                               ; preds = %29
  %49 = load i32, i32* @USB_DIR_OUT, align 4
  %50 = load i32, i32* %14, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* @B2C2_WAIT_FOR_OPERATION_V8FLASH, align 4
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* @B2C2_USB_CTRL_PIPE_OUT, align 4
  store i32 %53, i32* %17, align 4
  br label %59

54:                                               ; preds = %29
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @deb_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %129

59:                                               ; preds = %48, %37, %31
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @deb_v8(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.flexcop_usb*, %struct.flexcop_usb** %8, align 8
  %67 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %66, i32 0, i32 1
  %68 = call i32 @mutex_lock(i32* %67)
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @USB_ENDPOINT_DIR_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @USB_DIR_OUT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %59
  %75 = load %struct.flexcop_usb*, %struct.flexcop_usb** %8, align 8
  %76 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @memcpy(i32* %77, i32* %78, i32 %79)
  br label %81

81:                                               ; preds = %74, %59
  %82 = load %struct.flexcop_usb*, %struct.flexcop_usb** %8, align 8
  %83 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load %struct.flexcop_usb*, %struct.flexcop_usb** %8, align 8
  %91 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* @HZ, align 4
  %96 = mul nsw i32 %94, %95
  %97 = call i32 @usb_control_msg(i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32* %92, i32 %93, i32 %96)
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %81
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %18, align 4
  br label %104

104:                                              ; preds = %101, %81
  %105 = load i32, i32* %18, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %104
  store i32 0, i32* %18, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @USB_ENDPOINT_DIR_MASK, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* @USB_DIR_IN, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = load i32*, i32** %12, align 8
  %115 = load %struct.flexcop_usb*, %struct.flexcop_usb** %8, align 8
  %116 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @memcpy(i32* %114, i32* %117, i32 %118)
  br label %120

120:                                              ; preds = %113, %107
  br label %121

121:                                              ; preds = %120, %104
  %122 = load %struct.flexcop_usb*, %struct.flexcop_usb** %8, align 8
  %123 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %122, i32 0, i32 1
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load i32*, i32** %12, align 8
  %126 = load i32, i32* %18, align 4
  %127 = call i32 @debug_dump(i32* %125, i32 %126, i32 (i8*, i32, i32, i32, i32, i32)* @deb_v8)
  %128 = load i32, i32* %18, align 4
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %121, %54, %25
  %130 = load i32, i32* %7, align 4
  ret i32 %130
}

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @deb_info(i8*, i32) #1

declare dso_local i32 @deb_v8(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @debug_dump(i32*, i32, i32 (i8*, i32, i32, i32, i32, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
