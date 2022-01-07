; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_pctv452e.c_pctv452e_read_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_pctv452e.c_pctv452e_read_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@__const.pctv452e_read_mac_address.mem_addr = private unnamed_addr constant [2 x i32] [i32 31, i32 204], align 4
@EAGAIN = common dso_local global i32 0, align 4
@I2C_ADDR_24C16 = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@I2C_ADDR_24C64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32*)* @pctv452e_read_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pctv452e_read_mac_address(%struct.dvb_usb_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca [20 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast ([2 x i32]* @__const.pctv452e_read_mac_address.mem_addr to i8*), i64 8, i1 false)
  %10 = load i32, i32* @EAGAIN, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %12, i32 0, i32 0
  %14 = call i64 @mutex_lock_interruptible(i32* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %49

17:                                               ; preds = %2
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %19 = load i32, i32* @I2C_ADDR_24C16, align 4
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %23 = call i32 @pctv452e_i2c_msg(%struct.dvb_usb_device* %18, i32 %19, i32* %21, i32 1, i32* %22, i32 20)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @EREMOTEIO, align 4
  %25 = sub nsw i32 0, %24
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %17
  %29 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %30 = load i32, i32* @I2C_ADDR_24C64, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %32 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %33 = call i32 @pctv452e_i2c_msg(%struct.dvb_usb_device* %29, i32 %30, i32* %31, i32 2, i32* %32, i32 20)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %28, %17
  %35 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %36 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 20, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %49

41:                                               ; preds = %34
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %44 = call i32 @ttpci_eeprom_decode_mac(i32* %42, i32* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 0, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %49

48:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %53

49:                                               ; preds = %47, %40, %16
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @eth_zero_addr(i32* %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %48
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #2

declare dso_local i32 @pctv452e_i2c_msg(%struct.dvb_usb_device*, i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @ttpci_eeprom_decode_mac(i32*, i32*) #2

declare dso_local i32 @eth_zero_addr(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
