; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-dvb.c_cx23885_dvb_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-dvb.c_cx23885_dvb_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__*, %struct.dtv_frontend_properties }
%struct.TYPE_2__ = type { %struct.cx23885_tsport* }
%struct.cx23885_tsport = type { {}*, %struct.cx23885_dev* }
%struct.cx23885_dev = type { i32 }
%struct.dtv_frontend_properties = type { i32 }

@GPIO_5 = common dso_local global i32 0, align 4
@GPIO_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @cx23885_dvb_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx23885_dvb_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.cx23885_tsport*, align 8
  %6 = alloca %struct.cx23885_dev*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 1
  store %struct.dtv_frontend_properties* %8, %struct.dtv_frontend_properties** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %12, align 8
  store %struct.cx23885_tsport* %13, %struct.cx23885_tsport** %5, align 8
  %14 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %5, align 8
  %15 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %14, i32 0, i32 1
  %16 = load %struct.cx23885_dev*, %struct.cx23885_dev** %15, align 8
  store %struct.cx23885_dev* %16, %struct.cx23885_dev** %6, align 8
  %17 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %18 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %38 [
    i32 134, label %20
    i32 132, label %34
    i32 131, label %34
    i32 133, label %34
  ]

20:                                               ; preds = %1
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %22 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %29 [
    i32 128, label %24
    i32 129, label %28
    i32 130, label %28
  ]

24:                                               ; preds = %20
  %25 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %26 = load i32, i32* @GPIO_5, align 4
  %27 = call i32 @cx23885_gpio_clear(%struct.cx23885_dev* %25, i32 %26)
  br label %33

28:                                               ; preds = %20, %20
  br label %29

29:                                               ; preds = %20, %28
  %30 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %31 = load i32, i32* @GPIO_5, align 4
  %32 = call i32 @cx23885_gpio_set(%struct.cx23885_dev* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %24
  br label %38

34:                                               ; preds = %1, %1, %1
  %35 = load %struct.cx23885_dev*, %struct.cx23885_dev** %6, align 8
  %36 = load i32, i32* @GPIO_0, align 4
  %37 = call i32 @cx23885_gpio_set(%struct.cx23885_dev* %35, i32 %36)
  br label %38

38:                                               ; preds = %1, %34, %33
  %39 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %5, align 8
  %40 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %39, i32 0, i32 0
  %41 = bitcast {}** %40 to i32 (%struct.dvb_frontend*)**
  %42 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %41, align 8
  %43 = icmp ne i32 (%struct.dvb_frontend*)* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %5, align 8
  %46 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %45, i32 0, i32 0
  %47 = bitcast {}** %46 to i32 (%struct.dvb_frontend*)**
  %48 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %47, align 8
  %49 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %50 = call i32 %48(%struct.dvb_frontend* %49)
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %44
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @cx23885_gpio_clear(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @cx23885_gpio_set(%struct.cx23885_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
