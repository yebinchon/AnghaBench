; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_da9062-core.c_da9062_clear_fault_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_da9062-core.c_da9062_clear_fault_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9062 = type { i32, i32 }

@DA9062AA_FAULT_LOG = common dso_local global i32 0, align 4
@DA9062AA_TWD_ERROR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Fault log entry detected: TWD_ERROR\0A\00", align 1
@DA9062AA_POR_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Fault log entry detected: POR\0A\00", align 1
@DA9062AA_VDD_FAULT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Fault log entry detected: VDD_FAULT\0A\00", align 1
@DA9062AA_VDD_START_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Fault log entry detected: VDD_START\0A\00", align 1
@DA9062AA_TEMP_CRIT_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Fault log entry detected: TEMP_CRIT\0A\00", align 1
@DA9062AA_KEY_RESET_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Fault log entry detected: KEY_RESET\0A\00", align 1
@DA9062AA_NSHUTDOWN_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Fault log entry detected: NSHUTDOWN\0A\00", align 1
@DA9062AA_WAIT_SHUT_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"Fault log entry detected: WAIT_SHUT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9062*)* @da9062_clear_fault_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9062_clear_fault_log(%struct.da9062* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.da9062*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.da9062* %0, %struct.da9062** %3, align 8
  %6 = load %struct.da9062*, %struct.da9062** %3, align 8
  %7 = getelementptr inbounds %struct.da9062, %struct.da9062* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @DA9062AA_FAULT_LOG, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %107

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %105

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @DA9062AA_TWD_ERROR_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.da9062*, %struct.da9062** %3, align 8
  %25 = getelementptr inbounds %struct.da9062, %struct.da9062* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @DA9062AA_POR_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.da9062*, %struct.da9062** %3, align 8
  %35 = getelementptr inbounds %struct.da9062, %struct.da9062* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @DA9062AA_VDD_FAULT_MASK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.da9062*, %struct.da9062** %3, align 8
  %45 = getelementptr inbounds %struct.da9062, %struct.da9062* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_dbg(i32 %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @DA9062AA_VDD_START_MASK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.da9062*, %struct.da9062** %3, align 8
  %55 = getelementptr inbounds %struct.da9062, %struct.da9062* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @DA9062AA_TEMP_CRIT_MASK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.da9062*, %struct.da9062** %3, align 8
  %65 = getelementptr inbounds %struct.da9062, %struct.da9062* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_dbg(i32 %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @DA9062AA_KEY_RESET_MASK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.da9062*, %struct.da9062** %3, align 8
  %75 = getelementptr inbounds %struct.da9062, %struct.da9062* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dev_dbg(i32 %76, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @DA9062AA_NSHUTDOWN_MASK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.da9062*, %struct.da9062** %3, align 8
  %85 = getelementptr inbounds %struct.da9062, %struct.da9062* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_dbg(i32 %86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %88

88:                                               ; preds = %83, %78
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @DA9062AA_WAIT_SHUT_MASK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.da9062*, %struct.da9062** %3, align 8
  %95 = getelementptr inbounds %struct.da9062, %struct.da9062* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dev_dbg(i32 %96, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %98

98:                                               ; preds = %93, %88
  %99 = load %struct.da9062*, %struct.da9062** %3, align 8
  %100 = getelementptr inbounds %struct.da9062, %struct.da9062* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @DA9062AA_FAULT_LOG, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @regmap_write(i32 %101, i32 %102, i32 %103)
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %98, %15
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %13
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
