; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_control.c_i2400m_dev_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_control.c_i2400m_dev_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i64 }
%struct.device = type { i32 }
%struct.i2400m_tlv_config_idle_parameters = type { %struct.i2400m_tlv_hdr, i64, i64 }
%struct.i2400m_tlv_hdr = type { i8*, i8* }
%struct.i2400m_tlv_config_idle_timeout = type { %struct.i2400m_tlv_hdr, i64 }
%struct.i2400m_tlv_config_d2h_data_format = type { i32, %struct.i2400m_tlv_hdr }
%struct.i2400m_tlv_config_dl_host_reorder = type { i32, %struct.i2400m_tlv_hdr }

@.str = private unnamed_addr constant [13 x i8] c"(i2400m %p)\0A\00", align 1
@i2400m_passive_mode = common dso_local global i64 0, align 8
@i2400m_idle_mode_disabled = common dso_local global i64 0, align 8
@I2400M_TLV_CONFIG_IDLE_PARAMETERS = common dso_local global i32 0, align 4
@I2400M_TLV_CONFIG_IDLE_TIMEOUT = common dso_local global i32 0, align 4
@I2400M_TLV_CONFIG_D2H_DATA_FORMAT = common dso_local global i32 0, align 4
@I2400M_TLV_CONFIG_DL_HOST_REORDER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to initialize the device: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"(i2400m %p) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2400m_dev_initialize(%struct.i2400m* %0) #0 {
  %2 = alloca %struct.i2400m*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.i2400m_tlv_config_idle_parameters, align 8
  %6 = alloca %struct.i2400m_tlv_config_idle_timeout, align 8
  %7 = alloca %struct.i2400m_tlv_config_d2h_data_format, align 8
  %8 = alloca %struct.i2400m_tlv_config_dl_host_reorder, align 8
  %9 = alloca [9 x %struct.i2400m_tlv_hdr*], align 16
  %10 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %2, align 8
  %11 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %12 = call %struct.device* @i2400m_dev(%struct.i2400m* %11)
  store %struct.device* %12, %struct.device** %4, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %15 = call i32 @d_fnstart(i32 3, %struct.device* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %14)
  %16 = load i64, i64* @i2400m_passive_mode, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %102

19:                                               ; preds = %1
  %20 = load i64, i64* @i2400m_idle_mode_disabled, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %19
  %23 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %24 = call i64 @i2400m_le_v1_3(%struct.i2400m* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load i32, i32* @I2400M_TLV_CONFIG_IDLE_PARAMETERS, align 4
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = getelementptr inbounds %struct.i2400m_tlv_config_idle_parameters, %struct.i2400m_tlv_config_idle_parameters* %5, i32 0, i32 0
  %30 = getelementptr inbounds %struct.i2400m_tlv_hdr, %struct.i2400m_tlv_hdr* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = call i8* @cpu_to_le16(i32 16)
  %32 = getelementptr inbounds %struct.i2400m_tlv_config_idle_parameters, %struct.i2400m_tlv_config_idle_parameters* %5, i32 0, i32 0
  %33 = getelementptr inbounds %struct.i2400m_tlv_hdr, %struct.i2400m_tlv_hdr* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = getelementptr inbounds %struct.i2400m_tlv_config_idle_parameters, %struct.i2400m_tlv_config_idle_parameters* %5, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.i2400m_tlv_config_idle_parameters, %struct.i2400m_tlv_config_idle_parameters* %5, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.i2400m_tlv_config_idle_parameters, %struct.i2400m_tlv_config_idle_parameters* %5, i32 0, i32 0
  %37 = load i32, i32* %10, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %10, align 4
  %39 = zext i32 %37 to i64
  %40 = getelementptr inbounds [9 x %struct.i2400m_tlv_hdr*], [9 x %struct.i2400m_tlv_hdr*]* %9, i64 0, i64 %39
  store %struct.i2400m_tlv_hdr* %36, %struct.i2400m_tlv_hdr** %40, align 8
  br label %55

41:                                               ; preds = %22
  %42 = load i32, i32* @I2400M_TLV_CONFIG_IDLE_TIMEOUT, align 4
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = getelementptr inbounds %struct.i2400m_tlv_config_idle_timeout, %struct.i2400m_tlv_config_idle_timeout* %6, i32 0, i32 0
  %45 = getelementptr inbounds %struct.i2400m_tlv_hdr, %struct.i2400m_tlv_hdr* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = call i8* @cpu_to_le16(i32 8)
  %47 = getelementptr inbounds %struct.i2400m_tlv_config_idle_timeout, %struct.i2400m_tlv_config_idle_timeout* %6, i32 0, i32 0
  %48 = getelementptr inbounds %struct.i2400m_tlv_hdr, %struct.i2400m_tlv_hdr* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = getelementptr inbounds %struct.i2400m_tlv_config_idle_timeout, %struct.i2400m_tlv_config_idle_timeout* %6, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = getelementptr inbounds %struct.i2400m_tlv_config_idle_timeout, %struct.i2400m_tlv_config_idle_timeout* %6, i32 0, i32 0
  %51 = load i32, i32* %10, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %10, align 4
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds [9 x %struct.i2400m_tlv_hdr*], [9 x %struct.i2400m_tlv_hdr*]* %9, i64 0, i64 %53
  store %struct.i2400m_tlv_hdr* %50, %struct.i2400m_tlv_hdr** %54, align 8
  br label %55

55:                                               ; preds = %41, %26
  br label %56

56:                                               ; preds = %55, %19
  %57 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %58 = call i64 @i2400m_ge_v1_4(%struct.i2400m* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %93

60:                                               ; preds = %56
  %61 = load i32, i32* @I2400M_TLV_CONFIG_D2H_DATA_FORMAT, align 4
  %62 = call i8* @cpu_to_le16(i32 %61)
  %63 = getelementptr inbounds %struct.i2400m_tlv_config_d2h_data_format, %struct.i2400m_tlv_config_d2h_data_format* %7, i32 0, i32 1
  %64 = getelementptr inbounds %struct.i2400m_tlv_hdr, %struct.i2400m_tlv_hdr* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = call i8* @cpu_to_le16(i32 8)
  %66 = getelementptr inbounds %struct.i2400m_tlv_config_d2h_data_format, %struct.i2400m_tlv_config_d2h_data_format* %7, i32 0, i32 1
  %67 = getelementptr inbounds %struct.i2400m_tlv_hdr, %struct.i2400m_tlv_hdr* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = getelementptr inbounds %struct.i2400m_tlv_config_d2h_data_format, %struct.i2400m_tlv_config_d2h_data_format* %7, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = getelementptr inbounds %struct.i2400m_tlv_config_d2h_data_format, %struct.i2400m_tlv_config_d2h_data_format* %7, i32 0, i32 1
  %70 = load i32, i32* %10, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %10, align 4
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds [9 x %struct.i2400m_tlv_hdr*], [9 x %struct.i2400m_tlv_hdr*]* %9, i64 0, i64 %72
  store %struct.i2400m_tlv_hdr* %69, %struct.i2400m_tlv_hdr** %73, align 8
  %74 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %75 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %60
  %79 = load i32, i32* @I2400M_TLV_CONFIG_DL_HOST_REORDER, align 4
  %80 = call i8* @cpu_to_le16(i32 %79)
  %81 = getelementptr inbounds %struct.i2400m_tlv_config_dl_host_reorder, %struct.i2400m_tlv_config_dl_host_reorder* %8, i32 0, i32 1
  %82 = getelementptr inbounds %struct.i2400m_tlv_hdr, %struct.i2400m_tlv_hdr* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = call i8* @cpu_to_le16(i32 8)
  %84 = getelementptr inbounds %struct.i2400m_tlv_config_dl_host_reorder, %struct.i2400m_tlv_config_dl_host_reorder* %8, i32 0, i32 1
  %85 = getelementptr inbounds %struct.i2400m_tlv_hdr, %struct.i2400m_tlv_hdr* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = getelementptr inbounds %struct.i2400m_tlv_config_dl_host_reorder, %struct.i2400m_tlv_config_dl_host_reorder* %8, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = getelementptr inbounds %struct.i2400m_tlv_config_dl_host_reorder, %struct.i2400m_tlv_config_dl_host_reorder* %8, i32 0, i32 1
  %88 = load i32, i32* %10, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %10, align 4
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds [9 x %struct.i2400m_tlv_hdr*], [9 x %struct.i2400m_tlv_hdr*]* %9, i64 0, i64 %90
  store %struct.i2400m_tlv_hdr* %87, %struct.i2400m_tlv_hdr** %91, align 8
  br label %92

92:                                               ; preds = %78, %60
  br label %93

93:                                               ; preds = %92, %56
  %94 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %95 = getelementptr inbounds [9 x %struct.i2400m_tlv_hdr*], [9 x %struct.i2400m_tlv_hdr*]* %9, i64 0, i64 0
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @i2400m_set_init_config(%struct.i2400m* %94, %struct.i2400m_tlv_hdr** %95, i32 %96)
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* %3, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %105

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %18
  %103 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %104 = call i32 @i2400m_cmd_get_state(%struct.i2400m* %103)
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %102, %100
  %106 = load i32, i32* %3, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @dev_err(%struct.device* %109, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %108, %105
  %113 = load %struct.device*, %struct.device** %4, align 8
  %114 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @d_fnend(i32 3, %struct.device* %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), %struct.i2400m* %114, i32 %115)
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*) #1

declare dso_local i64 @i2400m_le_v1_3(%struct.i2400m*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @i2400m_ge_v1_4(%struct.i2400m*) #1

declare dso_local i32 @i2400m_set_init_config(%struct.i2400m*, %struct.i2400m_tlv_hdr**, i32) #1

declare dso_local i32 @i2400m_cmd_get_state(%struct.i2400m*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
