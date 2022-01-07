; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ad525x_dpot.c_sysfs_set_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ad525x_dpot.c_sysfs_set_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dpot_data = type { i64, i32, i32 }

@DPOT_ADDR_OTP_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@DPOT_RDAC_MASK = common dso_local global i32 0, align 4
@DPOT_ADDR_OTP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@DPOT_ADDR_EEPROM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64, i32)* @sysfs_set_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sysfs_set_reg(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device_attribute*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dpot_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = call %struct.dpot_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.dpot_data* %16, %struct.dpot_data** %12, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @DPOT_ADDR_OTP_EN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %5
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @sysfs_streq(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i32, i32* @DPOT_RDAC_MASK, align 4
  %27 = load i32, i32* %11, align 4
  %28 = and i32 %26, %27
  %29 = load %struct.dpot_data*, %struct.dpot_data** %12, align 8
  %30 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @set_bit(i32 %28, i32 %31)
  br label %41

33:                                               ; preds = %21
  %34 = load i32, i32* @DPOT_RDAC_MASK, align 4
  %35 = load i32, i32* %11, align 4
  %36 = and i32 %34, %35
  %37 = load %struct.dpot_data*, %struct.dpot_data** %12, align 8
  %38 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @clear_bit(i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %33, %25
  %42 = load i64, i64* %10, align 8
  store i64 %42, i64* %6, align 8
  br label %105

43:                                               ; preds = %5
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @DPOT_ADDR_OTP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load i32, i32* @DPOT_RDAC_MASK, align 4
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %49, %50
  %52 = load %struct.dpot_data*, %struct.dpot_data** %12, align 8
  %53 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @test_bit(i32 %51, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %48
  %58 = load i64, i64* @EPERM, align 8
  %59 = sub i64 0, %58
  store i64 %59, i64* %6, align 8
  br label %105

60:                                               ; preds = %48, %43
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @kstrtoul(i8* %61, i32 10, i64* %13)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %6, align 8
  br label %105

68:                                               ; preds = %60
  %69 = load i64, i64* %13, align 8
  %70 = load %struct.dpot_data*, %struct.dpot_data** %12, align 8
  %71 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ugt i64 %69, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.dpot_data*, %struct.dpot_data** %12, align 8
  %76 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %13, align 8
  br label %78

78:                                               ; preds = %74, %68
  %79 = load %struct.dpot_data*, %struct.dpot_data** %12, align 8
  %80 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %79, i32 0, i32 1
  %81 = call i32 @mutex_lock(i32* %80)
  %82 = load %struct.dpot_data*, %struct.dpot_data** %12, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i64, i64* %13, align 8
  %85 = call i32 @dpot_write(%struct.dpot_data* %82, i32 %83, i64 %84)
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @DPOT_ADDR_EEPROM, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = call i32 @msleep(i32 26)
  br label %100

92:                                               ; preds = %78
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @DPOT_ADDR_OTP, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = call i32 @msleep(i32 400)
  br label %99

99:                                               ; preds = %97, %92
  br label %100

100:                                              ; preds = %99, %90
  %101 = load %struct.dpot_data*, %struct.dpot_data** %12, align 8
  %102 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %101, i32 0, i32 1
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i64, i64* %10, align 8
  store i64 %104, i64* %6, align 8
  br label %105

105:                                              ; preds = %100, %65, %57, %41
  %106 = load i64, i64* %6, align 8
  ret i64 %106
}

declare dso_local %struct.dpot_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dpot_write(%struct.dpot_data*, i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
