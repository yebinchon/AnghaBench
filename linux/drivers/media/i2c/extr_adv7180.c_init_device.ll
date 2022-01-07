; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7180_state = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@ADV7180_REG_PWR_MAN = common dso_local global i32 0, align 4
@ADV7180_PWR_MAN_RES = common dso_local global i32 0, align 4
@ADV7180_REG_ICONF1 = common dso_local global i32 0, align 4
@ADV7180_ICONF1_ACTIVE_LOW = common dso_local global i32 0, align 4
@ADV7180_ICONF1_PSYNC_ONLY = common dso_local global i32 0, align 4
@ADV7180_REG_IMR1 = common dso_local global i32 0, align 4
@ADV7180_REG_IMR2 = common dso_local global i32 0, align 4
@ADV7180_REG_IMR3 = common dso_local global i32 0, align 4
@ADV7180_IRQ3_AD_CHANGE = common dso_local global i32 0, align 4
@ADV7180_REG_IMR4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv7180_state*)* @init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_device(%struct.adv7180_state* %0) #0 {
  %2 = alloca %struct.adv7180_state*, align 8
  %3 = alloca i32, align 4
  store %struct.adv7180_state* %0, %struct.adv7180_state** %2, align 8
  %4 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %5 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %8 = call i32 @adv7180_set_power_pin(%struct.adv7180_state* %7, i32 1)
  %9 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %10 = load i32, i32* @ADV7180_REG_PWR_MAN, align 4
  %11 = load i32, i32* @ADV7180_PWR_MAN_RES, align 4
  %12 = call i32 @adv7180_write(%struct.adv7180_state* %9, i32 %10, i32 %11)
  %13 = call i32 @usleep_range(i32 5000, i32 10000)
  %14 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %15 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.adv7180_state*)**
  %19 = load i32 (%struct.adv7180_state*)*, i32 (%struct.adv7180_state*)** %18, align 8
  %20 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %21 = call i32 %19(%struct.adv7180_state* %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %79

25:                                               ; preds = %1
  %26 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %27 = call i32 @adv7180_program_std(%struct.adv7180_state* %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %79

31:                                               ; preds = %25
  %32 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %33 = call i32 @adv7180_set_field_mode(%struct.adv7180_state* %32)
  %34 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %35 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %78

38:                                               ; preds = %31
  %39 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %40 = load i32, i32* @ADV7180_REG_ICONF1, align 4
  %41 = load i32, i32* @ADV7180_ICONF1_ACTIVE_LOW, align 4
  %42 = load i32, i32* @ADV7180_ICONF1_PSYNC_ONLY, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @adv7180_write(%struct.adv7180_state* %39, i32 %40, i32 %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %79

48:                                               ; preds = %38
  %49 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %50 = load i32, i32* @ADV7180_REG_IMR1, align 4
  %51 = call i32 @adv7180_write(%struct.adv7180_state* %49, i32 %50, i32 0)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %79

55:                                               ; preds = %48
  %56 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %57 = load i32, i32* @ADV7180_REG_IMR2, align 4
  %58 = call i32 @adv7180_write(%struct.adv7180_state* %56, i32 %57, i32 0)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %79

62:                                               ; preds = %55
  %63 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %64 = load i32, i32* @ADV7180_REG_IMR3, align 4
  %65 = load i32, i32* @ADV7180_IRQ3_AD_CHANGE, align 4
  %66 = call i32 @adv7180_write(%struct.adv7180_state* %63, i32 %64, i32 %65)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %79

70:                                               ; preds = %62
  %71 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %72 = load i32, i32* @ADV7180_REG_IMR4, align 4
  %73 = call i32 @adv7180_write(%struct.adv7180_state* %71, i32 %72, i32 0)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %79

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %31
  br label %79

79:                                               ; preds = %78, %76, %69, %61, %54, %47, %30, %24
  %80 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %81 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adv7180_set_power_pin(%struct.adv7180_state*, i32) #1

declare dso_local i32 @adv7180_write(%struct.adv7180_state*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @adv7180_program_std(%struct.adv7180_state*) #1

declare dso_local i32 @adv7180_set_field_mode(%struct.adv7180_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
