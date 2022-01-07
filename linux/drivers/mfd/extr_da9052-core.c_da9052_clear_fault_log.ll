; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_da9052-core.c_da9052_clear_fault_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_da9052-core.c_da9052_clear_fault_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9052 = type { i32 }

@DA9052_FAULTLOG_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Cannot read FAULT_LOG %d\0A\00", align 1
@DA9052_FAULTLOG_TWDERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Fault log entry detected: TWD_ERROR\0A\00", align 1
@DA9052_FAULTLOG_VDDFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Fault log entry detected: VDD_FAULT\0A\00", align 1
@DA9052_FAULTLOG_VDDSTART = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Fault log entry detected: VDD_START\0A\00", align 1
@DA9052_FAULTLOG_TEMPOVER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Fault log entry detected: TEMP_OVER\0A\00", align 1
@DA9052_FAULTLOG_KEYSHUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Fault log entry detected: KEY_SHUT\0A\00", align 1
@DA9052_FAULTLOG_NSDSET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Fault log entry detected: nSD_SHUT\0A\00", align 1
@DA9052_FAULTLOG_WAITSET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"Fault log entry detected: WAIT_SHUT\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Cannot reset FAULT_LOG values %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9052*)* @da9052_clear_fault_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_clear_fault_log(%struct.da9052* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.da9052*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.da9052* %0, %struct.da9052** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.da9052*, %struct.da9052** %3, align 8
  %7 = load i32, i32* @DA9052_FAULTLOG_REG, align 4
  %8 = call i32 @da9052_reg_read(%struct.da9052* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.da9052*, %struct.da9052** %3, align 8
  %13 = getelementptr inbounds %struct.da9052, %struct.da9052* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %106

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %104

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @DA9052_FAULTLOG_TWDERROR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.da9052*, %struct.da9052** %3, align 8
  %28 = getelementptr inbounds %struct.da9052, %struct.da9052* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @DA9052_FAULTLOG_VDDFAULT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.da9052*, %struct.da9052** %3, align 8
  %38 = getelementptr inbounds %struct.da9052, %struct.da9052* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @DA9052_FAULTLOG_VDDSTART, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.da9052*, %struct.da9052** %3, align 8
  %48 = getelementptr inbounds %struct.da9052, %struct.da9052* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_dbg(i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @DA9052_FAULTLOG_TEMPOVER, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.da9052*, %struct.da9052** %3, align 8
  %58 = getelementptr inbounds %struct.da9052, %struct.da9052* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_dbg(i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @DA9052_FAULTLOG_KEYSHUT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.da9052*, %struct.da9052** %3, align 8
  %68 = getelementptr inbounds %struct.da9052, %struct.da9052* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_dbg(i32 %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %71

71:                                               ; preds = %66, %61
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @DA9052_FAULTLOG_NSDSET, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.da9052*, %struct.da9052** %3, align 8
  %78 = getelementptr inbounds %struct.da9052, %struct.da9052* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dev_dbg(i32 %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %81

81:                                               ; preds = %76, %71
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @DA9052_FAULTLOG_WAITSET, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.da9052*, %struct.da9052** %3, align 8
  %88 = getelementptr inbounds %struct.da9052, %struct.da9052* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_dbg(i32 %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.da9052*, %struct.da9052** %3, align 8
  %93 = load i32, i32* @DA9052_FAULTLOG_REG, align 4
  %94 = call i32 @da9052_reg_write(%struct.da9052* %92, i32 %93, i32 255)
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load %struct.da9052*, %struct.da9052** %3, align 8
  %99 = getelementptr inbounds %struct.da9052, %struct.da9052* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @dev_err(i32 %100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %97, %91
  br label %104

104:                                              ; preds = %103, %18
  %105 = load i32, i32* %4, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %11
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @da9052_reg_read(%struct.da9052*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @da9052_reg_write(%struct.da9052*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
