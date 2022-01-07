; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_tuner_attach_stv6111.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_tuner_attach_stv6111.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene_channel = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.dvb_frontend = type { i32 }

@stv6111_attach = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"stv6111_attach() failed!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngene_channel*)* @tuner_attach_stv6111 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_attach_stv6111(%struct.ngene_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ngene_channel*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca i32, align 4
  store %struct.ngene_channel* %0, %struct.ngene_channel** %3, align 8
  %8 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %9 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %15 = call %struct.i2c_adapter* @i2c_adapter_from_chan(%struct.ngene_channel* %14)
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %5, align 8
  %16 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %17 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 99, i32 96
  %23 = add nsw i32 4, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @stv6111_attach, align 4
  %25 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %26 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.dvb_frontend* @dvb_attach(i32 %24, i32 %27, %struct.i2c_adapter* %28, i32 %29)
  store %struct.dvb_frontend* %30, %struct.dvb_frontend** %6, align 8
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %32 = icmp ne %struct.dvb_frontend* %31, null
  br i1 %32, label %50, label %33

33:                                               ; preds = %1
  %34 = load i32, i32* @stv6111_attach, align 4
  %35 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %36 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, -5
  %41 = call %struct.dvb_frontend* @dvb_attach(i32 %34, i32 %37, %struct.i2c_adapter* %38, i32 %40)
  store %struct.dvb_frontend* %41, %struct.dvb_frontend** %6, align 8
  %42 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %43 = icmp ne %struct.dvb_frontend* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %33
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %51

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49, %1
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %44
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.i2c_adapter* @i2c_adapter_from_chan(%struct.ngene_channel*) #1

declare dso_local %struct.dvb_frontend* @dvb_attach(i32, i32, %struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
