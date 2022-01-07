; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo_cs.c_airo_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo_cs.c_airo_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, i64, i32, %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.local_info = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"airo_config\0A\00", align 1
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@CONF_AUTO_SET_VPP = common dso_local global i32 0, align 4
@CONF_AUTO_AUDIO = common dso_local global i32 0, align 4
@CONF_AUTO_SET_IO = common dso_local global i32 0, align 4
@airo_cs_config_check = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @airo_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @airo_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %5 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %6 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %5, i32 0, i32 2
  %7 = call i32 @dev_dbg(i32* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %9 = load i32, i32* @CONF_AUTO_SET_VPP, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @CONF_AUTO_AUDIO, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @CONF_AUTO_SET_IO, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %16 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %20 = load i32, i32* @airo_cs_config_check, align 4
  %21 = call i32 @pcmcia_loop_config(%struct.pcmcia_device* %19, i32 %20, i32* null)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %65

25:                                               ; preds = %1
  %26 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %27 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %65

31:                                               ; preds = %25
  %32 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %33 = call i32 @pcmcia_enable_device(%struct.pcmcia_device* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %65

37:                                               ; preds = %31
  %38 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %39 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %42 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %43, i64 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %49 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %48, i32 0, i32 2
  %50 = call i32 @init_airo_card(i32 %40, i32 %47, i32 1, i32* %49)
  %51 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %52 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.local_info*
  %55 = getelementptr inbounds %struct.local_info, %struct.local_info* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 4
  %56 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %57 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.local_info*
  %60 = getelementptr inbounds %struct.local_info, %struct.local_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %37
  br label %65

64:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %70

65:                                               ; preds = %63, %36, %30, %24
  %66 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %67 = call i32 @airo_release(%struct.pcmcia_device* %66)
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %65, %64
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @pcmcia_loop_config(%struct.pcmcia_device*, i32, i32*) #1

declare dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @init_airo_card(i32, i32, i32, i32*) #1

declare dso_local i32 @airo_release(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
