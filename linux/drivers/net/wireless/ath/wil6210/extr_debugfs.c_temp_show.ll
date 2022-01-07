; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_temp_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_temp_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.wil6210_priv* }
%struct.wil6210_priv = type { i32 }
%struct.wmi_temp_sense_all_done_event = type { i32, i32*, i32 }

@WMI_FW_CAPABILITY_TEMPERATURE_ALL_RF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"WMI_FW_CAPABILITY_TEMPERATURE_ALL_RF is supported\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"T_mac   =\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Connected RFs [0x%08x]\0A\00", align 1
@WMI_MAX_XIF_PORTS_NUM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"RF[%d]   = \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"WMI_FW_CAPABILITY_TEMPERATURE_ALL_RF is not supported\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"T_radio =\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @temp_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wil6210_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wmi_temp_sense_all_done_event, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %12, i32 0, i32 0
  %14 = load %struct.wil6210_priv*, %struct.wil6210_priv** %13, align 8
  store %struct.wil6210_priv* %14, %struct.wil6210_priv** %6, align 8
  %15 = load i32, i32* @WMI_FW_CAPABILITY_TEMPERATURE_ALL_RF, align 4
  %16 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %17 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @test_bit(i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %62

21:                                               ; preds = %2
  %22 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %23 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %22, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %25 = call i32 @wmi_get_all_temperatures(%struct.wil6210_priv* %24, %struct.wmi_temp_sense_all_done_event* %9)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %30 = call i32 @seq_puts(%struct.seq_file* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %80

31:                                               ; preds = %21
  %32 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %33 = getelementptr inbounds %struct.wmi_temp_sense_all_done_event, %struct.wmi_temp_sense_all_done_event* %9, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = call i32 @print_temp(%struct.seq_file* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %38 = getelementptr inbounds %struct.wmi_temp_sense_all_done_event, %struct.wmi_temp_sense_all_done_event* %9, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %58, %31
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @WMI_MAX_XIF_PORTS_NUM, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  %49 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %50 = getelementptr inbounds %struct.wmi_temp_sense_all_done_event, %struct.wmi_temp_sense_all_done_event* %9, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  %57 = call i32 @print_temp(%struct.seq_file* %49, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %45
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %41

61:                                               ; preds = %41
  br label %79

62:                                               ; preds = %2
  %63 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %64 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %63, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  %65 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %66 = call i32 @wmi_get_temperature(%struct.wil6210_priv* %65, i32* %10, i32* %11)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %71 = call i32 @seq_puts(%struct.seq_file* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %80

72:                                               ; preds = %62
  %73 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @print_temp(%struct.seq_file* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @print_temp(%struct.seq_file* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %72, %61
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %69, %28
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wmi_get_all_temperatures(%struct.wil6210_priv*, %struct.wmi_temp_sense_all_done_event*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @print_temp(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @wmi_get_temperature(%struct.wil6210_priv*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
