; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/spi/extr_cxd2880-spi.c_cxd2880_spi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/spi/extr_cxd2880-spi.c_cxd2880_spi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.cxd2880_dvb_spi = type { i64, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32*)* }

@.str = private unnamed_addr constant [13 x i8] c"invalid arg\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"cxd2880_spi remove ok.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @cxd2880_spi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_spi_remove(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.cxd2880_dvb_spi*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %6 = icmp ne %struct.spi_device* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = call i32 @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %61

11:                                               ; preds = %1
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 0
  %14 = call %struct.cxd2880_dvb_spi* @dev_get_drvdata(i32* %13)
  store %struct.cxd2880_dvb_spi* %14, %struct.cxd2880_dvb_spi** %4, align 8
  %15 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %4, align 8
  %16 = icmp ne %struct.cxd2880_dvb_spi* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %61

21:                                               ; preds = %11
  %22 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %4, align 8
  %23 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_3__*, i32*)*, i32 (%struct.TYPE_3__*, i32*)** %25, align 8
  %27 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %4, align 8
  %28 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %4, align 8
  %31 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %30, i32 0, i32 5
  %32 = call i32 %26(%struct.TYPE_3__* %29, i32* %31)
  %33 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %4, align 8
  %34 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %33, i32 0, i32 4
  %35 = call i32 @dvb_dmxdev_release(i32* %34)
  %36 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %4, align 8
  %37 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %36, i32 0, i32 3
  %38 = call i32 @dvb_dmx_release(%struct.TYPE_4__* %37)
  %39 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %4, align 8
  %40 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %39, i32 0, i32 2
  %41 = call i32 @dvb_unregister_frontend(i32* %40)
  %42 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %4, align 8
  %43 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %42, i32 0, i32 2
  %44 = call i32 @dvb_frontend_detach(i32* %43)
  %45 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %4, align 8
  %46 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %45, i32 0, i32 1
  %47 = call i32 @dvb_unregister_adapter(i32* %46)
  %48 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %4, align 8
  %49 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %21
  %53 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %4, align 8
  %54 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @regulator_disable(i64 %55)
  br label %57

57:                                               ; preds = %52, %21
  %58 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %4, align 8
  %59 = call i32 @kfree(%struct.cxd2880_dvb_spi* %58)
  %60 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %57, %17, %7
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.cxd2880_dvb_spi* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dvb_dmxdev_release(i32*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_4__*) #1

declare dso_local i32 @dvb_unregister_frontend(i32*) #1

declare dso_local i32 @dvb_frontend_detach(i32*) #1

declare dso_local i32 @dvb_unregister_adapter(i32*) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @kfree(%struct.cxd2880_dvb_spi*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
