; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54spi.c_p54spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54spi.c_p54spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.p54s_priv = type { %struct.ieee80211_hw*, %struct.spi_device*, %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.ieee80211_hw = type { %struct.p54s_priv* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not alloc ieee80211_hw\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"spi_setup failed\00", align 1
@p54spi_gpio_power = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"p54spi power\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"power GPIO request failed: %d\00", align 1
@p54spi_gpio_irq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"p54spi irq\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"irq GPIO request failed: %d\00", align 1
@p54spi_interrupt = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"p54spi\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"request_irq() failed\00", align 1
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@p54spi_work = common dso_local global i32 0, align 4
@p54spi_op_start = common dso_local global i32 0, align 4
@p54spi_op_stop = common dso_local global i32 0, align 4
@p54spi_op_tx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @p54spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.p54s_priv*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.p54s_priv* null, %struct.p54s_priv** %4, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = call %struct.ieee80211_hw* @p54_init_common(i32 48)
  store %struct.ieee80211_hw* %9, %struct.ieee80211_hw** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = icmp ne %struct.ieee80211_hw* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 2
  %15 = call i32 (i32*, i8*, ...) @dev_err(i32* %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %168

18:                                               ; preds = %1
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %19, i32 0, i32 0
  %21 = load %struct.p54s_priv*, %struct.p54s_priv** %20, align 8
  store %struct.p54s_priv* %21, %struct.p54s_priv** %4, align 8
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %23 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %24 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %23, i32 0, i32 0
  store %struct.ieee80211_hw* %22, %struct.ieee80211_hw** %24, align 8
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %27 = call i32 @spi_set_drvdata(%struct.spi_device* %25, %struct.p54s_priv* %26)
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %30 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %29, i32 0, i32 1
  store %struct.spi_device* %28, %struct.spi_device** %30, align 8
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 0
  store i32 16, i32* %32, align 4
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 1
  store i32 24000000, i32* %34, align 4
  %35 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %36 = call i32 @spi_setup(%struct.spi_device* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %18
  %40 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %41 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %40, i32 0, i32 1
  %42 = load %struct.spi_device*, %struct.spi_device** %41, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 2
  %44 = call i32 (i32*, i8*, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %162

45:                                               ; preds = %18
  %46 = load i32, i32* @p54spi_gpio_power, align 4
  %47 = call i32 @gpio_request(i32 %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %52 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %51, i32 0, i32 1
  %53 = load %struct.spi_device*, %struct.spi_device** %52, align 8
  %54 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %53, i32 0, i32 2
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (i32*, i8*, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  br label %162

57:                                               ; preds = %45
  %58 = load i32, i32* @p54spi_gpio_irq, align 4
  %59 = call i32 @gpio_request(i32 %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %64 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %63, i32 0, i32 1
  %65 = load %struct.spi_device*, %struct.spi_device** %64, align 8
  %66 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %65, i32 0, i32 2
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (i32*, i8*, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  br label %159

69:                                               ; preds = %57
  %70 = load i32, i32* @p54spi_gpio_power, align 4
  %71 = call i32 @gpio_direction_output(i32 %70, i32 0)
  %72 = load i32, i32* @p54spi_gpio_irq, align 4
  %73 = call i32 @gpio_direction_input(i32 %72)
  %74 = load i32, i32* @p54spi_gpio_irq, align 4
  %75 = call i32 @gpio_to_irq(i32 %74)
  %76 = load i32, i32* @p54spi_interrupt, align 4
  %77 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %78 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %77, i32 0, i32 1
  %79 = load %struct.spi_device*, %struct.spi_device** %78, align 8
  %80 = call i32 @request_irq(i32 %75, i32 %76, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), %struct.spi_device* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %69
  %84 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %85 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %84, i32 0, i32 1
  %86 = load %struct.spi_device*, %struct.spi_device** %85, align 8
  %87 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %86, i32 0, i32 2
  %88 = call i32 (i32*, i8*, ...) @dev_err(i32* %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %156

89:                                               ; preds = %69
  %90 = load i32, i32* @p54spi_gpio_irq, align 4
  %91 = call i32 @gpio_to_irq(i32 %90)
  %92 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %93 = call i32 @irq_set_irq_type(i32 %91, i32 %92)
  %94 = load i32, i32* @p54spi_gpio_irq, align 4
  %95 = call i32 @gpio_to_irq(i32 %94)
  %96 = call i32 @disable_irq(i32 %95)
  %97 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %98 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %97, i32 0, i32 7
  %99 = load i32, i32* @p54spi_work, align 4
  %100 = call i32 @INIT_WORK(i32* %98, i32 %99)
  %101 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %102 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %101, i32 0, i32 6
  %103 = call i32 @init_completion(i32* %102)
  %104 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %105 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %104, i32 0, i32 5
  %106 = call i32 @INIT_LIST_HEAD(i32* %105)
  %107 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %108 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %107, i32 0, i32 4
  %109 = call i32 @mutex_init(i32* %108)
  %110 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %111 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %110, i32 0, i32 3
  %112 = call i32 @spin_lock_init(i32* %111)
  %113 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %114 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %115 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %114, i32 0, i32 2
  %116 = call i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw* %113, i32* %115)
  %117 = load i32, i32* @p54spi_op_start, align 4
  %118 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %119 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  store i32 %117, i32* %120, align 8
  %121 = load i32, i32* @p54spi_op_stop, align 4
  %122 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %123 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 4
  %125 = load i32, i32* @p54spi_op_tx, align 4
  %126 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %127 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  %129 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %130 = call i32 @p54spi_request_firmware(%struct.ieee80211_hw* %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %89
  br label %151

134:                                              ; preds = %89
  %135 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %136 = call i32 @p54spi_request_eeprom(%struct.ieee80211_hw* %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %151

140:                                              ; preds = %134
  %141 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %142 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %143 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %142, i32 0, i32 1
  %144 = load %struct.spi_device*, %struct.spi_device** %143, align 8
  %145 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %144, i32 0, i32 2
  %146 = call i32 @p54_register_common(%struct.ieee80211_hw* %141, i32* %145)
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %140
  br label %151

150:                                              ; preds = %140
  store i32 0, i32* %2, align 4
  br label %168

151:                                              ; preds = %149, %139, %133
  %152 = load i32, i32* @p54spi_gpio_irq, align 4
  %153 = call i32 @gpio_to_irq(i32 %152)
  %154 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %155 = call i32 @free_irq(i32 %153, %struct.spi_device* %154)
  br label %156

156:                                              ; preds = %151, %83
  %157 = load i32, i32* @p54spi_gpio_irq, align 4
  %158 = call i32 @gpio_free(i32 %157)
  br label %159

159:                                              ; preds = %156, %62
  %160 = load i32, i32* @p54spi_gpio_power, align 4
  %161 = call i32 @gpio_free(i32 %160)
  br label %162

162:                                              ; preds = %159, %50, %39
  %163 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %164 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %163, i32 0, i32 0
  %165 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %164, align 8
  %166 = call i32 @p54_free_common(%struct.ieee80211_hw* %165)
  %167 = load i32, i32* %6, align 4
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %162, %150, %12
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local %struct.ieee80211_hw* @p54_init_common(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.p54s_priv*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.spi_device*) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @irq_set_irq_type(i32, i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @p54spi_request_firmware(%struct.ieee80211_hw*) #1

declare dso_local i32 @p54spi_request_eeprom(%struct.ieee80211_hw*) #1

declare dso_local i32 @p54_register_common(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.spi_device*) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @p54_free_common(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
