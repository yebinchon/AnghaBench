; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_oem_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_oem_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32*, i32 }

@DRV_STATUS_DCC_EVENT_MASK = common dso_local global i32 0, align 4
@DRV_STATUS_OEM_EVENT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Received simultaneous events %08x\0A\00", align 1
@DRV_MSG_CODE_DCC_FAILURE = common dso_local global i32 0, align 4
@DRV_MSG_CODE_DCC_OK = common dso_local global i32 0, align 4
@DRV_MSG_CODE_OEM_FAILURE = common dso_local global i32 0, align 4
@DRV_MSG_CODE_OEM_OK = common dso_local global i32 0, align 4
@BNX2X_MSG_MCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"oem_event 0x%x\0A\00", align 1
@DRV_STATUS_DCC_DISABLE_ENABLE_PF = common dso_local global i32 0, align 4
@DRV_STATUS_OEM_DISABLE_ENABLE_PF = common dso_local global i32 0, align 4
@FUNC_MF_CFG_FUNC_DISABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"mf_cfg function disabled\0A\00", align 1
@MF_FUNC_DIS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"mf_cfg function enabled\0A\00", align 1
@DRV_STATUS_DCC_BANDWIDTH_ALLOCATION = common dso_local global i32 0, align 4
@DRV_STATUS_OEM_BANDWIDTH_ALLOCATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32)* @bnx2x_oem_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_oem_event(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @DRV_STATUS_DCC_EVENT_MASK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @DRV_STATUS_OEM_EVENT_MASK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %106

19:                                               ; preds = %11, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @DRV_STATUS_DCC_EVENT_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @DRV_MSG_CODE_DCC_FAILURE, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @DRV_MSG_CODE_DCC_OK, align 4
  store i32 %26, i32* %5, align 4
  br label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @DRV_MSG_CODE_OEM_FAILURE, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @DRV_MSG_CODE_OEM_OK, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* @BNX2X_MSG_MCP, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 (i32, i8*, ...) @DP(i32 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @DRV_STATUS_DCC_DISABLE_ENABLE_PF, align 4
  %36 = load i32, i32* @DRV_STATUS_OEM_DISABLE_ENABLE_PF, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %79

40:                                               ; preds = %30
  %41 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %42 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %45 = call i64 @BP_VN(%struct.bnx2x* %44)
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @FUNC_MF_CFG_FUNC_DISABLED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %40
  %52 = load i32, i32* @BNX2X_MSG_MCP, align 4
  %53 = call i32 (i32, i8*, ...) @DP(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @MF_FUNC_DIS, align 4
  %55 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %56 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %60 = call i32 @bnx2x_e1h_disable(%struct.bnx2x* %59)
  br label %72

61:                                               ; preds = %40
  %62 = load i32, i32* @BNX2X_MSG_MCP, align 4
  %63 = call i32 (i32, i8*, ...) @DP(i32 %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* @MF_FUNC_DIS, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %67 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %71 = call i32 @bnx2x_e1h_enable(%struct.bnx2x* %70)
  br label %72

72:                                               ; preds = %61, %51
  %73 = load i32, i32* @DRV_STATUS_DCC_DISABLE_ENABLE_PF, align 4
  %74 = load i32, i32* @DRV_STATUS_OEM_DISABLE_ENABLE_PF, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %72, %30
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @DRV_STATUS_DCC_BANDWIDTH_ALLOCATION, align 4
  %82 = load i32, i32* @DRV_STATUS_OEM_BANDWIDTH_ALLOCATION, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %79
  %87 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %88 = call i32 @bnx2x_config_mf_bw(%struct.bnx2x* %87)
  %89 = load i32, i32* @DRV_STATUS_DCC_BANDWIDTH_ALLOCATION, align 4
  %90 = load i32, i32* @DRV_STATUS_OEM_BANDWIDTH_ALLOCATION, align 4
  %91 = or i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %4, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %86, %79
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @bnx2x_fw_command(%struct.bnx2x* %99, i32 %100, i32 0)
  br label %106

102:                                              ; preds = %95
  %103 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @bnx2x_fw_command(%struct.bnx2x* %103, i32 %104, i32 0)
  br label %106

106:                                              ; preds = %16, %102, %98
  ret void
}

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i64 @BP_VN(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_e1h_disable(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_e1h_enable(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_config_mf_bw(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_fw_command(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
