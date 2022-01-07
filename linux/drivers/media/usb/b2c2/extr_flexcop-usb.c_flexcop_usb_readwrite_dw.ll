; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/b2c2/extr_flexcop-usb.c_flexcop_usb_readwrite_dw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/b2c2/extr_flexcop-usb.c_flexcop_usb_readwrite_dw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { %struct.flexcop_usb* }
%struct.flexcop_usb = type { i32, i32*, i32 }

@B2C2_USB_READ_REG = common dso_local global i32 0, align 4
@B2C2_USB_WRITE_REG = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@B2C2_USB_CTRL_PIPE_IN = common dso_local global i32 0, align 4
@B2C2_USB_CTRL_PIPE_OUT = common dso_local global i32 0, align 4
@B2C2_WAIT_FOR_OPERATION_RDW = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"error while %s dword from %d (%d).\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"reading\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"writing\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flexcop_device*, i32, i32*, i32)* @flexcop_usb_readwrite_dw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_usb_readwrite_dw(%struct.flexcop_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.flexcop_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.flexcop_usb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.flexcop_device* %0, %struct.flexcop_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %15 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %14, i32 0, i32 0
  %16 = load %struct.flexcop_usb*, %struct.flexcop_usb** %15, align 8
  store %struct.flexcop_usb* %16, %struct.flexcop_usb** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @B2C2_USB_READ_REG, align 4
  br label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @B2C2_USB_WRITE_REG, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @USB_DIR_IN, align 4
  br label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @USB_DIR_OUT, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @B2C2_FLEX_PCIOFFSET_TO_INTERNALADDR(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 128, i32 0
  %41 = or i32 %36, %40
  store i32 %41, i32* %12, align 4
  %42 = load %struct.flexcop_usb*, %struct.flexcop_usb** %9, align 8
  %43 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %31
  %48 = load %struct.flexcop_usb*, %struct.flexcop_usb** %9, align 8
  %49 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @memcpy(i32* %50, i32* %51, i32 4)
  br label %53

53:                                               ; preds = %47, %31
  %54 = load %struct.flexcop_usb*, %struct.flexcop_usb** %9, align 8
  %55 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @B2C2_USB_CTRL_PIPE_IN, align 4
  br label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @B2C2_USB_CTRL_PIPE_OUT, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.flexcop_usb*, %struct.flexcop_usb** %9, align 8
  %69 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* @B2C2_WAIT_FOR_OPERATION_RDW, align 4
  %72 = load i32, i32* @HZ, align 4
  %73 = mul nsw i32 %71, %72
  %74 = call i32 @usb_control_msg(i32 %56, i32 %64, i32 %65, i32 %66, i32 %67, i32 0, i32* %70, i32 4, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp ne i64 %76, 4
  br i1 %77, label %78, label %92

78:                                               ; preds = %63
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %82, i32 %83, i32 %84)
  %86 = load i32, i32* %13, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %78
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %88, %78
  br label %92

92:                                               ; preds = %91, %63
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load i32, i32* %13, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i32*, i32** %7, align 8
  %100 = load %struct.flexcop_usb*, %struct.flexcop_usb** %9, align 8
  %101 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @memcpy(i32* %99, i32* %102, i32 4)
  br label %104

104:                                              ; preds = %98, %95, %92
  %105 = load %struct.flexcop_usb*, %struct.flexcop_usb** %9, align 8
  %106 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* %13, align 4
  ret i32 %108
}

declare dso_local i32 @B2C2_FLEX_PCIOFFSET_TO_INTERNALADDR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @err(i8*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
