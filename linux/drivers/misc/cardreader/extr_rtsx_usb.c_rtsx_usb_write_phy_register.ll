; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_write_phy_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_write_phy_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_ucr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Write 0x%x to phy register 0x%x\0A\00", align 1
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@HS_VSTAIN = common dso_local global i32 0, align 4
@HS_VCONTROL = common dso_local global i32 0, align 4
@HS_VLOADM = common dso_local global i32 0, align 4
@MODE_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_ucr*, i32, i32)* @rtsx_usb_write_phy_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_usb_write_phy_register(%struct.rtsx_ucr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtsx_ucr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtsx_ucr* %0, %struct.rtsx_ucr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %4, align 8
  %8 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %4, align 8
  %15 = call i32 @rtsx_usb_init_cmd(%struct.rtsx_ucr* %14)
  %16 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %4, align 8
  %17 = load i32, i32* @WRITE_REG_CMD, align 4
  %18 = load i32, i32* @HS_VSTAIN, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %16, i32 %17, i32 %18, i32 255, i32 %19)
  %21 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %4, align 8
  %22 = load i32, i32* @WRITE_REG_CMD, align 4
  %23 = load i32, i32* @HS_VCONTROL, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 15
  %26 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %21, i32 %22, i32 %23, i32 255, i32 %25)
  %27 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %4, align 8
  %28 = load i32, i32* @WRITE_REG_CMD, align 4
  %29 = load i32, i32* @HS_VLOADM, align 4
  %30 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %27, i32 %28, i32 %29, i32 255, i32 0)
  %31 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %4, align 8
  %32 = load i32, i32* @WRITE_REG_CMD, align 4
  %33 = load i32, i32* @HS_VLOADM, align 4
  %34 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %31, i32 %32, i32 %33, i32 255, i32 0)
  %35 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %4, align 8
  %36 = load i32, i32* @WRITE_REG_CMD, align 4
  %37 = load i32, i32* @HS_VLOADM, align 4
  %38 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %35, i32 %36, i32 %37, i32 255, i32 1)
  %39 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %4, align 8
  %40 = load i32, i32* @WRITE_REG_CMD, align 4
  %41 = load i32, i32* @HS_VCONTROL, align 4
  %42 = load i32, i32* %5, align 4
  %43 = ashr i32 %42, 4
  %44 = and i32 %43, 15
  %45 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %39, i32 %40, i32 %41, i32 255, i32 %44)
  %46 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %4, align 8
  %47 = load i32, i32* @WRITE_REG_CMD, align 4
  %48 = load i32, i32* @HS_VLOADM, align 4
  %49 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %46, i32 %47, i32 %48, i32 255, i32 0)
  %50 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %4, align 8
  %51 = load i32, i32* @WRITE_REG_CMD, align 4
  %52 = load i32, i32* @HS_VLOADM, align 4
  %53 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %50, i32 %51, i32 %52, i32 255, i32 0)
  %54 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %4, align 8
  %55 = load i32, i32* @WRITE_REG_CMD, align 4
  %56 = load i32, i32* @HS_VLOADM, align 4
  %57 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %54, i32 %55, i32 %56, i32 255, i32 1)
  %58 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %4, align 8
  %59 = load i32, i32* @MODE_C, align 4
  %60 = call i32 @rtsx_usb_send_cmd(%struct.rtsx_ucr* %58, i32 %59, i32 100)
  ret i32 %60
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @rtsx_usb_init_cmd(%struct.rtsx_ucr*) #1

declare dso_local i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_usb_send_cmd(%struct.rtsx_ucr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
