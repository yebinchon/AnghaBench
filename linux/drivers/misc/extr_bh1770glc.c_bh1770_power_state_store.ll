; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_power_state_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_power_state_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.bh1770_chip = type { i32, i32, i32 }

@BH1770_ENABLE = common dso_local global i32 0, align 4
@BH1770_LUX_DEF_THRES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @bh1770_power_state_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bh1770_power_state_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bh1770_chip*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.bh1770_chip* @dev_get_drvdata(%struct.device* %13)
  store %struct.bh1770_chip* %14, %struct.bh1770_chip** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @kstrtoul(i8* %15, i32 0, i64* %11)
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %12, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i64, i64* %12, align 8
  store i64 %20, i64* %5, align 8
  br label %73

21:                                               ; preds = %4
  %22 = load %struct.bh1770_chip*, %struct.bh1770_chip** %10, align 8
  %23 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %21
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = call i32 @pm_runtime_get_sync(%struct.device* %28)
  %30 = load %struct.bh1770_chip*, %struct.bh1770_chip** %10, align 8
  %31 = load %struct.bh1770_chip*, %struct.bh1770_chip** %10, align 8
  %32 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @bh1770_lux_rate(%struct.bh1770_chip* %30, i32 %33)
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp ult i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = call i32 @pm_runtime_put(%struct.device* %38)
  br label %68

40:                                               ; preds = %27
  %41 = load %struct.bh1770_chip*, %struct.bh1770_chip** %10, align 8
  %42 = load i32, i32* @BH1770_ENABLE, align 4
  %43 = call i64 @bh1770_lux_interrupt_control(%struct.bh1770_chip* %41, i32 %42)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp ult i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = call i32 @pm_runtime_put(%struct.device* %47)
  br label %68

49:                                               ; preds = %40
  %50 = load %struct.bh1770_chip*, %struct.bh1770_chip** %10, align 8
  %51 = load i32, i32* @BH1770_LUX_DEF_THRES, align 4
  %52 = load i32, i32* @BH1770_LUX_DEF_THRES, align 4
  %53 = call i32 @bh1770_lux_update_thresholds(%struct.bh1770_chip* %50, i32 %51, i32 %52)
  %54 = load %struct.bh1770_chip*, %struct.bh1770_chip** %10, align 8
  %55 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load %struct.bh1770_chip*, %struct.bh1770_chip** %10, align 8
  %57 = call i32 @bh1770_prox_mode_control(%struct.bh1770_chip* %56)
  br label %66

58:                                               ; preds = %21
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = call i32 @pm_runtime_suspended(%struct.device* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = call i32 @pm_runtime_put(%struct.device* %63)
  br label %65

65:                                               ; preds = %62, %58
  br label %66

66:                                               ; preds = %65, %49
  %67 = load i64, i64* %9, align 8
  store i64 %67, i64* %12, align 8
  br label %68

68:                                               ; preds = %66, %46, %37
  %69 = load %struct.bh1770_chip*, %struct.bh1770_chip** %10, align 8
  %70 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i64, i64* %12, align 8
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %68, %19
  %74 = load i64, i64* %5, align 8
  ret i64 %74
}

declare dso_local %struct.bh1770_chip* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i64 @bh1770_lux_rate(%struct.bh1770_chip*, i32) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

declare dso_local i64 @bh1770_lux_interrupt_control(%struct.bh1770_chip*, i32) #1

declare dso_local i32 @bh1770_lux_update_thresholds(%struct.bh1770_chip*, i32, i32) #1

declare dso_local i32 @bh1770_prox_mode_control(%struct.bh1770_chip*) #1

declare dso_local i32 @pm_runtime_suspended(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
