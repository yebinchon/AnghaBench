; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_check_vub300_port_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_check_vub300_port_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vub300_mmc_host = type { i32, i32 }

@GET_SYSTEM_PORT_STATUS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vub300_mmc_host*)* @check_vub300_port_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_vub300_port_status(%struct.vub300_mmc_host* %0) #0 {
  %2 = alloca %struct.vub300_mmc_host*, align 8
  %3 = alloca i32, align 4
  store %struct.vub300_mmc_host* %0, %struct.vub300_mmc_host** %2, align 8
  %4 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %5 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %8 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @usb_rcvctrlpipe(i32 %9, i32 0)
  %11 = load i32, i32* @GET_SYSTEM_PORT_STATUS, align 4
  %12 = load i32, i32* @USB_DIR_IN, align 4
  %13 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %18 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %17, i32 0, i32 0
  %19 = load i32, i32* @HZ, align 4
  %20 = call i32 @usb_control_msg(i32 %6, i32 %10, i32 %11, i32 %16, i32 0, i32 0, i32* %18, i32 4, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp eq i64 4, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %26 = call i32 @new_system_port_status(%struct.vub300_mmc_host* %25)
  br label %27

27:                                               ; preds = %24, %1
  ret void
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @new_system_port_status(%struct.vub300_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
