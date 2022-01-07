; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-i2c.c_si476x_core_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-i2c.c_si476x_core_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si476x_core = type { i32, i32, i32, %struct.i2c_client*, i32, i32 }
%struct.i2c_client = type { i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Power up failure(err = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to configure pinmux(err = %d)\0A\00", align 1
@SI476X_PROP_INT_CTL_ENABLE = common dso_local global i32 0, align 4
@SI476X_RDSIEN = common dso_local global i32 0, align 4
@SI476X_STCIEN = common dso_local global i32 0, align 4
@SI476X_CTSIEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Failed to configure interrupt sources(err = %d)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si476x_core_start(%struct.si476x_core* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.si476x_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  store %struct.si476x_core* %0, %struct.si476x_core** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %9 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %8, i32 0, i32 3
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %47, label %13

13:                                               ; preds = %2
  %14 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %15 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @gpio_is_valid(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %21 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @gpio_set_value_cansleep(i32 %22, i32 1)
  br label %24

24:                                               ; preds = %19, %13
  %25 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @enable_irq(i64 %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = call i32 @udelay(i32 100)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %42 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %41, i32 0, i32 2
  %43 = call i32 @atomic_set(i32* %42, i32 1)
  %44 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %45 = call i32 @si476x_core_schedule_polling_work(%struct.si476x_core* %44)
  br label %46

46:                                               ; preds = %40, %34
  br label %64

47:                                               ; preds = %2
  %48 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @enable_irq(i64 %55)
  br label %63

57:                                               ; preds = %47
  %58 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %59 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %58, i32 0, i32 2
  %60 = call i32 @atomic_set(i32* %59, i32 1)
  %61 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %62 = call i32 @si476x_core_schedule_polling_work(%struct.si476x_core* %61)
  br label %63

63:                                               ; preds = %57, %52
  br label %64

64:                                               ; preds = %63, %46
  %65 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %66 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %67 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %66, i32 0, i32 5
  %68 = call i32 @si476x_core_cmd_power_up(%struct.si476x_core* %65, i32* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %73 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %72, i32 0, i32 3
  %74 = load %struct.i2c_client*, %struct.i2c_client** %73, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 1
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %126

78:                                               ; preds = %64
  %79 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %85 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %84, i32 0, i32 2
  %86 = call i32 @atomic_set(i32* %85, i32 1)
  br label %87

87:                                               ; preds = %83, %78
  %88 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %89 = call i32 @si476x_core_config_pinmux(%struct.si476x_core* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %94 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %93, i32 0, i32 3
  %95 = load %struct.i2c_client*, %struct.i2c_client** %94, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 1
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @dev_err(i32* %96, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %126

99:                                               ; preds = %87
  %100 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %101 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %99
  %105 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %106 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @SI476X_PROP_INT_CTL_ENABLE, align 4
  %109 = load i32, i32* @SI476X_RDSIEN, align 4
  %110 = load i32, i32* @SI476X_STCIEN, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @SI476X_CTSIEN, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @regmap_write(i32 %107, i32 %108, i32 %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %104
  %118 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %119 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %118, i32 0, i32 3
  %120 = load %struct.i2c_client*, %struct.i2c_client** %119, align 8
  %121 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %120, i32 0, i32 1
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @dev_err(i32* %121, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  br label %126

124:                                              ; preds = %104
  br label %125

125:                                              ; preds = %124, %99
  store i32 0, i32* %3, align 4
  br label %162

126:                                              ; preds = %117, %92, %71
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @ENODEV, align 4
  %129 = sub nsw i32 0, %128
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %133 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %132, i32 0, i32 2
  %134 = call i32 @atomic_set(i32* %133, i32 0)
  br label %135

135:                                              ; preds = %131, %126
  %136 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %137 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %142 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @disable_irq(i64 %143)
  br label %149

145:                                              ; preds = %135
  %146 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %147 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %146, i32 0, i32 1
  %148 = call i32 @cancel_delayed_work_sync(i32* %147)
  br label %149

149:                                              ; preds = %145, %140
  %150 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %151 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @gpio_is_valid(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %149
  %156 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %157 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @gpio_set_value_cansleep(i32 %158, i32 0)
  br label %160

160:                                              ; preds = %155, %149
  %161 = load i32, i32* %7, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %160, %125
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #1

declare dso_local i32 @enable_irq(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @si476x_core_schedule_polling_work(%struct.si476x_core*) #1

declare dso_local i32 @si476x_core_cmd_power_up(%struct.si476x_core*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @si476x_core_config_pinmux(%struct.si476x_core*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @disable_irq(i64) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
