; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-dvb.c_dvbsky_s952_portc_set_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-dvb.c_dvbsky_s952_portc_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cx23885_tsport* }
%struct.cx23885_tsport = type { i32 (%struct.dvb_frontend*, i32)*, %struct.cx23885_dev* }
%struct.cx23885_dev = type { i32 }

@GPIO_12 = common dso_local global i32 0, align 4
@GPIO_13 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @dvbsky_s952_portc_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbsky_s952_portc_set_voltage(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx23885_tsport*, align 8
  %6 = alloca %struct.cx23885_dev*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %10, align 8
  store %struct.cx23885_tsport* %11, %struct.cx23885_tsport** %5, align 8
  %12 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %5, align 8
  %13 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %12, i32 0, i32 1
  %14 = load %struct.cx23885_dev*, %struct.cx23885_dev** %13, align 8
  store %struct.cx23885_dev* %14, %struct.cx23885_dev** %6, align 8
  %15 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %16 = load i32, i32* @GPIO_12, align 4
  %17 = load i32, i32* @GPIO_13, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @cx23885_gpio_enable(%struct.cx23885_dev* %15, i32 %18, i32 1)
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %42 [
    i32 130, label %21
    i32 129, label %28
    i32 128, label %35
  ]

21:                                               ; preds = %2
  %22 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %23 = load i32, i32* @GPIO_13, align 4
  %24 = call i32 @cx23885_gpio_set(%struct.cx23885_dev* %22, i32 %23)
  %25 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %26 = load i32, i32* @GPIO_12, align 4
  %27 = call i32 @cx23885_gpio_clear(%struct.cx23885_dev* %25, i32 %26)
  br label %42

28:                                               ; preds = %2
  %29 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %30 = load i32, i32* @GPIO_13, align 4
  %31 = call i32 @cx23885_gpio_set(%struct.cx23885_dev* %29, i32 %30)
  %32 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %33 = load i32, i32* @GPIO_12, align 4
  %34 = call i32 @cx23885_gpio_set(%struct.cx23885_dev* %32, i32 %33)
  br label %42

35:                                               ; preds = %2
  %36 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %37 = load i32, i32* @GPIO_13, align 4
  %38 = call i32 @cx23885_gpio_clear(%struct.cx23885_dev* %36, i32 %37)
  %39 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %40 = load i32, i32* @GPIO_12, align 4
  %41 = call i32 @cx23885_gpio_clear(%struct.cx23885_dev* %39, i32 %40)
  br label %42

42:                                               ; preds = %2, %35, %28, %21
  %43 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %5, align 8
  %44 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %43, i32 0, i32 0
  %45 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %44, align 8
  %46 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 %45(%struct.dvb_frontend* %46, i32 %47)
  ret i32 %48
}

declare dso_local i32 @cx23885_gpio_enable(%struct.cx23885_dev*, i32, i32) #1

declare dso_local i32 @cx23885_gpio_set(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @cx23885_gpio_clear(%struct.cx23885_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
