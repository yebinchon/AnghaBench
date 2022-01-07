; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-core.c_arizona_enable_freerun_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-core.c_arizona_enable_freerun_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona = type { i32, i32 }
%struct.arizona_sysclk_state = type { i32, i32 }

@ARIZONA_FLL1_CONTROL_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to cache FLL settings: %d\0A\00", align 1
@ARIZONA_SYSTEM_CLOCK_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to cache SYSCLK settings: %d\0A\00", align 1
@ARIZONA_FLL1_ENA = common dso_local global i32 0, align 4
@ARIZONA_FLL1_FREERUN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed to start FLL in freerunning mode: %d\0A\00", align 1
@ARIZONA_INTERRUPT_RAW_STATUS_5 = common dso_local global i32 0, align 4
@ARIZONA_FLL1_CLOCK_OK_STS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to start SYSCLK: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Failed to re-apply old FLL settings: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arizona*, %struct.arizona_sysclk_state*)* @arizona_enable_freerun_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_enable_freerun_sysclk(%struct.arizona* %0, %struct.arizona_sysclk_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arizona*, align 8
  %5 = alloca %struct.arizona_sysclk_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.arizona* %0, %struct.arizona** %4, align 8
  store %struct.arizona_sysclk_state* %1, %struct.arizona_sysclk_state** %5, align 8
  %8 = load %struct.arizona*, %struct.arizona** %4, align 8
  %9 = getelementptr inbounds %struct.arizona, %struct.arizona* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ARIZONA_FLL1_CONTROL_1, align 4
  %12 = load %struct.arizona_sysclk_state*, %struct.arizona_sysclk_state** %5, align 8
  %13 = getelementptr inbounds %struct.arizona_sysclk_state, %struct.arizona_sysclk_state* %12, i32 0, i32 0
  %14 = call i32 @regmap_read(i32 %10, i32 %11, i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.arizona*, %struct.arizona** %4, align 8
  %19 = getelementptr inbounds %struct.arizona, %struct.arizona* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %102

24:                                               ; preds = %2
  %25 = load %struct.arizona*, %struct.arizona** %4, align 8
  %26 = getelementptr inbounds %struct.arizona, %struct.arizona* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ARIZONA_SYSTEM_CLOCK_1, align 4
  %29 = load %struct.arizona_sysclk_state*, %struct.arizona_sysclk_state** %5, align 8
  %30 = getelementptr inbounds %struct.arizona_sysclk_state, %struct.arizona_sysclk_state* %29, i32 0, i32 1
  %31 = call i32 @regmap_read(i32 %27, i32 %28, i32* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load %struct.arizona*, %struct.arizona** %4, align 8
  %36 = getelementptr inbounds %struct.arizona, %struct.arizona* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %102

41:                                               ; preds = %24
  %42 = load %struct.arizona*, %struct.arizona** %4, align 8
  %43 = getelementptr inbounds %struct.arizona, %struct.arizona* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ARIZONA_FLL1_CONTROL_1, align 4
  %46 = load i32, i32* @ARIZONA_FLL1_ENA, align 4
  %47 = load i32, i32* @ARIZONA_FLL1_FREERUN, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @regmap_write(i32 %44, i32 %45, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %41
  %53 = load %struct.arizona*, %struct.arizona** %4, align 8
  %54 = getelementptr inbounds %struct.arizona, %struct.arizona* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %102

59:                                               ; preds = %41
  %60 = load %struct.arizona*, %struct.arizona** %4, align 8
  %61 = load i32, i32* @ARIZONA_INTERRUPT_RAW_STATUS_5, align 4
  %62 = load i32, i32* @ARIZONA_FLL1_CLOCK_OK_STS, align 4
  %63 = load i32, i32* @ARIZONA_FLL1_CLOCK_OK_STS, align 4
  %64 = call i32 @arizona_poll_reg(%struct.arizona* %60, i32 180, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %83

68:                                               ; preds = %59
  %69 = load %struct.arizona*, %struct.arizona** %4, align 8
  %70 = getelementptr inbounds %struct.arizona, %struct.arizona* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ARIZONA_SYSTEM_CLOCK_1, align 4
  %73 = call i32 @regmap_write(i32 %71, i32 %72, i32 324)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = load %struct.arizona*, %struct.arizona** %4, align 8
  %78 = getelementptr inbounds %struct.arizona, %struct.arizona* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  br label %83

82:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %102

83:                                               ; preds = %76, %67
  %84 = load %struct.arizona*, %struct.arizona** %4, align 8
  %85 = getelementptr inbounds %struct.arizona, %struct.arizona* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ARIZONA_FLL1_CONTROL_1, align 4
  %88 = load %struct.arizona_sysclk_state*, %struct.arizona_sysclk_state** %5, align 8
  %89 = getelementptr inbounds %struct.arizona_sysclk_state, %struct.arizona_sysclk_state* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @regmap_write(i32 %86, i32 %87, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %83
  %95 = load %struct.arizona*, %struct.arizona** %4, align 8
  %96 = getelementptr inbounds %struct.arizona, %struct.arizona* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @dev_err(i32 %97, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %94, %83
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %82, %52, %34, %17
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @arizona_poll_reg(%struct.arizona*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
