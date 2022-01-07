; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-debugfs.c_ab8500_modem_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-debugfs.c_ab8500_modem_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.device* }
%struct.device = type { i32 }
%struct.ab8500 = type { i32 }

@AB8500_REGU_CTRL2 = common dso_local global i64 0, align 8
@AB8500_LAST_SIM_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [88 x i8] c"WARNING! This operation can interfer with modem side\0Aand should only be done with care\0A\00", align 1
@AB8500_REGU_CTRL1 = common dso_local global i64 0, align 8
@AB8500_SUPPLY_CONTROL_REG = common dso_local global i64 0, align 8
@AB8500_SUPPLY_CONTROL_CONFIG_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c" bank 0x%02X:\0A\00", align 1
@AB8505_LAST_SIM_REG = common dso_local global i64 0, align 8
@AB8500_FIRST_SIM_REG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"  [0x%02X/0x%02X]: 0x%02X\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"ab->read fail %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"ab->write fail %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @ab8500_modem_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_modem_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ab8500*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %15 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load i64, i64* @AB8500_REGU_CTRL2, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* @AB8500_LAST_SIM_REG, align 8
  store i64 %18, i64* %12, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.ab8500* @dev_get_drvdata(i32 %21)
  store %struct.ab8500* %22, %struct.ab8500** %7, align 8
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call i32 @dev_warn(%struct.device* %23, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load i64, i64* @AB8500_REGU_CTRL1, align 8
  %27 = load i64, i64* @AB8500_SUPPLY_CONTROL_REG, align 8
  %28 = call i32 @abx500_get_register_interruptible(%struct.device* %25, i64 %26, i64 %27, i32* %10)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %87

32:                                               ; preds = %2
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load i64, i64* @AB8500_REGU_CTRL1, align 8
  %35 = load i64, i64* @AB8500_SUPPLY_CONTROL_REG, align 8
  %36 = load i32, i32* @AB8500_SUPPLY_CONTROL_CONFIG_1, align 4
  %37 = call i32 @abx500_set_register_interruptible(%struct.device* %33, i64 %34, i64 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %92

41:                                               ; preds = %32
  %42 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  %45 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %46 = call i64 @is_ab9540(%struct.ab8500* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %50 = call i64 @is_ab8505(%struct.ab8500* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %41
  %53 = load i64, i64* @AB8505_LAST_SIM_REG, align 8
  store i64 %53, i64* %12, align 8
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i64, i64* @AB8500_FIRST_SIM_REG, align 8
  store i64 %55, i64* %13, align 8
  br label %56

56:                                               ; preds = %74, %54
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %12, align 8
  %59 = icmp sle i64 %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %56
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %13, align 8
  %64 = call i32 @abx500_get_register_interruptible(%struct.device* %61, i64 %62, i64 %63, i32* %9)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %87

68:                                               ; preds = %60
  %69 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %70, i64 %71, i32 %72)
  br label %74

74:                                               ; preds = %68
  %75 = load i64, i64* %13, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %13, align 8
  br label %56

77:                                               ; preds = %56
  %78 = load %struct.device*, %struct.device** %6, align 8
  %79 = load i64, i64* @AB8500_REGU_CTRL1, align 8
  %80 = load i64, i64* @AB8500_SUPPLY_CONTROL_REG, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @abx500_set_register_interruptible(%struct.device* %78, i64 %79, i64 %80, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %92

86:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %97

87:                                               ; preds = %67, %31
  %88 = load %struct.device*, %struct.device** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  br label %97

92:                                               ; preds = %85, %40
  %93 = load %struct.device*, %struct.device** %6, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @dev_err(%struct.device* %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %92, %87, %86
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.ab8500* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @abx500_get_register_interruptible(%struct.device*, i64, i64, i32*) #1

declare dso_local i32 @abx500_set_register_interruptible(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, ...) #1

declare dso_local i64 @is_ab9540(%struct.ab8500*) #1

declare dso_local i64 @is_ab8505(%struct.ab8500*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
