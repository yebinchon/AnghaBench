; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_check_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_check_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { i64 }
%struct.net_device = type { i32 }

@QLC_83XX_ASIC_TEMP = common dso_local global i32 0, align 4
@QLCNIC_ASIC_TEMP = common dso_local global i32 0, align 4
@QLCNIC_TEMP_PANIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [87 x i8] c"Device temperature %d degrees C exceeds maximum allowed. Hardware has been shut down.\0A\00", align 1
@QLCNIC_TEMP_WARN = common dso_local global i64 0, align 8
@QLCNIC_TEMP_NORMAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [83 x i8] c"Device temperature %d degrees C exceeds operating range. Immediate action needed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Device temperature is now %d degrees C in normal range.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_check_temp(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %8, i32 0, i32 1
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %3, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %12 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* @QLC_83XX_ASIC_TEMP, align 4
  %19 = call i64 @QLCRDX(%struct.TYPE_2__* %17, i32 %18)
  store i64 %19, i64* %6, align 8
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %22 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %26 = load i32, i32* @QLCNIC_ASIC_TEMP, align 4
  %27 = call i64 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %25, i32 %26)
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @qlcnic_get_temp_state(i64 %29)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @qlcnic_get_temp_val(i64 %31)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @QLCNIC_TEMP_PANIC, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i64 %39)
  store i32 1, i32* %7, align 4
  br label %74

41:                                               ; preds = %28
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @QLCNIC_TEMP_WARN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @QLCNIC_TEMP_NORMAL, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %53, %45
  br label %73

59:                                               ; preds = %41
  %60 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @QLCNIC_TEMP_WARN, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @dev_info(i32* %69, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  br label %72

72:                                               ; preds = %67, %59
  br label %73

73:                                               ; preds = %72, %58
  br label %74

74:                                               ; preds = %73, %36
  %75 = load i64, i64* %4, align 8
  %76 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %77 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i64 %75, i64* %79, align 8
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @QLCRDX(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @qlcnic_82xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @qlcnic_get_temp_state(i64) #1

declare dso_local i64 @qlcnic_get_temp_val(i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
