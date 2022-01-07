; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_da9063-core.c_da9063_clear_fault_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_da9063-core.c_da9063_clear_fault_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9063 = type { i32, i32 }

@DA9063_REG_FAULT_LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Cannot read FAULT_LOG.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DA9063_TWD_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Fault log entry detected: DA9063_TWD_ERROR\0A\00", align 1
@DA9063_POR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Fault log entry detected: DA9063_POR\0A\00", align 1
@DA9063_VDD_FAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Fault log entry detected: DA9063_VDD_FAULT\0A\00", align 1
@DA9063_VDD_START = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Fault log entry detected: DA9063_VDD_START\0A\00", align 1
@DA9063_TEMP_CRIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"Fault log entry detected: DA9063_TEMP_CRIT\0A\00", align 1
@DA9063_KEY_RESET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"Fault log entry detected: DA9063_KEY_RESET\0A\00", align 1
@DA9063_NSHUTDOWN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"Fault log entry detected: DA9063_NSHUTDOWN\0A\00", align 1
@DA9063_WAIT_SHUT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"Fault log entry detected: DA9063_WAIT_SHUT\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Cannot reset FAULT_LOG values %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9063*)* @da9063_clear_fault_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9063_clear_fault_log(%struct.da9063* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.da9063*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.da9063* %0, %struct.da9063** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.da9063*, %struct.da9063** %3, align 8
  %7 = getelementptr inbounds %struct.da9063, %struct.da9063* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @DA9063_REG_FAULT_LOG, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.da9063*, %struct.da9063** %3, align 8
  %15 = getelementptr inbounds %struct.da9063, %struct.da9063* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, ...) @dev_err(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %121

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %104

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @DA9063_TWD_ERROR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.da9063*, %struct.da9063** %3, align 8
  %30 = getelementptr inbounds %struct.da9063, %struct.da9063* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @DA9063_POR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.da9063*, %struct.da9063** %3, align 8
  %40 = getelementptr inbounds %struct.da9063, %struct.da9063* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_dbg(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @DA9063_VDD_FAULT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.da9063*, %struct.da9063** %3, align 8
  %50 = getelementptr inbounds %struct.da9063, %struct.da9063* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_dbg(i32 %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @DA9063_VDD_START, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.da9063*, %struct.da9063** %3, align 8
  %60 = getelementptr inbounds %struct.da9063, %struct.da9063* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_dbg(i32 %61, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %58, %53
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @DA9063_TEMP_CRIT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.da9063*, %struct.da9063** %3, align 8
  %70 = getelementptr inbounds %struct.da9063, %struct.da9063* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_dbg(i32 %71, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %73

73:                                               ; preds = %68, %63
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @DA9063_KEY_RESET, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.da9063*, %struct.da9063** %3, align 8
  %80 = getelementptr inbounds %struct.da9063, %struct.da9063* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dev_dbg(i32 %81, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %83

83:                                               ; preds = %78, %73
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @DA9063_NSHUTDOWN, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.da9063*, %struct.da9063** %3, align 8
  %90 = getelementptr inbounds %struct.da9063, %struct.da9063* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dev_dbg(i32 %91, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @DA9063_WAIT_SHUT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.da9063*, %struct.da9063** %3, align 8
  %100 = getelementptr inbounds %struct.da9063, %struct.da9063* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dev_dbg(i32 %101, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  br label %103

103:                                              ; preds = %98, %93
  br label %104

104:                                              ; preds = %103, %20
  %105 = load %struct.da9063*, %struct.da9063** %3, align 8
  %106 = getelementptr inbounds %struct.da9063, %struct.da9063* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @DA9063_REG_FAULT_LOG, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @regmap_write(i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %104
  %114 = load %struct.da9063*, %struct.da9063** %3, align 8
  %115 = getelementptr inbounds %struct.da9063, %struct.da9063* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %4, align 4
  %118 = call i32 (i32, i8*, ...) @dev_err(i32 %116, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %113, %104
  %120 = load i32, i32* %4, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %119, %13
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
