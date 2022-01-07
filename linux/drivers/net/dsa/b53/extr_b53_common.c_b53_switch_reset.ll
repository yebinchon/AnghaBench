; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_switch_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_switch_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i64, i32 }

@B53_CTRL_PAGE = common dso_local global i32 0, align 4
@B53_SOFTRESET = common dso_local global i32 0, align 4
@BCM58XX_DEVICE_ID = common dso_local global i64 0, align 8
@BCM583XX_DEVICE_ID = common dso_local global i64 0, align 8
@SW_RST = common dso_local global i32 0, align 4
@EN_SW_RST = common dso_local global i32 0, align 4
@EN_CH_RST = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@B53_SWITCH_MODE = common dso_local global i32 0, align 4
@SM_SW_FWD_EN = common dso_local global i32 0, align 4
@SM_SW_FWD_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to enable switch!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FAST_AGE_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b53_device*)* @b53_switch_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_switch_reset(%struct.b53_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b53_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %3, align 8
  store i32 1000, i32* %4, align 4
  %7 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %8 = call i32 @b53_switch_reset_gpio(%struct.b53_device* %7)
  %9 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %10 = call i64 @is539x(%struct.b53_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %14 = load i32, i32* @B53_CTRL_PAGE, align 4
  %15 = load i32, i32* @B53_SOFTRESET, align 4
  %16 = call i32 @b53_write8(%struct.b53_device* %13, i32 %14, i32 %15, i32 131)
  %17 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %18 = load i32, i32* @B53_CTRL_PAGE, align 4
  %19 = load i32, i32* @B53_SOFTRESET, align 4
  %20 = call i32 @b53_write8(%struct.b53_device* %17, i32 %18, i32 %19, i32 0)
  br label %21

21:                                               ; preds = %12, %1
  %22 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %23 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BCM58XX_DEVICE_ID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %29 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BCM583XX_DEVICE_ID, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %73

33:                                               ; preds = %27, %21
  %34 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %35 = load i32, i32* @B53_CTRL_PAGE, align 4
  %36 = load i32, i32* @B53_SOFTRESET, align 4
  %37 = call i32 @b53_read8(%struct.b53_device* %34, i32 %35, i32 %36, i32* %6)
  %38 = load i32, i32* @SW_RST, align 4
  %39 = load i32, i32* @EN_SW_RST, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @EN_CH_RST, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %46 = load i32, i32* @B53_CTRL_PAGE, align 4
  %47 = load i32, i32* @B53_SOFTRESET, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @b53_write8(%struct.b53_device* %45, i32 %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %62, %33
  %51 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %52 = load i32, i32* @B53_CTRL_PAGE, align 4
  %53 = load i32, i32* @B53_SOFTRESET, align 4
  %54 = call i32 @b53_read8(%struct.b53_device* %51, i32 %52, i32 %53, i32* %6)
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @SW_RST, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  br label %66

60:                                               ; preds = %50
  %61 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %62

62:                                               ; preds = %60
  %63 = load i32, i32* %4, align 4
  %64 = add i32 %63, -1
  store i32 %64, i32* %4, align 4
  %65 = icmp ugt i32 %63, 0
  br i1 %65, label %50, label %66

66:                                               ; preds = %62, %59
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @ETIMEDOUT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %117

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %27
  %74 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %75 = load i32, i32* @B53_CTRL_PAGE, align 4
  %76 = load i32, i32* @B53_SWITCH_MODE, align 4
  %77 = call i32 @b53_read8(%struct.b53_device* %74, i32 %75, i32 %76, i32* %5)
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @SM_SW_FWD_EN, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %111, label %82

82:                                               ; preds = %73
  %83 = load i32, i32* @SM_SW_FWD_MODE, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %5, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* @SM_SW_FWD_EN, align 4
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %91 = load i32, i32* @B53_CTRL_PAGE, align 4
  %92 = load i32, i32* @B53_SWITCH_MODE, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @b53_write8(%struct.b53_device* %90, i32 %91, i32 %92, i32 %93)
  %95 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %96 = load i32, i32* @B53_CTRL_PAGE, align 4
  %97 = load i32, i32* @B53_SWITCH_MODE, align 4
  %98 = call i32 @b53_read8(%struct.b53_device* %95, i32 %96, i32 %97, i32* %5)
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @SM_SW_FWD_EN, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %82
  %104 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %105 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @dev_err(i32 %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %117

110:                                              ; preds = %82
  br label %111

111:                                              ; preds = %110, %73
  %112 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %113 = call i32 @b53_enable_mib(%struct.b53_device* %112)
  %114 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %115 = load i32, i32* @FAST_AGE_STATIC, align 4
  %116 = call i32 @b53_flush_arl(%struct.b53_device* %114, i32 %115)
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %111, %103, %69
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @b53_switch_reset_gpio(%struct.b53_device*) #1

declare dso_local i64 @is539x(%struct.b53_device*) #1

declare dso_local i32 @b53_write8(%struct.b53_device*, i32, i32, i32) #1

declare dso_local i32 @b53_read8(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @b53_enable_mib(%struct.b53_device*) #1

declare dso_local i32 @b53_flush_arl(%struct.b53_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
