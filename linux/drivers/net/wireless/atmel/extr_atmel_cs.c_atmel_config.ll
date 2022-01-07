; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel_cs.c_atmel_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel_cs.c_atmel_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.local_info*, i32, %struct.TYPE_2__**, i32 }
%struct.local_info = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pcmcia_device_id = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"atmel_config\0A\00", align 1
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@CONF_AUTO_SET_VPP = common dso_local global i32 0, align 4
@CONF_AUTO_AUDIO = common dso_local global i32 0, align 4
@CONF_AUTO_SET_IO = common dso_local global i32 0, align 4
@atmel_config_check = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"atmel: cannot assign IRQ: check that CONFIG_ISA is set in kernel config.\00", align 1
@ATMEL_FW_TYPE_NONE = common dso_local global i32 0, align 4
@card_present = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @atmel_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.local_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcmcia_device_id*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %8 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %7, i32 0, i32 1
  %9 = load %struct.local_info*, %struct.local_info** %8, align 8
  store %struct.local_info* %9, %struct.local_info** %4, align 8
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %11 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %10, i32 0, i32 2
  %12 = call %struct.pcmcia_device_id* @dev_get_drvdata(i32* %11)
  store %struct.pcmcia_device_id* %12, %struct.pcmcia_device_id** %6, align 8
  %13 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %14 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %13, i32 0, i32 2
  %15 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %17 = load i32, i32* @CONF_AUTO_SET_VPP, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @CONF_AUTO_AUDIO, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @CONF_AUTO_SET_IO, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %24 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %28 = load i32, i32* @atmel_config_check, align 4
  %29 = call i64 @pcmcia_loop_config(%struct.pcmcia_device* %27, i32 %28, i32* null)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %85

32:                                               ; preds = %1
  %33 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %34 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %39 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %38, i32 0, i32 2
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  br label %85

41:                                               ; preds = %32
  %42 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %43 = call i32 @pcmcia_enable_device(%struct.pcmcia_device* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %85

47:                                               ; preds = %41
  %48 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %49 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %52 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %53, i64 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %6, align 8
  %59 = icmp ne %struct.pcmcia_device_id* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %47
  %61 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %6, align 8
  %62 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  br label %66

64:                                               ; preds = %47
  %65 = load i32, i32* @ATMEL_FW_TYPE_NONE, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i32 [ %63, %60 ], [ %65, %64 ]
  %68 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %69 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %68, i32 0, i32 2
  %70 = load i32, i32* @card_present, align 4
  %71 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %72 = call i32 @init_atmel_card(i32 %50, i32 %57, i32 %67, i32* %69, i32 %70, %struct.pcmcia_device* %71)
  %73 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %74 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %73, i32 0, i32 1
  %75 = load %struct.local_info*, %struct.local_info** %74, align 8
  %76 = getelementptr inbounds %struct.local_info, %struct.local_info* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 4
  %77 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %78 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %77, i32 0, i32 1
  %79 = load %struct.local_info*, %struct.local_info** %78, align 8
  %80 = getelementptr inbounds %struct.local_info, %struct.local_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %66
  br label %85

84:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %90

85:                                               ; preds = %83, %46, %37, %31
  %86 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %87 = call i32 @atmel_release(%struct.pcmcia_device* %86)
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %85, %84
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.pcmcia_device_id* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @pcmcia_loop_config(%struct.pcmcia_device*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @init_atmel_card(i32, i32, i32, i32*, i32, %struct.pcmcia_device*) #1

declare dso_local i32 @atmel_release(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
