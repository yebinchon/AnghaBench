; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_opera1.c_opera1_stv0299_set_symbol_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_opera1.c_opera1_stv0299_set_symbol_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }

@REG_1F_SYMBOLRATE_BYTE0 = common dso_local global i32 0, align 4
@REG_20_SYMBOLRATE_BYTE1 = common dso_local global i32 0, align 4
@REG_21_SYMBOLRATE_BYTE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32)* @opera1_stv0299_set_symbol_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opera1_stv0299_set_symbol_rate(%struct.dvb_frontend* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %8 = call i32 @stv0299_writereg(%struct.dvb_frontend* %7, i32 19, i32 152)
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = call i32 @stv0299_writereg(%struct.dvb_frontend* %9, i32 20, i32 149)
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = load i32, i32* @REG_1F_SYMBOLRATE_BYTE0, align 4
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = call i32 @stv0299_writereg(%struct.dvb_frontend* %11, i32 %12, i32 %15)
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %18 = load i32, i32* @REG_20_SYMBOLRATE_BYTE1, align 4
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 8
  %21 = and i32 %20, 255
  %22 = call i32 @stv0299_writereg(%struct.dvb_frontend* %17, i32 %18, i32 %21)
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %24 = load i32, i32* @REG_21_SYMBOLRATE_BYTE2, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 240
  %27 = call i32 @stv0299_writereg(%struct.dvb_frontend* %23, i32 %24, i32 %26)
  ret i32 0
}

declare dso_local i32 @stv0299_writereg(%struct.dvb_frontend*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
