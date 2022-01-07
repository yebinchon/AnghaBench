; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_dw210x_read_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_dw210x_read_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@DW210X_READ_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"read eeprom failed.\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%02x: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32*)* @dw210x_read_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw210x_read_mac_address(%struct.dvb_usb_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca [256 x i32], align 16
  %9 = alloca [16 x i32], align 16
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %48, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 256
  br i1 %13, label %14, label %51

14:                                               ; preds = %11
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %20 = load i32, i32* @DW210X_READ_MSG, align 4
  %21 = call i64 @dw210x_op_rw(i32 %17, i32 182, i32 160, i32 %18, i32* %19, i32 2, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = call i32 @err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %56

25:                                               ; preds = %14
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = srem i32 %28, 16
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %30
  store i32 %27, i32* %31, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %35
  store i32 %33, i32* %36, align 4
  br label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %6, align 4
  %39 = srem i32 %38, 16
  %40 = icmp eq i32 %39, 15
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, 15
  %44 = call i32 @deb_xfer(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %46 = call i32 @debug_dump(i32* %45, i32 16, i32 (i8*, i32)* @deb_xfer)
  br label %47

47:                                               ; preds = %41, %37
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %11

51:                                               ; preds = %11
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %54 = getelementptr inbounds i32, i32* %53, i64 8
  %55 = call i32 @memcpy(i32* %52, i32* %54, i32 6)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %51, %23
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @dw210x_op_rw(i32, i32, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @err(i8*) #2

declare dso_local i32 @deb_xfer(i8*, i32) #2

declare dso_local i32 @debug_dump(i32*, i32, i32 (i8*, i32)*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
