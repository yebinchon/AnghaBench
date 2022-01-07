; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_regmap_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_regmap_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.usb_interface* }
%struct.usb_interface = type { i32 }
%struct.req_t = type { i32, i32, i32*, i32, i32, i32, i32 }

@WRITE_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @af9015_regmap_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9015_regmap_write(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.usb_interface*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.req_t, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.dvb_usb_device*
  store %struct.dvb_usb_device* %16, %struct.dvb_usb_device** %8, align 8
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %17, i32 0, i32 0
  %19 = load %struct.usb_interface*, %struct.usb_interface** %18, align 8
  store %struct.usb_interface* %19, %struct.usb_interface** %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 8
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 0
  %30 = or i32 %24, %29
  store i32 %30, i32* %11, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32* %33, i32** %12, align 8
  %34 = load i64, i64* %7, align 8
  %35 = sub i64 %34, 2
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %13, align 4
  %37 = getelementptr inbounds %struct.req_t, %struct.req_t* %14, i32 0, i32 0
  %38 = load i32, i32* @WRITE_MEMORY, align 4
  store i32 %38, i32* %37, align 8
  %39 = getelementptr inbounds %struct.req_t, %struct.req_t* %14, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds %struct.req_t, %struct.req_t* %14, i32 0, i32 2
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %40, align 8
  %44 = getelementptr inbounds %struct.req_t, %struct.req_t* %14, i32 0, i32 3
  store i32 0, i32* %44, align 8
  %45 = getelementptr inbounds %struct.req_t, %struct.req_t* %14, i32 0, i32 4
  store i32 0, i32* %45, align 4
  %46 = getelementptr inbounds %struct.req_t, %struct.req_t* %14, i32 0, i32 5
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %46, align 8
  %48 = getelementptr inbounds %struct.req_t, %struct.req_t* %14, i32 0, i32 6
  %49 = load i32*, i32** %12, align 8
  %50 = ptrtoint i32* %49 to i32
  store i32 %50, i32* %48, align 4
  %51 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %52 = call i32 @af9015_ctrl_msg(%struct.dvb_usb_device* %51, %struct.req_t* %14)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %3
  br label %57

56:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %63

57:                                               ; preds = %55
  %58 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %59 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %58, i32 0, i32 0
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @dev_dbg(i32* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %57, %56
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @af9015_ctrl_msg(%struct.dvb_usb_device*, %struct.req_t*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
