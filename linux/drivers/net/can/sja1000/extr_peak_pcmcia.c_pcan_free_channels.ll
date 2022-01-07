; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_peak_pcmcia.c_pcan_free_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_peak_pcmcia.c_pcan_free_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcan_pccard = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s removed\0A\00", align 1
@PCC_LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcan_pccard*)* @pcan_free_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcan_free_channels(%struct.pcan_pccard* %0) #0 {
  %2 = alloca %struct.pcan_pccard*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pcan_pccard* %0, %struct.pcan_pccard** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %54, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.pcan_pccard*, %struct.pcan_pccard** %2, align 8
  %12 = getelementptr inbounds %struct.pcan_pccard, %struct.pcan_pccard* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %57

15:                                               ; preds = %9
  %16 = load i32, i32* @IFNAMSIZ, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @PCC_LED(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load %struct.pcan_pccard*, %struct.pcan_pccard** %2, align 8
  %25 = getelementptr inbounds %struct.pcan_pccard, %struct.pcan_pccard* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.net_device*, %struct.net_device** %30, align 8
  store %struct.net_device* %31, %struct.net_device** %5, align 8
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = icmp ne %struct.net_device* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %15
  store i32 4, i32* %8, align 4
  br label %50

35:                                               ; preds = %15
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IFNAMSIZ, align 4
  %40 = call i32 @strlcpy(i8* %19, i32 %38, i32 %39)
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = call i32 @unregister_sja1000dev(%struct.net_device* %41)
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = call i32 @free_sja1000dev(%struct.net_device* %43)
  %45 = load %struct.pcan_pccard*, %struct.pcan_pccard** %2, align 8
  %46 = getelementptr inbounds %struct.pcan_pccard, %struct.pcan_pccard* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @dev_info(i32* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %19)
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %35, %34
  %51 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %8, align 4
  switch i32 %52, label %69 [
    i32 0, label %53
    i32 4, label %54
  ]

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %9

57:                                               ; preds = %9
  %58 = load %struct.pcan_pccard*, %struct.pcan_pccard** %2, align 8
  %59 = call i64 @pcan_pccard_present(%struct.pcan_pccard* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load %struct.pcan_pccard*, %struct.pcan_pccard** %2, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @PCC_LED_OFF, align 4
  %65 = call i32 @pcan_set_leds(%struct.pcan_pccard* %62, i32 %63, i32 %64)
  %66 = load %struct.pcan_pccard*, %struct.pcan_pccard** %2, align 8
  %67 = call i32 @pcan_set_can_power(%struct.pcan_pccard* %66, i32 0)
  br label %68

68:                                               ; preds = %61, %57
  ret void

69:                                               ; preds = %50
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PCC_LED(i32) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @unregister_sja1000dev(%struct.net_device*) #2

declare dso_local i32 @free_sja1000dev(%struct.net_device*) #2

declare dso_local i32 @dev_info(i32*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i64 @pcan_pccard_present(%struct.pcan_pccard*) #2

declare dso_local i32 @pcan_set_leds(%struct.pcan_pccard*, i32, i32) #2

declare dso_local i32 @pcan_set_can_power(%struct.pcan_pccard*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
