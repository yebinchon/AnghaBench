; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_probe_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_probe_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, i64, %struct.device* }
%struct.device = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"fail to parse irq_wakeup from device tree\0A\00", align 1
@mwifiex_irq_wakeup_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"wifi_wake\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to request irq_wakeup %d (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"fail to init wakeup for mwifiex\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*)* @mwifiex_probe_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_probe_of(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %5 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %5, i32 0, i32 2
  %7 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %62

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @irq_of_parse_and_map(i64 %21, i32 0)
  %23 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %13
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @dev_dbg(%struct.device* %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %62

32:                                               ; preds = %13
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @mwifiex_irq_wakeup_handler, align 4
  %38 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %39 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %40 = call i32 @devm_request_irq(%struct.device* %33, i32 %36, i32 %37, i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.mwifiex_adapter* %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %32
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %48)
  br label %62

50:                                               ; preds = %32
  %51 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @disable_irq(i32 %53)
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = call i64 @device_init_wakeup(%struct.device* %55, i32 1)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %62

61:                                               ; preds = %50
  br label %65

62:                                               ; preds = %58, %43, %29, %12
  %63 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %63, i32 0, i32 0
  store i32 -1, i32* %64, align 8
  br label %65

65:                                               ; preds = %62, %61
  ret void
}

declare dso_local i32 @irq_of_parse_and_map(i64, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.mwifiex_adapter*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i64 @device_init_wakeup(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
