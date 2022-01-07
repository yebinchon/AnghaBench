; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl6040.c_twl6040_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl6040.c_twl6040_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl6040 = type { i64, i32, i32, i32, i64, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Failed to sync with the HW: %i\0A\00", align 1
@TWL6040_SYSCLK_SEL_LPPLL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"device is already powered-off\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@TWL6040_SYSCLK_SEL_HPPLL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twl6040_power(%struct.twl6040* %0, i32 %1) #0 {
  %3 = alloca %struct.twl6040*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.twl6040* %0, %struct.twl6040** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %7 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %6, i32 0, i32 2
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %84

11:                                               ; preds = %2
  %12 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %13 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %12, i32 0, i32 8
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %13, align 8
  %16 = icmp ne i64 %14, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %147

18:                                               ; preds = %11
  %19 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %20 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @clk_prepare_enable(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %27 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %26, i32 0, i32 8
  store i64 0, i64* %27, align 8
  br label %147

28:                                               ; preds = %18
  %29 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %30 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regcache_cache_only(i32 %31, i32 0)
  %33 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %34 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @gpio_is_valid(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %28
  %39 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %40 = call i32 @twl6040_power_up_automatic(%struct.twl6040* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %45 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @clk_disable_unprepare(i32 %46)
  %48 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %49 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %48, i32 0, i32 8
  store i64 0, i64* %49, align 8
  br label %147

50:                                               ; preds = %38
  br label %64

51:                                               ; preds = %28
  %52 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %53 = call i32 @twl6040_power_up_manual(%struct.twl6040* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %58 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @clk_disable_unprepare(i32 %59)
  %61 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %62 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %61, i32 0, i32 8
  store i64 0, i64* %62, align 8
  br label %147

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %50
  %65 = call i32 @usleep_range(i32 10000, i32 12000)
  %66 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %67 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @regcache_sync(i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %74 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 (i32, i8*, ...) @dev_err(i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %147

78:                                               ; preds = %64
  %79 = load i64, i64* @TWL6040_SYSCLK_SEL_LPPLL, align 8
  %80 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %81 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %83 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %82, i32 0, i32 1
  store i32 19200000, i32* %83, align 8
  br label %146

84:                                               ; preds = %2
  %85 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %86 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %85, i32 0, i32 8
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %84
  %90 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %91 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %90, i32 0, i32 9
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i32, i8*, ...) @dev_err(i32 %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* @EPERM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %147

96:                                               ; preds = %84
  %97 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %98 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %97, i32 0, i32 8
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, -1
  store i64 %100, i64* %98, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %147

103:                                              ; preds = %96
  %104 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %105 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @gpio_is_valid(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %111 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @gpio_set_value(i32 %112, i32 0)
  %114 = call i32 @usleep_range(i32 500, i32 700)
  br label %118

115:                                              ; preds = %103
  %116 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %117 = call i32 @twl6040_power_down_manual(%struct.twl6040* %116)
  br label %118

118:                                              ; preds = %115, %109
  %119 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %120 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @regcache_cache_only(i32 %121, i32 1)
  %123 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %124 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @regcache_mark_dirty(i32 %125)
  %127 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %128 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %127, i32 0, i32 1
  store i32 0, i32* %128, align 8
  %129 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %130 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @TWL6040_SYSCLK_SEL_HPPLL, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %118
  %135 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %136 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @clk_disable_unprepare(i32 %137)
  %139 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %140 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %139, i32 0, i32 4
  store i64 0, i64* %140, align 8
  br label %141

141:                                              ; preds = %134, %118
  %142 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %143 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @clk_disable_unprepare(i32 %144)
  br label %146

146:                                              ; preds = %141, %78
  br label %147

147:                                              ; preds = %146, %102, %89, %72, %56, %43, %25, %17
  %148 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %149 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %148, i32 0, i32 2
  %150 = call i32 @mutex_unlock(i32* %149)
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @twl6040_power_up_automatic(%struct.twl6040*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @twl6040_power_up_manual(%struct.twl6040*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @twl6040_power_down_manual(%struct.twl6040*) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
