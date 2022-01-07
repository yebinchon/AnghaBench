; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_bristol_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_bristol_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.dib0700_state* }
%struct.dib0700_state = type { i32* }
%struct.TYPE_3__ = type { i32* }

@GPIO6 = common dso_local global i32 0, align 4
@GPIO_OUT = common dso_local global i32 0, align 4
@GPIO10 = common dso_local global i32 0, align 4
@force_lna_activation = common dso_local global i64 0, align 8
@GPIO0 = common dso_local global i32 0, align 4
@DEFAULT_DIB3000P_I2C_ADDRESS = common dso_local global i32 0, align 4
@bristol_dib3000mc_config = common dso_local global i32* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@dib3000mc_attach = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @bristol_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bristol_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dib0700_state*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %5 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.dib0700_state*, %struct.dib0700_state** %8, align 8
  store %struct.dib0700_state* %9, %struct.dib0700_state** %4, align 8
  %10 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %79

14:                                               ; preds = %1
  %15 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i32, i32* @GPIO6, align 4
  %19 = load i32, i32* @GPIO_OUT, align 4
  %20 = call i32 @dib0700_set_gpio(%struct.TYPE_4__* %17, i32 %18, i32 %19, i32 0)
  %21 = call i32 @msleep(i32 10)
  %22 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* @GPIO6, align 4
  %26 = load i32, i32* @GPIO_OUT, align 4
  %27 = call i32 @dib0700_set_gpio(%struct.TYPE_4__* %24, i32 %25, i32 %26, i32 1)
  %28 = call i32 @msleep(i32 10)
  %29 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* @GPIO10, align 4
  %33 = load i32, i32* @GPIO_OUT, align 4
  %34 = call i32 @dib0700_set_gpio(%struct.TYPE_4__* %31, i32 %32, i32 %33, i32 0)
  %35 = call i32 @msleep(i32 10)
  %36 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* @GPIO10, align 4
  %40 = load i32, i32* @GPIO_OUT, align 4
  %41 = call i32 @dib0700_set_gpio(%struct.TYPE_4__* %38, i32 %39, i32 %40, i32 1)
  %42 = call i32 @msleep(i32 10)
  %43 = load i64, i64* @force_lna_activation, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %14
  %46 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* @GPIO0, align 4
  %50 = load i32, i32* @GPIO_OUT, align 4
  %51 = call i32 @dib0700_set_gpio(%struct.TYPE_4__* %48, i32 %49, i32 %50, i32 1)
  br label %59

52:                                               ; preds = %14
  %53 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* @GPIO0, align 4
  %57 = load i32, i32* @GPIO_OUT, align 4
  %58 = call i32 @dib0700_set_gpio(%struct.TYPE_4__* %55, i32 %56, i32 %57, i32 0)
  br label %59

59:                                               ; preds = %52, %45
  %60 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* @DEFAULT_DIB3000P_I2C_ADDRESS, align 4
  %65 = load i32*, i32** @bristol_dib3000mc_config, align 8
  %66 = call i64 @dib3000mc_i2c_enumeration(i32* %63, i32 2, i32 %64, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %59
  %69 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %70 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* @GPIO6, align 4
  %73 = load i32, i32* @GPIO_OUT, align 4
  %74 = call i32 @dib0700_set_gpio(%struct.TYPE_4__* %71, i32 %72, i32 %73, i32 0)
  %75 = call i32 @msleep(i32 10)
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %116

78:                                               ; preds = %59
  br label %79

79:                                               ; preds = %78, %1
  %80 = load %struct.dib0700_state*, %struct.dib0700_state** %4, align 8
  %81 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32 1220, i32* %86, align 4
  %87 = load i32, i32* @dib3000mc_attach, align 4
  %88 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %89 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %93 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add i64 10, %94
  %96 = shl i64 %95, 1
  %97 = trunc i64 %96 to i32
  %98 = load i32*, i32** @bristol_dib3000mc_config, align 8
  %99 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %100 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = call i32* @dvb_attach(i32 %87, i32* %91, i32 %97, i32* %102)
  %104 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %105 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %104, i32 0, i32 2
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  store i32* %103, i32** %108, align 8
  %109 = icmp eq i32* %103, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %79
  %111 = load i32, i32* @ENODEV, align 4
  %112 = sub nsw i32 0, %111
  br label %114

113:                                              ; preds = %79
  br label %114

114:                                              ; preds = %113, %110
  %115 = phi i32 [ %112, %110 ], [ 0, %113 ]
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %114, %68
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @dib0700_set_gpio(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @dib3000mc_i2c_enumeration(i32*, i32, i32, i32*) #1

declare dso_local i32* @dvb_attach(i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
