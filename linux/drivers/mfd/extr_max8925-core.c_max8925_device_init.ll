; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max8925-core.c_max8925_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max8925-core.c_max8925_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64* }
%struct.max8925_chip = type { i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.max8925_platform_data = type { i64, i64, i64 }

@MAX8925_RESET_CNFG = common dso_local global i32 0, align 4
@MAX8925_TSC_CNFG1 = common dso_local global i32 0, align 4
@MAX8925_TSC_IRQ = common dso_local global i32 0, align 4
@MAX8925_NREF_OK = common dso_local global i32 0, align 4
@MAX8925_ADC_SCHED = common dso_local global i32 0, align 4
@MAX8925_MPL_CNTL = common dso_local global i32 0, align 4
@rtc_devs = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Failed to add rtc subdev\0A\00", align 1
@onkey_devs = common dso_local global %struct.TYPE_10__* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to add onkey subdev\0A\00", align 1
@bk_devs = common dso_local global %struct.TYPE_10__* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to add backlight subdev\0A\00", align 1
@power_devs = common dso_local global %struct.TYPE_10__* null, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"Failed to add power supply subdev, err = %d\0A\00", align 1
@touch_devs = common dso_local global %struct.TYPE_10__* null, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to add touch subdev\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @max8925_device_init(%struct.max8925_chip* %0, %struct.max8925_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max8925_chip*, align 8
  %5 = alloca %struct.max8925_platform_data*, align 8
  %6 = alloca i32, align 4
  store %struct.max8925_chip* %0, %struct.max8925_chip** %4, align 8
  store %struct.max8925_platform_data* %1, %struct.max8925_platform_data** %5, align 8
  %7 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %8 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %9 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %8, i32 0, i32 5
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.max8925_platform_data*, %struct.max8925_platform_data** %5, align 8
  %14 = call i32 @max8925_irq_init(%struct.max8925_chip* %7, i32 %12, %struct.max8925_platform_data* %13)
  %15 = load %struct.max8925_platform_data*, %struct.max8925_platform_data** %5, align 8
  %16 = icmp ne %struct.max8925_platform_data* %15, null
  br i1 %16, label %17, label %55

17:                                               ; preds = %2
  %18 = load %struct.max8925_platform_data*, %struct.max8925_platform_data** %5, align 8
  %19 = getelementptr inbounds %struct.max8925_platform_data, %struct.max8925_platform_data* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.max8925_platform_data*, %struct.max8925_platform_data** %5, align 8
  %24 = getelementptr inbounds %struct.max8925_platform_data, %struct.max8925_platform_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %22, %17
  %28 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %29 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %28, i32 0, i32 5
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = load i32, i32* @MAX8925_RESET_CNFG, align 4
  %32 = call i32 @max8925_set_bits(%struct.TYPE_11__* %30, i32 %31, i32 1, i32 1)
  %33 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %34 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %33, i32 0, i32 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = load i32, i32* @MAX8925_TSC_CNFG1, align 4
  %37 = call i32 @max8925_set_bits(%struct.TYPE_11__* %35, i32 %36, i32 3, i32 2)
  br label %38

38:                                               ; preds = %44, %27
  %39 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %40 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %39, i32 0, i32 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = load i32, i32* @MAX8925_TSC_IRQ, align 4
  %43 = call i32 @max8925_reg_read(%struct.TYPE_11__* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @MAX8925_NREF_OK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %38, label %49

49:                                               ; preds = %44
  %50 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %51 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %50, i32 0, i32 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = load i32, i32* @MAX8925_ADC_SCHED, align 4
  %54 = call i32 @max8925_set_bits(%struct.TYPE_11__* %52, i32 %53, i32 3, i32 2)
  br label %55

55:                                               ; preds = %49, %22, %2
  %56 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %57 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %56, i32 0, i32 3
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = load i32, i32* @MAX8925_MPL_CNTL, align 4
  %60 = call i32 @max8925_set_bits(%struct.TYPE_11__* %58, i32 %59, i32 16, i32 16)
  %61 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %62 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rtc_devs, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rtc_devs, align 8
  %67 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %66)
  %68 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %69 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @mfd_add_devices(i32 %63, i32 0, %struct.TYPE_10__* %65, i32 %67, i32* null, i32 %70, i32* null)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %55
  %75 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %76 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i8*, ...) @dev_err(i32 %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %184

79:                                               ; preds = %55
  %80 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %81 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** @onkey_devs, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i64 0
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** @onkey_devs, align 8
  %86 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %85)
  %87 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %88 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @mfd_add_devices(i32 %82, i32 0, %struct.TYPE_10__* %84, i32 %86, i32* null, i32 %89, i32* null)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %79
  %94 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %95 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (i32, i8*, ...) @dev_err(i32 %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %179

98:                                               ; preds = %79
  %99 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %100 = load %struct.max8925_platform_data*, %struct.max8925_platform_data** %5, align 8
  %101 = call i32 @init_regulator(%struct.max8925_chip* %99, %struct.max8925_platform_data* %100)
  %102 = load %struct.max8925_platform_data*, %struct.max8925_platform_data** %5, align 8
  %103 = icmp ne %struct.max8925_platform_data* %102, null
  br i1 %103, label %104, label %118

104:                                              ; preds = %98
  %105 = load %struct.max8925_platform_data*, %struct.max8925_platform_data** %5, align 8
  %106 = getelementptr inbounds %struct.max8925_platform_data, %struct.max8925_platform_data* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load %struct.max8925_platform_data*, %struct.max8925_platform_data** %5, align 8
  %111 = getelementptr inbounds %struct.max8925_platform_data, %struct.max8925_platform_data* %110, i32 0, i32 1
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bk_devs, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  store i64* %111, i64** %114, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bk_devs, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  store i32 4, i32* %117, align 8
  br label %118

118:                                              ; preds = %109, %104, %98
  %119 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %120 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bk_devs, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bk_devs, align 8
  %124 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %123)
  %125 = call i32 @mfd_add_devices(i32 %121, i32 0, %struct.TYPE_10__* %122, i32 %124, i32* null, i32 0, i32* null)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %118
  %129 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %130 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (i32, i8*, ...) @dev_err(i32 %131, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %179

133:                                              ; preds = %118
  %134 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %135 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** @power_devs, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i64 0
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** @power_devs, align 8
  %140 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %139)
  %141 = call i32 @mfd_add_devices(i32 %136, i32 0, %struct.TYPE_10__* %138, i32 %140, i32* null, i32 0, i32* null)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %133
  %145 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %146 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = call i32 (i32, i8*, ...) @dev_err(i32 %147, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %148)
  br label %179

150:                                              ; preds = %133
  %151 = load %struct.max8925_platform_data*, %struct.max8925_platform_data** %5, align 8
  %152 = icmp ne %struct.max8925_platform_data* %151, null
  br i1 %152, label %153, label %178

153:                                              ; preds = %150
  %154 = load %struct.max8925_platform_data*, %struct.max8925_platform_data** %5, align 8
  %155 = getelementptr inbounds %struct.max8925_platform_data, %struct.max8925_platform_data* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %178

158:                                              ; preds = %153
  %159 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %160 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** @touch_devs, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i64 0
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** @touch_devs, align 8
  %165 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %164)
  %166 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %167 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @mfd_add_devices(i32 %161, i32 0, %struct.TYPE_10__* %163, i32 %165, i32* null, i32 %168, i32* null)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %158
  %173 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %174 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 (i32, i8*, ...) @dev_err(i32 %175, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %179

177:                                              ; preds = %158
  br label %178

178:                                              ; preds = %177, %153, %150
  store i32 0, i32* %3, align 4
  br label %186

179:                                              ; preds = %172, %144, %128, %93
  %180 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %181 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @mfd_remove_devices(i32 %182)
  br label %184

184:                                              ; preds = %179, %74
  %185 = load i32, i32* %6, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %184, %178
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @max8925_irq_init(%struct.max8925_chip*, i32, %struct.max8925_platform_data*) #1

declare dso_local i32 @max8925_set_bits(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @max8925_reg_read(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @mfd_add_devices(i32, i32, %struct.TYPE_10__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @init_regulator(%struct.max8925_chip*, %struct.max8925_platform_data*) #1

declare dso_local i32 @mfd_remove_devices(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
