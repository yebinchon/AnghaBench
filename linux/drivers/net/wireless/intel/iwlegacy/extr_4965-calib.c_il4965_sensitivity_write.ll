; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-calib.c_il4965_sensitivity_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-calib.c_il4965_sensitivity_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32*, %struct.il_sensitivity_data }
%struct.il_sensitivity_data = type { i32 }
%struct.il_sensitivity_cmd = type { i32*, i32 }
%struct.il_host_cmd = type { i32, %struct.il_sensitivity_cmd*, i32, i32 }

@CMD_ASYNC = common dso_local global i32 0, align 4
@C_SENSITIVITY = common dso_local global i32 0, align 4
@C_SENSITIVITY_CONTROL_WORK_TBL = common dso_local global i32 0, align 4
@HD_TBL_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"No change in C_SENSITIVITY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*)* @il4965_sensitivity_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_sensitivity_write(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_sensitivity_cmd, align 8
  %5 = alloca %struct.il_sensitivity_data*, align 8
  %6 = alloca %struct.il_host_cmd, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_sensitivity_data* null, %struct.il_sensitivity_data** %5, align 8
  %7 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %6, i32 0, i32 0
  store i32 16, i32* %7, align 8
  %8 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %6, i32 0, i32 1
  store %struct.il_sensitivity_cmd* %4, %struct.il_sensitivity_cmd** %8, align 8
  %9 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %6, i32 0, i32 2
  %10 = load i32, i32* @CMD_ASYNC, align 4
  store i32 %10, i32* %9, align 8
  %11 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %6, i32 0, i32 3
  %12 = load i32, i32* @C_SENSITIVITY, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %14 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %13, i32 0, i32 1
  store %struct.il_sensitivity_data* %14, %struct.il_sensitivity_data** %5, align 8
  %15 = call i32 @memset(%struct.il_sensitivity_cmd* %4, i32 0, i32 16)
  %16 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %17 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %5, align 8
  %18 = getelementptr inbounds %struct.il_sensitivity_cmd, %struct.il_sensitivity_cmd* %4, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = call i32 @il4965_prepare_legacy_sensitivity_tbl(%struct.il_priv* %16, %struct.il_sensitivity_data* %17, i32* %20)
  %22 = load i32, i32* @C_SENSITIVITY_CONTROL_WORK_TBL, align 4
  %23 = getelementptr inbounds %struct.il_sensitivity_cmd, %struct.il_sensitivity_cmd* %4, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.il_sensitivity_cmd, %struct.il_sensitivity_cmd* %4, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %28 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* @HD_TBL_SIZE, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memcmp(i32* %26, i32* %30, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %1
  %38 = call i32 @D_CALIB(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %54

39:                                               ; preds = %1
  %40 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %41 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = getelementptr inbounds %struct.il_sensitivity_cmd, %struct.il_sensitivity_cmd* %4, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* @HD_TBL_SIZE, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 4, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @memcpy(i32* %43, i32* %46, i32 %50)
  %52 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %53 = call i32 @il_send_cmd(%struct.il_priv* %52, %struct.il_host_cmd* %6)
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %39, %37
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @memset(%struct.il_sensitivity_cmd*, i32, i32) #1

declare dso_local i32 @il4965_prepare_legacy_sensitivity_tbl(%struct.il_priv*, %struct.il_sensitivity_data*, i32*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @D_CALIB(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @il_send_cmd(%struct.il_priv*, %struct.il_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
