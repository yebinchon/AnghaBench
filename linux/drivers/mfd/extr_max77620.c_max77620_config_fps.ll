; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max77620.c_max77620_config_fps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max77620.c_max77620_config_fps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77620_chip = type { i32, i32, i32, i32, i8**, i8**, %struct.device* }
%struct.device = type { i32 }
%struct.device_node = type { i32 }

@MAX20024_FPS_PERIOD_MAX_US = common dso_local global i32 0, align 4
@MAX77620_FPS_PERIOD_MAX_US = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX77620_FPS_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"fps%d\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"FPS node name %pOFn is not valid\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"maxim,shutdown-fps-time-period-us\00", align 1
@MAX77620_FPS_TIME_PERIOD_MASK = common dso_local global i32 0, align 4
@MAX77620_FPS_TIME_PERIOD_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"maxim,suspend-fps-time-period-us\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"maxim,fps-event-source\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"FPS%d event-source invalid\0A\00", align 1
@MAX77620_FPS_EN_SRC_MASK = common dso_local global i32 0, align 4
@MAX77620_FPS_EN_SRC_SHIFT = common dso_local global i32 0, align 4
@MAX77620_FPS_ENFPS_SW_MASK = common dso_local global i32 0, align 4
@MAX77620_FPS_ENFPS_SW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"maxim,device-state-on-disabled-event\00", align 1
@MAX77620_REG_FPS_CFG0 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"Failed to update FPS CFG: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77620_chip*, %struct.device_node*)* @max77620_config_fps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_config_fps(%struct.max77620_chip* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max77620_chip*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [10 x i8], align 1
  store %struct.max77620_chip* %0, %struct.max77620_chip** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %15 = load %struct.max77620_chip*, %struct.max77620_chip** %4, align 8
  %16 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %15, i32 0, i32 6
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load %struct.max77620_chip*, %struct.max77620_chip** %4, align 8
  %19 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %27 [
    i32 130, label %21
    i32 129, label %23
    i32 128, label %25
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* @MAX20024_FPS_PERIOD_MAX_US, align 4
  store i32 %22, i32* %9, align 4
  br label %30

23:                                               ; preds = %2
  %24 = load i32, i32* @MAX77620_FPS_PERIOD_MAX_US, align 4
  store i32 %24, i32* %9, align 4
  br label %30

25:                                               ; preds = %2
  %26 = load i32, i32* @MAX20024_FPS_PERIOD_MAX_US, align 4
  store i32 %26, i32* %9, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %188

30:                                               ; preds = %25, %23, %21
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %45, %30
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @MAX77620_FPS_COUNT, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @sprintf(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.device_node*, %struct.device_node** %5, align 8
  %40 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  %41 = call i64 @of_node_name_eq(%struct.device_node* %39, i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %48

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %31

48:                                               ; preds = %43, %31
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @MAX77620_FPS_COUNT, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = load %struct.device_node*, %struct.device_node** %5, align 8
  %55 = ptrtoint %struct.device_node* %54 to i32
  %56 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %188

59:                                               ; preds = %48
  %60 = load %struct.device_node*, %struct.device_node** %5, align 8
  %61 = call i32 @of_property_read_u32(%struct.device_node* %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32* %10)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %91, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @MAX77620_FPS_TIME_PERIOD_MASK, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i8* @min(i32 %68, i32 %69)
  %71 = load %struct.max77620_chip*, %struct.max77620_chip** %4, align 8
  %72 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %71, i32 0, i32 5
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  store i8* %70, i8** %76, align 8
  %77 = load %struct.max77620_chip*, %struct.max77620_chip** %4, align 8
  %78 = load %struct.max77620_chip*, %struct.max77620_chip** %4, align 8
  %79 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %78, i32 0, i32 5
  %80 = load i8**, i8*** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @max77620_get_fps_period_reg_value(%struct.max77620_chip* %77, i8* %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @MAX77620_FPS_TIME_PERIOD_SHIFT, align 4
  %88 = shl i32 %86, %87
  %89 = load i32, i32* %8, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %64, %59
  %92 = load %struct.device_node*, %struct.device_node** %5, align 8
  %93 = call i32 @of_property_read_u32(%struct.device_node* %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32* %10)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i8* @min(i32 %97, i32 %98)
  %100 = load %struct.max77620_chip*, %struct.max77620_chip** %4, align 8
  %101 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %100, i32 0, i32 4
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  store i8* %99, i8** %105, align 8
  br label %106

106:                                              ; preds = %96, %91
  %107 = load %struct.device_node*, %struct.device_node** %5, align 8
  %108 = call i32 @of_property_read_u32(%struct.device_node* %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32* %10)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %139, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* %10, align 4
  %113 = icmp sgt i32 %112, 2
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load %struct.device*, %struct.device** %6, align 8
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @dev_err(%struct.device* %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %188

120:                                              ; preds = %111
  %121 = load i32, i32* @MAX77620_FPS_EN_SRC_MASK, align 4
  %122 = load i32, i32* %7, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @MAX77620_FPS_EN_SRC_SHIFT, align 4
  %126 = shl i32 %124, %125
  %127 = load i32, i32* %8, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %138

131:                                              ; preds = %120
  %132 = load i32, i32* @MAX77620_FPS_ENFPS_SW_MASK, align 4
  %133 = load i32, i32* %7, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* @MAX77620_FPS_ENFPS_SW, align 4
  %136 = load i32, i32* %8, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %131, %120
  br label %139

139:                                              ; preds = %138, %106
  %140 = load %struct.max77620_chip*, %struct.max77620_chip** %4, align 8
  %141 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %169, label %144

144:                                              ; preds = %139
  %145 = load %struct.max77620_chip*, %struct.max77620_chip** %4, align 8
  %146 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %169, label %149

149:                                              ; preds = %144
  %150 = load %struct.device_node*, %struct.device_node** %5, align 8
  %151 = call i32 @of_property_read_u32(%struct.device_node* %150, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32* %10)
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %168, label %154

154:                                              ; preds = %149
  %155 = load i32, i32* %10, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load %struct.max77620_chip*, %struct.max77620_chip** %4, align 8
  %159 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %158, i32 0, i32 1
  store i32 1, i32* %159, align 4
  br label %167

160:                                              ; preds = %154
  %161 = load i32, i32* %10, align 4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load %struct.max77620_chip*, %struct.max77620_chip** %4, align 8
  %165 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %164, i32 0, i32 2
  store i32 1, i32* %165, align 8
  br label %166

166:                                              ; preds = %163, %160
  br label %167

167:                                              ; preds = %166, %157
  br label %168

168:                                              ; preds = %167, %149
  br label %169

169:                                              ; preds = %168, %144, %139
  %170 = load %struct.max77620_chip*, %struct.max77620_chip** %4, align 8
  %171 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load i64, i64* @MAX77620_REG_FPS_CFG0, align 8
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %173, %175
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @regmap_update_bits(i32 %172, i64 %176, i32 %177, i32 %178)
  store i32 %179, i32* %13, align 4
  %180 = load i32, i32* %13, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %169
  %183 = load %struct.device*, %struct.device** %6, align 8
  %184 = load i32, i32* %13, align 4
  %185 = call i32 @dev_err(%struct.device* %183, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %13, align 4
  store i32 %186, i32* %3, align 4
  br label %188

187:                                              ; preds = %169
  store i32 0, i32* %3, align 4
  br label %188

188:                                              ; preds = %187, %182, %114, %52, %27
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @of_node_name_eq(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @max77620_get_fps_period_reg_value(%struct.max77620_chip*, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
