; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7180_state = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ADV7180_PWR_MAN_ON = common dso_local global i32 0, align 4
@ADV7180_PWR_MAN_OFF = common dso_local global i32 0, align 4
@ADV7180_REG_PWR_MAN = common dso_local global i32 0, align 4
@ADV7180_FLAG_MIPI_CSI2 = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv7180_state*, i32)* @adv7180_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7180_set_power(%struct.adv7180_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adv7180_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adv7180_state* %0, %struct.adv7180_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @ADV7180_PWR_MAN_ON, align 4
  store i32 %11, i32* %6, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @ADV7180_PWR_MAN_OFF, align 4
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %16 = load i32, i32* @ADV7180_REG_PWR_MAN, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @adv7180_write(%struct.adv7180_state* %15, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %62

23:                                               ; preds = %14
  %24 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %25 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ADV7180_FLAG_MIPI_CSI2, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %61

32:                                               ; preds = %23
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %32
  %36 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %37 = call i32 @adv7180_csi_write(%struct.adv7180_state* %36, i32 222, i32 2)
  %38 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %39 = call i32 @adv7180_csi_write(%struct.adv7180_state* %38, i32 210, i32 247)
  %40 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %41 = call i32 @adv7180_csi_write(%struct.adv7180_state* %40, i32 216, i32 101)
  %42 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %43 = call i32 @adv7180_csi_write(%struct.adv7180_state* %42, i32 224, i32 9)
  %44 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %45 = call i32 @adv7180_csi_write(%struct.adv7180_state* %44, i32 44, i32 0)
  %46 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %47 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %35
  %52 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %53 = call i32 @adv7180_csi_write(%struct.adv7180_state* %52, i32 29, i32 128)
  br label %54

54:                                               ; preds = %51, %35
  %55 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %56 = call i32 @adv7180_csi_write(%struct.adv7180_state* %55, i32 0, i32 0)
  br label %60

57:                                               ; preds = %32
  %58 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %59 = call i32 @adv7180_csi_write(%struct.adv7180_state* %58, i32 0, i32 128)
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %60, %23
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %21
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @adv7180_write(%struct.adv7180_state*, i32, i32) #1

declare dso_local i32 @adv7180_csi_write(%struct.adv7180_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
