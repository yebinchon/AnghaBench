; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_hopper_vp3028.c_vp3028_frontend_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_hopper_vp3028.c_vp3028_frontend_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_pci = type { %struct.mantis_hwconfig*, %struct.i2c_adapter }
%struct.mantis_hwconfig = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.dvb_frontend = type { i32 }

@POWER_ON = common dso_local global i32 0, align 4
@MANTIS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Probing for 10353 (DVB-T)\00", align 1
@zl10353_attach = common dso_local global i32 0, align 4
@hopper_vp3028_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Frontend on <%s> POWER ON failed! <%d>\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"Done!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mantis_pci*, %struct.dvb_frontend*)* @vp3028_frontend_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp3028_frontend_init(%struct.mantis_pci* %0, %struct.dvb_frontend* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mantis_pci*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.mantis_hwconfig*, align 8
  %8 = alloca i32, align 4
  store %struct.mantis_pci* %0, %struct.mantis_pci** %4, align 8
  store %struct.dvb_frontend* %1, %struct.dvb_frontend** %5, align 8
  %9 = load %struct.mantis_pci*, %struct.mantis_pci** %4, align 8
  %10 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %9, i32 0, i32 1
  store %struct.i2c_adapter* %10, %struct.i2c_adapter** %6, align 8
  %11 = load %struct.mantis_pci*, %struct.mantis_pci** %4, align 8
  %12 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %11, i32 0, i32 0
  %13 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %12, align 8
  store %struct.mantis_hwconfig* %13, %struct.mantis_hwconfig** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.mantis_pci*, %struct.mantis_pci** %4, align 8
  %15 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %7, align 8
  %16 = getelementptr inbounds %struct.mantis_hwconfig, %struct.mantis_hwconfig* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mantis_gpio_set_bits(%struct.mantis_pci* %14, i32 %17, i32 0)
  %19 = call i32 @msleep(i32 100)
  %20 = load %struct.mantis_pci*, %struct.mantis_pci** %4, align 8
  %21 = load i32, i32* @POWER_ON, align 4
  %22 = call i32 @mantis_frontend_power(%struct.mantis_pci* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = call i32 @msleep(i32 100)
  %24 = load %struct.mantis_pci*, %struct.mantis_pci** %4, align 8
  %25 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %7, align 8
  %26 = getelementptr inbounds %struct.mantis_hwconfig, %struct.mantis_hwconfig* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mantis_gpio_set_bits(%struct.mantis_pci* %24, i32 %27, i32 1)
  %29 = load %struct.mantis_pci*, %struct.mantis_pci** %4, align 8
  %30 = load i32, i32* @POWER_ON, align 4
  %31 = call i32 @mantis_frontend_power(%struct.mantis_pci* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %2
  %35 = call i32 @msleep(i32 250)
  %36 = load i32, i32* @MANTIS_ERROR, align 4
  %37 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %36, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @zl10353_attach, align 4
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %40 = call %struct.dvb_frontend* @dvb_attach(i32 %38, i32* @hopper_vp3028_config, %struct.i2c_adapter* %39)
  store %struct.dvb_frontend* %40, %struct.dvb_frontend** %5, align 8
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %42 = icmp ne %struct.dvb_frontend* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %57

44:                                               ; preds = %34
  br label %54

45:                                               ; preds = %2
  %46 = load i32, i32* @MANTIS_ERROR, align 4
  %47 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %48 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %46, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @MANTIS_ERROR, align 4
  %56 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %55, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %45, %43
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @mantis_gpio_set_bits(%struct.mantis_pci*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mantis_frontend_power(%struct.mantis_pci*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local %struct.dvb_frontend* @dvb_attach(i32, i32*, %struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
