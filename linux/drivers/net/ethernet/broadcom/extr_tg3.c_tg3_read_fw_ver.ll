; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_read_fw_ver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_read_fw_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i64* }

@NO_NVRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"sb\00", align 1
@TG3_EEPROM_MAGIC = common dso_local global i32 0, align 4
@TG3_EEPROM_MAGIC_FW_MSK = common dso_local global i32 0, align 4
@TG3_EEPROM_MAGIC_FW = common dso_local global i32 0, align 4
@TG3_EEPROM_MAGIC_HW_MSK = common dso_local global i32 0, align 4
@TG3_EEPROM_MAGIC_HW = common dso_local global i32 0, align 4
@ENABLE_ASF = common dso_local global i32 0, align 4
@ENABLE_APE = common dso_local global i32 0, align 4
@TG3_VER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_read_fw_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_read_fw_ver(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.tg3*, %struct.tg3** %2, align 8
  %6 = getelementptr inbounds %struct.tg3, %struct.tg3* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %12

12:                                               ; preds = %11, %1
  %13 = load %struct.tg3*, %struct.tg3** %2, align 8
  %14 = load i32, i32* @NO_NVRAM, align 4
  %15 = call i64 @tg3_flag(%struct.tg3* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.tg3*, %struct.tg3** %2, align 8
  %19 = getelementptr inbounds %struct.tg3, %struct.tg3* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = call i32 @strcat(i64* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.tg3*, %struct.tg3** %2, align 8
  %23 = call i32 @tg3_read_otp_ver(%struct.tg3* %22)
  br label %92

24:                                               ; preds = %12
  %25 = load %struct.tg3*, %struct.tg3** %2, align 8
  %26 = call i64 @tg3_nvram_read(%struct.tg3* %25, i32 0, i32* %3)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %92

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @TG3_EEPROM_MAGIC, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.tg3*, %struct.tg3** %2, align 8
  %35 = call i32 @tg3_read_bc_ver(%struct.tg3* %34)
  br label %57

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @TG3_EEPROM_MAGIC_FW_MSK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @TG3_EEPROM_MAGIC_FW, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.tg3*, %struct.tg3** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @tg3_read_sb_ver(%struct.tg3* %43, i32 %44)
  br label %56

46:                                               ; preds = %36
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @TG3_EEPROM_MAGIC_HW_MSK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @TG3_EEPROM_MAGIC_HW, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.tg3*, %struct.tg3** %2, align 8
  %54 = call i32 @tg3_read_hwsb_ver(%struct.tg3* %53)
  br label %55

55:                                               ; preds = %52, %46
  br label %56

56:                                               ; preds = %55, %42
  br label %57

57:                                               ; preds = %56, %33
  %58 = load %struct.tg3*, %struct.tg3** %2, align 8
  %59 = load i32, i32* @ENABLE_ASF, align 4
  %60 = call i64 @tg3_flag(%struct.tg3* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %57
  %63 = load %struct.tg3*, %struct.tg3** %2, align 8
  %64 = load i32, i32* @ENABLE_APE, align 4
  %65 = call i64 @tg3_flag(%struct.tg3* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load %struct.tg3*, %struct.tg3** %2, align 8
  %69 = call i32 @tg3_probe_ncsi(%struct.tg3* %68)
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load %struct.tg3*, %struct.tg3** %2, align 8
  %74 = call i32 @tg3_read_dash_ver(%struct.tg3* %73)
  br label %75

75:                                               ; preds = %72, %67
  br label %83

76:                                               ; preds = %62
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load %struct.tg3*, %struct.tg3** %2, align 8
  %81 = call i32 @tg3_read_mgmtfw_ver(%struct.tg3* %80)
  br label %82

82:                                               ; preds = %79, %76
  br label %83

83:                                               ; preds = %82, %75
  br label %84

84:                                               ; preds = %83, %57
  %85 = load %struct.tg3*, %struct.tg3** %2, align 8
  %86 = getelementptr inbounds %struct.tg3, %struct.tg3* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* @TG3_VER_SIZE, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %87, i64 %90
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %84, %28, %17
  ret void
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @strcat(i64*, i8*) #1

declare dso_local i32 @tg3_read_otp_ver(%struct.tg3*) #1

declare dso_local i64 @tg3_nvram_read(%struct.tg3*, i32, i32*) #1

declare dso_local i32 @tg3_read_bc_ver(%struct.tg3*) #1

declare dso_local i32 @tg3_read_sb_ver(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_read_hwsb_ver(%struct.tg3*) #1

declare dso_local i32 @tg3_probe_ncsi(%struct.tg3*) #1

declare dso_local i32 @tg3_read_dash_ver(%struct.tg3*) #1

declare dso_local i32 @tg3_read_mgmtfw_ver(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
