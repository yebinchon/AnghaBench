; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_rd_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_rd_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }
%struct.usb_req = type { i32, i32, i32*, i32, i32*, i32 }

@CMD_MEM_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32*, i32)* @af9035_rd_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9035_rd_regs(%struct.dvb_usb_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [6 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_req, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 2, i32* %14, align 4
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 255
  store i32 %20, i32* %17, align 4
  %21 = getelementptr inbounds i32, i32* %17, i64 1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 255
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 16
  %26 = and i32 %25, 255
  store i32 %26, i32* %10, align 4
  %27 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %11, i32 0, i32 0
  %28 = load i32, i32* @CMD_MEM_RD, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %11, i32 0, i32 1
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %11, i32 0, i32 2
  store i32* inttoptr (i64 24 to i32*), i32** %31, align 8
  %32 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %11, i32 0, i32 3
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %34 = ptrtoint i32* %33 to i32
  store i32 %34, i32* %32, align 8
  %35 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %11, i32 0, i32 4
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %35, align 8
  %39 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %11, i32 0, i32 5
  %40 = load i32*, i32** %7, align 8
  %41 = ptrtoint i32* %40 to i32
  store i32 %41, i32* %39, align 8
  %42 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %43 = call i32 @af9035_ctrl_msg(%struct.dvb_usb_device* %42, %struct.usb_req* %11)
  ret i32 %43
}

declare dso_local i32 @af9035_ctrl_msg(%struct.dvb_usb_device*, %struct.usb_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
