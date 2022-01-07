; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-power.c_twl4030_configure_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-power.c_twl4030_configure_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_resconfig = type { i64, i32, i32, i32, i32, i32 }

@TOTAL_RESOURCES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"TWL4030 Resource %d does not exist\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@res_config_addrs = common dso_local global i32* null, align 8
@TWL_MODULE_PM_RECEIVER = common dso_local global i32 0, align 4
@DEV_GRP_OFFSET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"TWL4030 Resource %d group could not be read\0A\00", align 1
@TWL4030_RESCONFIG_UNDEF = common dso_local global i32 0, align 4
@DEV_GRP_MASK = common dso_local global i32 0, align 4
@DEV_GRP_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"TWL4030 failed to program devgroup\0A\00", align 1
@TYPE_OFFSET = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"TWL4030 Resource %d type could not be read\0A\00", align 1
@TYPE_MASK = common dso_local global i32 0, align 4
@TYPE_SHIFT = common dso_local global i32 0, align 4
@TYPE2_MASK = common dso_local global i32 0, align 4
@TYPE2_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"TWL4030 failed to program resource type\0A\00", align 1
@REMAP_OFFSET = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [45 x i8] c"TWL4030 Resource %d remap could not be read\0A\00", align 1
@OFF_STATE_MASK = common dso_local global i32 0, align 4
@OFF_STATE_SHIFT = common dso_local global i32 0, align 4
@SLEEP_STATE_MASK = common dso_local global i32 0, align 4
@SLEEP_STATE_SHIFT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"TWL4030 failed to program remap\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl4030_resconfig*)* @twl4030_configure_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_configure_resource(%struct.twl4030_resconfig* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.twl4030_resconfig*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.twl4030_resconfig* %0, %struct.twl4030_resconfig** %3, align 8
  %9 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %3, align 8
  %10 = getelementptr inbounds %struct.twl4030_resconfig, %struct.twl4030_resconfig* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TOTAL_RESOURCES, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %3, align 8
  %16 = getelementptr inbounds %struct.twl4030_resconfig, %struct.twl4030_resconfig* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %202

21:                                               ; preds = %1
  %22 = load i32*, i32** @res_config_addrs, align 8
  %23 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %3, align 8
  %24 = getelementptr inbounds %struct.twl4030_resconfig, %struct.twl4030_resconfig* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @TWL_MODULE_PM_RECEIVER, align 4
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @DEV_GRP_OFFSET, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @twl_i2c_read_u8(i32 %28, i32* %7, i64 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %21
  %37 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %3, align 8
  %38 = getelementptr inbounds %struct.twl4030_resconfig, %struct.twl4030_resconfig* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %202

42:                                               ; preds = %21
  %43 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %3, align 8
  %44 = getelementptr inbounds %struct.twl4030_resconfig, %struct.twl4030_resconfig* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @TWL4030_RESCONFIG_UNDEF, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %42
  %49 = load i32, i32* @DEV_GRP_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %3, align 8
  %54 = getelementptr inbounds %struct.twl4030_resconfig, %struct.twl4030_resconfig* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @DEV_GRP_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* @TWL_MODULE_PM_RECEIVER, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* @DEV_GRP_OFFSET, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @twl_i2c_write_u8(i32 %60, i32 %61, i64 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %48
  %70 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %202

72:                                               ; preds = %48
  br label %73

73:                                               ; preds = %72, %42
  %74 = load i32, i32* @TWL_MODULE_PM_RECEIVER, align 4
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* @TYPE_OFFSET, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @twl_i2c_read_u8(i32 %74, i32* %6, i64 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %73
  %83 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %3, align 8
  %84 = getelementptr inbounds %struct.twl4030_resconfig, %struct.twl4030_resconfig* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %85)
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %202

88:                                               ; preds = %73
  %89 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %3, align 8
  %90 = getelementptr inbounds %struct.twl4030_resconfig, %struct.twl4030_resconfig* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @TWL4030_RESCONFIG_UNDEF, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %88
  %95 = load i32, i32* @TYPE_MASK, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %6, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %6, align 4
  %99 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %3, align 8
  %100 = getelementptr inbounds %struct.twl4030_resconfig, %struct.twl4030_resconfig* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @TYPE_SHIFT, align 4
  %103 = shl i32 %101, %102
  %104 = load i32, i32* %6, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %94, %88
  %107 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %3, align 8
  %108 = getelementptr inbounds %struct.twl4030_resconfig, %struct.twl4030_resconfig* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @TWL4030_RESCONFIG_UNDEF, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %124

112:                                              ; preds = %106
  %113 = load i32, i32* @TYPE2_MASK, align 4
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %6, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %6, align 4
  %117 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %3, align 8
  %118 = getelementptr inbounds %struct.twl4030_resconfig, %struct.twl4030_resconfig* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @TYPE2_SHIFT, align 4
  %121 = shl i32 %119, %120
  %122 = load i32, i32* %6, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %112, %106
  %125 = load i32, i32* @TWL_MODULE_PM_RECEIVER, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* @TYPE_OFFSET, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @twl_i2c_write_u8(i32 %125, i32 %126, i64 %130)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %124
  %135 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %136 = load i32, i32* %5, align 4
  store i32 %136, i32* %2, align 4
  br label %202

137:                                              ; preds = %124
  %138 = load i32, i32* @TWL_MODULE_PM_RECEIVER, align 4
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* @REMAP_OFFSET, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @twl_i2c_read_u8(i32 %138, i32* %8, i64 %142)
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* %5, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %137
  %147 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %3, align 8
  %148 = getelementptr inbounds %struct.twl4030_resconfig, %struct.twl4030_resconfig* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %149)
  %151 = load i32, i32* %5, align 4
  store i32 %151, i32* %2, align 4
  br label %202

152:                                              ; preds = %137
  %153 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %3, align 8
  %154 = getelementptr inbounds %struct.twl4030_resconfig, %struct.twl4030_resconfig* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @TWL4030_RESCONFIG_UNDEF, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %152
  %159 = load i32, i32* @OFF_STATE_MASK, align 4
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %8, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %8, align 4
  %163 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %3, align 8
  %164 = getelementptr inbounds %struct.twl4030_resconfig, %struct.twl4030_resconfig* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @OFF_STATE_SHIFT, align 4
  %167 = shl i32 %165, %166
  %168 = load i32, i32* %8, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %8, align 4
  br label %170

170:                                              ; preds = %158, %152
  %171 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %3, align 8
  %172 = getelementptr inbounds %struct.twl4030_resconfig, %struct.twl4030_resconfig* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @TWL4030_RESCONFIG_UNDEF, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %188

176:                                              ; preds = %170
  %177 = load i32, i32* @SLEEP_STATE_MASK, align 4
  %178 = xor i32 %177, -1
  %179 = load i32, i32* %8, align 4
  %180 = and i32 %179, %178
  store i32 %180, i32* %8, align 4
  %181 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %3, align 8
  %182 = getelementptr inbounds %struct.twl4030_resconfig, %struct.twl4030_resconfig* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @SLEEP_STATE_SHIFT, align 4
  %185 = shl i32 %183, %184
  %186 = load i32, i32* %8, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %8, align 4
  br label %188

188:                                              ; preds = %176, %170
  %189 = load i32, i32* @TWL_MODULE_PM_RECEIVER, align 4
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* %4, align 4
  %192 = sext i32 %191 to i64
  %193 = load i64, i64* @REMAP_OFFSET, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @twl_i2c_write_u8(i32 %189, i32 %190, i64 %194)
  store i32 %195, i32* %5, align 4
  %196 = load i32, i32* %5, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %188
  %199 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %200 = load i32, i32* %5, align 4
  store i32 %200, i32* %2, align 4
  br label %202

201:                                              ; preds = %188
  store i32 0, i32* %2, align 4
  br label %202

202:                                              ; preds = %201, %198, %146, %134, %82, %69, %36, %14
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @twl_i2c_read_u8(i32, i32*, i64) #1

declare dso_local i32 @twl_i2c_write_u8(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
