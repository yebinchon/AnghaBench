; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_gl861.c_friio_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_gl861.c_friio_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.i2c_board_info }
%struct.i2c_board_info = type { i32, i32 }
%struct.dvb_usb_adapter = type { i32* }
%struct.dvb_usb_device = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.tc90522_config = type { i32 }
%struct.i2c_client = type { i32 }
%struct.friio_priv = type { %struct.TYPE_8__, %struct.TYPE_8__*, %struct.i2c_client* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32* }

@friio_config = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"tc90522\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@friio_tuner_i2c_algo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"-tuner\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @friio_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @friio_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.i2c_board_info*, align 8
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca %struct.tc90522_config, align 4
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.friio_priv*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  store %struct.i2c_board_info* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @friio_config, i32 0, i32 0), %struct.i2c_board_info** %4, align 8
  %9 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %10 = call %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter* %9)
  store %struct.dvb_usb_device* %10, %struct.dvb_usb_device** %5, align 8
  %11 = load %struct.i2c_board_info*, %struct.i2c_board_info** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %14, i32 0, i32 2
  %16 = load %struct.i2c_board_info*, %struct.i2c_board_info** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.i2c_client* @dvb_module_probe(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %13, i32* %15, i32 %18, %struct.tc90522_config* %6)
  store %struct.i2c_client* %19, %struct.i2c_client** %7, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %21 = icmp ne %struct.i2c_client* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %72

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.tc90522_config, %struct.tc90522_config* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %27, i32* %31, align 4
  %32 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %33 = call %struct.friio_priv* @adap_to_priv(%struct.dvb_usb_adapter* %32)
  store %struct.friio_priv* %33, %struct.friio_priv** %8, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %35 = load %struct.friio_priv*, %struct.friio_priv** %8, align 8
  %36 = getelementptr inbounds %struct.friio_priv, %struct.friio_priv* %35, i32 0, i32 2
  store %struct.i2c_client* %34, %struct.i2c_client** %36, align 8
  %37 = load %struct.friio_priv*, %struct.friio_priv** %8, align 8
  %38 = getelementptr inbounds %struct.friio_priv, %struct.friio_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  store i32* @friio_tuner_i2c_algo, i32** %39, align 8
  %40 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %41 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.friio_priv*, %struct.friio_priv** %8, align 8
  %45 = getelementptr inbounds %struct.friio_priv, %struct.friio_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32* %43, i32** %47, align 8
  %48 = load %struct.friio_priv*, %struct.friio_priv** %8, align 8
  %49 = getelementptr inbounds %struct.friio_priv, %struct.friio_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %53 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @strscpy(i32 %51, i32 %54, i32 4)
  %56 = load %struct.friio_priv*, %struct.friio_priv** %8, align 8
  %57 = getelementptr inbounds %struct.friio_priv, %struct.friio_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @strlcat(i32 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %61 = load %struct.friio_priv*, %struct.friio_priv** %8, align 8
  %62 = getelementptr inbounds %struct.friio_priv, %struct.friio_priv* %61, i32 0, i32 0
  %63 = load %struct.friio_priv*, %struct.friio_priv** %8, align 8
  %64 = getelementptr inbounds %struct.friio_priv, %struct.friio_priv* %63, i32 0, i32 1
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %64, align 8
  %65 = load %struct.friio_priv*, %struct.friio_priv** %8, align 8
  %66 = getelementptr inbounds %struct.friio_priv, %struct.friio_priv* %65, i32 0, i32 0
  %67 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %68 = call i32 @i2c_set_adapdata(%struct.TYPE_8__* %66, %struct.dvb_usb_device* %67)
  %69 = load %struct.friio_priv*, %struct.friio_priv** %8, align 8
  %70 = getelementptr inbounds %struct.friio_priv, %struct.friio_priv* %69, i32 0, i32 0
  %71 = call i32 @i2c_add_adapter(%struct.TYPE_8__* %70)
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %25, %22
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter*) #1

declare dso_local %struct.i2c_client* @dvb_module_probe(i8*, i32, i32*, i32, %struct.tc90522_config*) #1

declare dso_local %struct.friio_priv* @adap_to_priv(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_8__*, %struct.dvb_usb_device*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
