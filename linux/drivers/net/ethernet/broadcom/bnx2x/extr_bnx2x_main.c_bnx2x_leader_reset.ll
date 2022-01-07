; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_leader_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_leader_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i64 }

@DRV_MSG_CODE_LOAD_REQ = common dso_local global i32 0, align 4
@DRV_MSG_CODE_LOAD_REQ_WITH_LFA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"MCP response failure, aborting\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@FW_MSG_CODE_DRV_LOAD_COMMON_CHIP = common dso_local global i64 0, align 8
@FW_MSG_CODE_DRV_LOAD_COMMON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"MCP unexpected resp, aborting\0A\00", align 1
@DRV_MSG_CODE_LOAD_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Something bad had happen on engine %d! Aii!\0A\00", align 1
@DRV_MSG_CODE_UNLOAD_REQ_WOL_MCP = common dso_local global i32 0, align 4
@DRV_MSG_CODE_UNLOAD_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_leader_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_leader_reset(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %7 = call i32 @bnx2x_reset_is_global(%struct.bnx2x* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %48, label %10

10:                                               ; preds = %1
  %11 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %12 = call i32 @BP_NOMCP(%struct.bnx2x* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %10
  %15 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %16 = load i32, i32* @DRV_MSG_CODE_LOAD_REQ, align 4
  %17 = load i32, i32* @DRV_MSG_CODE_LOAD_REQ_WITH_LFA, align 4
  %18 = call i64 @bnx2x_fw_command(%struct.bnx2x* %15, i32 %16, i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %14
  %22 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %83

25:                                               ; preds = %14
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @FW_MSG_CODE_DRV_LOAD_COMMON_CHIP, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @FW_MSG_CODE_DRV_LOAD_COMMON, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %68

37:                                               ; preds = %29, %25
  %38 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %39 = load i32, i32* @DRV_MSG_CODE_LOAD_DONE, align 4
  %40 = call i64 @bnx2x_fw_command(%struct.bnx2x* %38, i32 %39, i32 0)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EAGAIN, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %68

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %10, %1
  %49 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @bnx2x_process_kill(%struct.bnx2x* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %55 = call i32 @BP_PATH(%struct.bnx2x* %54)
  %56 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %68

59:                                               ; preds = %48
  %60 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %61 = call i32 @bnx2x_set_reset_done(%struct.bnx2x* %60)
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %66 = call i32 @bnx2x_clear_reset_global(%struct.bnx2x* %65)
  br label %67

67:                                               ; preds = %64, %59
  br label %68

68:                                               ; preds = %67, %53, %43, %33
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %68
  %72 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %73 = call i32 @BP_NOMCP(%struct.bnx2x* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %71
  %76 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %77 = load i32, i32* @DRV_MSG_CODE_UNLOAD_REQ_WOL_MCP, align 4
  %78 = call i64 @bnx2x_fw_command(%struct.bnx2x* %76, i32 %77, i32 0)
  %79 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %80 = load i32, i32* @DRV_MSG_CODE_UNLOAD_DONE, align 4
  %81 = call i64 @bnx2x_fw_command(%struct.bnx2x* %79, i32 %80, i32 0)
  br label %82

82:                                               ; preds = %75, %71, %68
  br label %83

83:                                               ; preds = %82, %21
  %84 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %85 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %87 = call i32 @bnx2x_release_leader_lock(%struct.bnx2x* %86)
  %88 = call i32 (...) @smp_mb()
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @bnx2x_reset_is_global(%struct.bnx2x*) #1

declare dso_local i32 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_fw_command(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, ...) #1

declare dso_local i64 @bnx2x_process_kill(%struct.bnx2x*, i32) #1

declare dso_local i32 @BP_PATH(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_set_reset_done(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_clear_reset_global(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_release_leader_lock(%struct.bnx2x*) #1

declare dso_local i32 @smp_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
