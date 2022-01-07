; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1400_core.c_ucb1400_core_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1400_core.c_ucb1400_core_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ucb1400 = type { i8*, i8* }
%struct.ucb1400_ts = type { i64, i32, %struct.snd_ac97*, i32, i32, i32 }
%struct.snd_ac97 = type { i32 }
%struct.ucb1400_gpio = type { i64, i32, %struct.snd_ac97*, i32, i32, i32 }
%struct.ucb1400_pdata = type { i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UCB_ID = common dso_local global i32 0, align 4
@UCB_ID_1400 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ucb1400_gpio\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ucb1400_ts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ucb1400_core_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1400_core_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucb1400*, align 8
  %6 = alloca %struct.ucb1400_ts, align 8
  %7 = alloca %struct.ucb1400_gpio, align 8
  %8 = alloca %struct.snd_ac97*, align 8
  %9 = alloca %struct.ucb1400_pdata*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.ucb1400_pdata* @dev_get_platdata(%struct.device* %10)
  store %struct.ucb1400_pdata* %11, %struct.ucb1400_pdata** %9, align 8
  %12 = call i32 @memset(%struct.ucb1400_ts* %6, i32 0, i32 40)
  %13 = bitcast %struct.ucb1400_gpio* %7 to %struct.ucb1400_ts*
  %14 = call i32 @memset(%struct.ucb1400_ts* %13, i32 0, i32 40)
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ucb1400* @kzalloc(i32 16, i32 %15)
  store %struct.ucb1400* %16, %struct.ucb1400** %5, align 8
  %17 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %18 = icmp ne %struct.ucb1400* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %149

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %25 = call i32 @dev_set_drvdata(%struct.device* %23, %struct.ucb1400* %24)
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = call %struct.snd_ac97* @to_ac97_t(%struct.device* %26)
  store %struct.snd_ac97* %27, %struct.snd_ac97** %8, align 8
  %28 = load %struct.snd_ac97*, %struct.snd_ac97** %8, align 8
  %29 = load i32, i32* @UCB_ID, align 4
  %30 = call i64 @ucb1400_reg_read(%struct.snd_ac97* %28, i32 %29)
  %31 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %6, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %6, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @UCB_ID_1400, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %146

39:                                               ; preds = %22
  %40 = load %struct.snd_ac97*, %struct.snd_ac97** %8, align 8
  %41 = getelementptr inbounds %struct.ucb1400_gpio, %struct.ucb1400_gpio* %7, i32 0, i32 2
  store %struct.snd_ac97* %40, %struct.snd_ac97** %41, align 8
  %42 = load %struct.ucb1400_pdata*, %struct.ucb1400_pdata** %9, align 8
  %43 = icmp ne %struct.ucb1400_pdata* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load %struct.ucb1400_pdata*, %struct.ucb1400_pdata** %9, align 8
  %46 = getelementptr inbounds %struct.ucb1400_pdata, %struct.ucb1400_pdata* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.ucb1400_gpio, %struct.ucb1400_gpio* %7, i32 0, i32 5
  store i32 %47, i32* %48, align 8
  %49 = load %struct.ucb1400_pdata*, %struct.ucb1400_pdata** %9, align 8
  %50 = getelementptr inbounds %struct.ucb1400_pdata, %struct.ucb1400_pdata* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.ucb1400_gpio, %struct.ucb1400_gpio* %7, i32 0, i32 4
  store i32 %51, i32* %52, align 4
  %53 = load %struct.ucb1400_pdata*, %struct.ucb1400_pdata** %9, align 8
  %54 = getelementptr inbounds %struct.ucb1400_pdata, %struct.ucb1400_pdata* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.ucb1400_gpio, %struct.ucb1400_gpio* %7, i32 0, i32 3
  store i32 %55, i32* %56, align 8
  br label %57

57:                                               ; preds = %44, %39
  %58 = call i8* @platform_device_alloc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 -1)
  %59 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %60 = getelementptr inbounds %struct.ucb1400, %struct.ucb1400* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %62 = getelementptr inbounds %struct.ucb1400, %struct.ucb1400* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %57
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %146

68:                                               ; preds = %57
  %69 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %70 = getelementptr inbounds %struct.ucb1400, %struct.ucb1400* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = bitcast %struct.ucb1400_gpio* %7 to %struct.ucb1400_ts*
  %73 = call i32 @platform_device_add_data(i8* %71, %struct.ucb1400_ts* %72, i32 40)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %141

77:                                               ; preds = %68
  %78 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %79 = getelementptr inbounds %struct.ucb1400, %struct.ucb1400* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @platform_device_add(i8* %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %141

85:                                               ; preds = %77
  %86 = load %struct.snd_ac97*, %struct.snd_ac97** %8, align 8
  %87 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %6, i32 0, i32 2
  store %struct.snd_ac97* %86, %struct.snd_ac97** %87, align 8
  %88 = load %struct.ucb1400_pdata*, %struct.ucb1400_pdata** %9, align 8
  %89 = icmp ne %struct.ucb1400_pdata* %88, null
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = load %struct.ucb1400_pdata*, %struct.ucb1400_pdata** %9, align 8
  %92 = getelementptr inbounds %struct.ucb1400_pdata, %struct.ucb1400_pdata* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sge i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load %struct.ucb1400_pdata*, %struct.ucb1400_pdata** %9, align 8
  %97 = getelementptr inbounds %struct.ucb1400_pdata, %struct.ucb1400_pdata* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %6, i32 0, i32 1
  store i32 %99, i32* %100, align 8
  br label %103

101:                                              ; preds = %90, %85
  %102 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %6, i32 0, i32 1
  store i32 -1, i32* %102, align 8
  br label %103

103:                                              ; preds = %101, %95
  %104 = call i8* @platform_device_alloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %105 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %106 = getelementptr inbounds %struct.ucb1400, %struct.ucb1400* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %108 = getelementptr inbounds %struct.ucb1400, %struct.ucb1400* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %103
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %136

114:                                              ; preds = %103
  %115 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %116 = getelementptr inbounds %struct.ucb1400, %struct.ucb1400* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @platform_device_add_data(i8* %117, %struct.ucb1400_ts* %6, i32 40)
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %131

122:                                              ; preds = %114
  %123 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %124 = getelementptr inbounds %struct.ucb1400, %struct.ucb1400* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @platform_device_add(i8* %125)
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %131

130:                                              ; preds = %122
  store i32 0, i32* %2, align 4
  br label %151

131:                                              ; preds = %129, %121
  %132 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %133 = getelementptr inbounds %struct.ucb1400, %struct.ucb1400* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @platform_device_put(i8* %134)
  br label %136

136:                                              ; preds = %131, %111
  %137 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %138 = getelementptr inbounds %struct.ucb1400, %struct.ucb1400* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @platform_device_del(i8* %139)
  br label %141

141:                                              ; preds = %136, %84, %76
  %142 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %143 = getelementptr inbounds %struct.ucb1400, %struct.ucb1400* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @platform_device_put(i8* %144)
  br label %146

146:                                              ; preds = %141, %65, %36
  %147 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %148 = call i32 @kfree(%struct.ucb1400* %147)
  br label %149

149:                                              ; preds = %146, %19
  %150 = load i32, i32* %4, align 4
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %149, %130
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.ucb1400_pdata* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @memset(%struct.ucb1400_ts*, i32, i32) #1

declare dso_local %struct.ucb1400* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.ucb1400*) #1

declare dso_local %struct.snd_ac97* @to_ac97_t(%struct.device*) #1

declare dso_local i64 @ucb1400_reg_read(%struct.snd_ac97*, i32) #1

declare dso_local i8* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_device_add_data(i8*, %struct.ucb1400_ts*, i32) #1

declare dso_local i32 @platform_device_add(i8*) #1

declare dso_local i32 @platform_device_put(i8*) #1

declare dso_local i32 @platform_device_del(i8*) #1

declare dso_local i32 @kfree(%struct.ucb1400*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
