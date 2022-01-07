; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bh1770_chip = type { i32, i32, i64, i32, i32, i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@BH1770_ALS_PS_STATUS = common dso_local global i32 0, align 4
@BH1770_INTERRUPT = common dso_local global i32 0, align 4
@BH1770_INT_ALS_DATA = common dso_local global i32 0, align 4
@BH1770_INT_ALS_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"lux0_input\00", align 1
@BH1770_INT_LEDS_INT = common dso_local global i32 0, align 4
@prox_rates_ms = common dso_local global i32* null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bh1770_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bh1770_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bh1770_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.bh1770_chip*
  store %struct.bh1770_chip* %9, %struct.bh1770_chip** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %11 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %10, i32 0, i32 5
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %14 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %13, i32 0, i32 6
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load i32, i32* @BH1770_ALS_PS_STATUS, align 4
  %17 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_5__* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %19 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %18, i32 0, i32 6
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i32, i32* @BH1770_INTERRUPT, align 4
  %22 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_5__* %20, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @BH1770_INT_ALS_DATA, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %2
  %28 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %29 = call i32 @bh1770_lux_get_result(%struct.bh1770_chip* %28)
  %30 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %31 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %27
  %36 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %37 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %39 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %38, i32 0, i32 9
  %40 = call i32 @wake_up(i32* %39)
  %41 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %42 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %43 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %46 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @bh1770_lux_update_thresholds(%struct.bh1770_chip* %41, i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %35, %27
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %52 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %51, i32 0, i32 6
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i32, i32* @BH1770_INTERRUPT, align 4
  %55 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_5__* %53, i32 %54, i32 0)
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @BH1770_INT_ALS_INT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %50
  %61 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %62 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %61, i32 0, i32 6
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @sysfs_notify(i32* %65, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %60, %50
  %68 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %69 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @BH1770_INT_LEDS_INT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load i32*, i32** @prox_rates_ms, align 8
  %79 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %80 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %7, align 4
  %84 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %85 = call i32 @bh1770_prox_read_result(%struct.bh1770_chip* %84)
  br label %86

86:                                               ; preds = %77, %72, %67
  %87 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %88 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %87, i32 0, i32 6
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i32, i32* @BH1770_INTERRUPT, align 4
  %91 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %92 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = shl i32 %93, 1
  %95 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %96 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 0
  %99 = or i32 %94, %98
  %100 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_5__* %89, i32 %90, i32 %99)
  %101 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %102 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %101, i32 0, i32 5
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %86
  %107 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %108 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %107, i32 0, i32 4
  %109 = call i32 @cancel_delayed_work_sync(i32* %108)
  %110 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %111 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %110, i32 0, i32 4
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 50
  %114 = call i32 @msecs_to_jiffies(i32 %113)
  %115 = call i32 @schedule_delayed_work(i32* %111, i32 %114)
  br label %116

116:                                              ; preds = %106, %86
  %117 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %117
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @bh1770_lux_get_result(%struct.bh1770_chip*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @bh1770_lux_update_thresholds(%struct.bh1770_chip*, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

declare dso_local i32 @bh1770_prox_read_result(%struct.bh1770_chip*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
