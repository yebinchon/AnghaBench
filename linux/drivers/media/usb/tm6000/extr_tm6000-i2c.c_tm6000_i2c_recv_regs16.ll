; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-i2c.c_tm6000_i2c_recv_regs16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-i2c.c_tm6000_i2c_recv_regs16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm6000_core = type { i64 }

@TM6010 = common dso_local global i64 0, align 8
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@REQ_16_SET_GET_I2C_WR1_RDN = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@REQ_35_AFTEK_TUNER_READ = common dso_local global i32 0, align 4
@REQ_14_SET_GET_I2C_WR2_RDN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm6000_core*, i8, i32, i8*, i32)* @tm6000_i2c_recv_regs16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm6000_i2c_recv_regs16(%struct.tm6000_core* %0, i8 zeroext %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tm6000_core*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store %struct.tm6000_core* %0, %struct.tm6000_core** %7, align 8
  store i8 %1, i8* %8, align 1
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %10, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %5
  store i32 -1, i32* %6, align 4
  br label %76

20:                                               ; preds = %16
  %21 = load %struct.tm6000_core*, %struct.tm6000_core** %7, align 8
  %22 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TM6010, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 255
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %13, align 1
  %30 = load %struct.tm6000_core*, %struct.tm6000_core** %7, align 8
  %31 = load i32, i32* @USB_DIR_OUT, align 4
  %32 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @REQ_16_SET_GET_I2C_WR1_RDN, align 4
  %37 = load i8, i8* %8, align 1
  %38 = zext i8 %37 to i32
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 65280
  %41 = or i32 %38, %40
  %42 = trunc i32 %41 to i8
  %43 = call i32 (%struct.tm6000_core*, i32, i32, i8, i32, ...) @tm6000_read_write_usb(%struct.tm6000_core* %30, i32 %35, i32 %36, i8 zeroext %42, i32 0, i8* %13, i32 1)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %26
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %6, align 4
  br label %76

48:                                               ; preds = %26
  %49 = load %struct.tm6000_core*, %struct.tm6000_core** %7, align 8
  %50 = load i32, i32* @USB_DIR_IN, align 4
  %51 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @REQ_35_AFTEK_TUNER_READ, align 4
  %56 = load i32, i32* %9, align 4
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 (%struct.tm6000_core*, i32, i32, i8, i32, ...) @tm6000_read_write_usb(%struct.tm6000_core* %49, i32 %54, i32 %55, i8 zeroext %57, i32 0, i8* %58, i32 %59)
  store i32 %60, i32* %12, align 4
  br label %74

61:                                               ; preds = %20
  %62 = load %struct.tm6000_core*, %struct.tm6000_core** %7, align 8
  %63 = load i32, i32* @USB_DIR_IN, align 4
  %64 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @REQ_14_SET_GET_I2C_WR2_RDN, align 4
  %69 = load i8, i8* %8, align 1
  %70 = load i32, i32* %9, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 (%struct.tm6000_core*, i32, i32, i8, i32, ...) @tm6000_read_write_usb(%struct.tm6000_core* %62, i32 %67, i32 %68, i8 zeroext %69, i32 %70, i8* %71, i32 %72)
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %61, %48
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %74, %46, %19
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @tm6000_read_write_usb(%struct.tm6000_core*, i32, i32, i8 zeroext, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
