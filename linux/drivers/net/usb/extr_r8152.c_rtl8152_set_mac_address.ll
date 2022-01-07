; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.r8152 = type { i32, i32 }
%struct.sockaddr = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@MCU_TYPE_PLA = common dso_local global i32 0, align 4
@PLA_CRWECR = common dso_local global i32 0, align 4
@CRWECR_CONFIG = common dso_local global i32 0, align 4
@PLA_IDR = common dso_local global i32 0, align 4
@BYTE_EN_SIX_BYTES = common dso_local global i32 0, align 4
@CRWECR_NORAML = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @rtl8152_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8152_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.r8152*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.r8152* @netdev_priv(%struct.net_device* %8)
  store %struct.r8152* %9, %struct.r8152** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.sockaddr*
  store %struct.sockaddr* %11, %struct.sockaddr** %6, align 8
  %12 = load i32, i32* @EADDRNOTAVAIL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %15 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @is_valid_ether_addr(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %66

20:                                               ; preds = %2
  %21 = load %struct.r8152*, %struct.r8152** %5, align 8
  %22 = getelementptr inbounds %struct.r8152, %struct.r8152* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @usb_autopm_get_interface(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %66

28:                                               ; preds = %20
  %29 = load %struct.r8152*, %struct.r8152** %5, align 8
  %30 = getelementptr inbounds %struct.r8152, %struct.r8152* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %36 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i32 %34, i32 %37, i32 %40)
  %42 = load %struct.r8152*, %struct.r8152** %5, align 8
  %43 = load i32, i32* @MCU_TYPE_PLA, align 4
  %44 = load i32, i32* @PLA_CRWECR, align 4
  %45 = load i32, i32* @CRWECR_CONFIG, align 4
  %46 = call i32 @ocp_write_byte(%struct.r8152* %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.r8152*, %struct.r8152** %5, align 8
  %48 = load i32, i32* @PLA_IDR, align 4
  %49 = load i32, i32* @BYTE_EN_SIX_BYTES, align 4
  %50 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %51 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pla_ocp_write(%struct.r8152* %47, i32 %48, i32 %49, i32 8, i32 %52)
  %54 = load %struct.r8152*, %struct.r8152** %5, align 8
  %55 = load i32, i32* @MCU_TYPE_PLA, align 4
  %56 = load i32, i32* @PLA_CRWECR, align 4
  %57 = load i32, i32* @CRWECR_NORAML, align 4
  %58 = call i32 @ocp_write_byte(%struct.r8152* %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.r8152*, %struct.r8152** %5, align 8
  %60 = getelementptr inbounds %struct.r8152, %struct.r8152* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load %struct.r8152*, %struct.r8152** %5, align 8
  %63 = getelementptr inbounds %struct.r8152, %struct.r8152* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @usb_autopm_put_interface(i32 %64)
  br label %66

66:                                               ; preds = %28, %27, %19
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local %struct.r8152* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ocp_write_byte(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @pla_ocp_write(%struct.r8152*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
