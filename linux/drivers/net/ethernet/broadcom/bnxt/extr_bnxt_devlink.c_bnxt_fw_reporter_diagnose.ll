; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.c_bnxt_fw_reporter_diagnose.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.c_bnxt_fw_reporter_diagnose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_health_reporter = type { i32 }
%struct.devlink_fmsg = type { i32 }
%struct.bnxt = type { i32, %struct.bnxt_fw_health* }
%struct.bnxt_fw_health = type { i32 }

@BNXT_STATE_IN_FW_RESET = common dso_local global i32 0, align 4
@BNXT_FW_HEALTH_REG = common dso_local global i32 0, align 4
@BNXT_FW_STATUS_HEALTHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Not yet completed initialization\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Encountered fatal error and cannot recover\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Error code\00", align 1
@BNXT_FW_RESET_CNT_REG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"Reset count\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_health_reporter*, %struct.devlink_fmsg*)* @bnxt_fw_reporter_diagnose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_fw_reporter_diagnose(%struct.devlink_health_reporter* %0, %struct.devlink_fmsg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devlink_health_reporter*, align 8
  %5 = alloca %struct.devlink_fmsg*, align 8
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca %struct.bnxt_fw_health*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.devlink_health_reporter* %0, %struct.devlink_health_reporter** %4, align 8
  store %struct.devlink_fmsg* %1, %struct.devlink_fmsg** %5, align 8
  %11 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %4, align 8
  %12 = call %struct.bnxt* @devlink_health_reporter_priv(%struct.devlink_health_reporter* %11)
  store %struct.bnxt* %12, %struct.bnxt** %6, align 8
  %13 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %14 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %13, i32 0, i32 1
  %15 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %14, align 8
  store %struct.bnxt_fw_health* %15, %struct.bnxt_fw_health** %7, align 8
  %16 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %7, align 8
  %17 = icmp ne %struct.bnxt_fw_health* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @BNXT_STATE_IN_FW_RESET, align 4
  %20 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %21 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %2
  store i32 0, i32* %3, align 4
  br label %81

25:                                               ; preds = %18
  %26 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %27 = load i32, i32* @BNXT_FW_HEALTH_REG, align 4
  %28 = call i32 @bnxt_fw_health_readl(%struct.bnxt* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 65535
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @BNXT_FW_STATUS_HEALTHY, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %25
  %35 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %36 = call i32 @devlink_fmsg_string_pair_put(%struct.devlink_fmsg* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %3, align 4
  br label %81

41:                                               ; preds = %34
  br label %55

42:                                               ; preds = %25
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @BNXT_FW_STATUS_HEALTHY, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %48 = call i32 @devlink_fmsg_string_pair_put(%struct.devlink_fmsg* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %3, align 4
  br label %81

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %42
  br label %55

55:                                               ; preds = %54, %41
  %56 = load i32, i32* %8, align 4
  %57 = ashr i32 %56, 16
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = ashr i32 %61, 16
  %63 = call i32 @devlink_fmsg_u32_pair_put(%struct.devlink_fmsg* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %3, align 4
  br label %81

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %55
  %70 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %71 = load i32, i32* @BNXT_FW_RESET_CNT_REG, align 4
  %72 = call i32 @bnxt_fw_health_readl(%struct.bnxt* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @devlink_fmsg_u32_pair_put(%struct.devlink_fmsg* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %3, align 4
  br label %81

80:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %78, %66, %51, %39, %24
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.bnxt* @devlink_health_reporter_priv(%struct.devlink_health_reporter*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bnxt_fw_health_readl(%struct.bnxt*, i32) #1

declare dso_local i32 @devlink_fmsg_string_pair_put(%struct.devlink_fmsg*, i8*, i8*) #1

declare dso_local i32 @devlink_fmsg_u32_pair_put(%struct.devlink_fmsg*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
