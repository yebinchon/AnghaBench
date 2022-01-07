; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_cmd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_cmd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_mcp_info* }
%struct.qed_mcp_info = type { i8*, i8*, i32, i32, i32, i32 }
%struct.qed_ptt = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"MCP is not initialized\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_mcp_cmd_init(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_mcp_info*, align 8
  %7 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kzalloc(i32 32, i32 %8)
  %10 = bitcast i8* %9 to %struct.qed_mcp_info*
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %12 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %11, i32 0, i32 0
  store %struct.qed_mcp_info* %10, %struct.qed_mcp_info** %12, align 8
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %14 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %13, i32 0, i32 0
  %15 = load %struct.qed_mcp_info*, %struct.qed_mcp_info** %14, align 8
  %16 = icmp ne %struct.qed_mcp_info* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %67

18:                                               ; preds = %2
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %20 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %19, i32 0, i32 0
  %21 = load %struct.qed_mcp_info*, %struct.qed_mcp_info** %20, align 8
  store %struct.qed_mcp_info* %21, %struct.qed_mcp_info** %6, align 8
  %22 = load %struct.qed_mcp_info*, %struct.qed_mcp_info** %6, align 8
  %23 = getelementptr inbounds %struct.qed_mcp_info, %struct.qed_mcp_info* %22, i32 0, i32 5
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.qed_mcp_info*, %struct.qed_mcp_info** %6, align 8
  %26 = getelementptr inbounds %struct.qed_mcp_info, %struct.qed_mcp_info* %25, i32 0, i32 4
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.qed_mcp_info*, %struct.qed_mcp_info** %6, align 8
  %29 = getelementptr inbounds %struct.qed_mcp_info, %struct.qed_mcp_info* %28, i32 0, i32 3
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %32 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %33 = call i64 @qed_load_mcp_offsets(%struct.qed_hwfn* %31, %struct.qed_ptt* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %18
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %37 = call i32 @DP_NOTICE(%struct.qed_hwfn* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %72

38:                                               ; preds = %18
  %39 = load %struct.qed_mcp_info*, %struct.qed_mcp_info** %6, align 8
  %40 = getelementptr inbounds %struct.qed_mcp_info, %struct.qed_mcp_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @MFW_DRV_MSG_MAX_DWORDS(i32 %41)
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kzalloc(i32 %46, i32 %47)
  %49 = load %struct.qed_mcp_info*, %struct.qed_mcp_info** %6, align 8
  %50 = getelementptr inbounds %struct.qed_mcp_info, %struct.qed_mcp_info* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kzalloc(i32 %51, i32 %52)
  %54 = load %struct.qed_mcp_info*, %struct.qed_mcp_info** %6, align 8
  %55 = getelementptr inbounds %struct.qed_mcp_info, %struct.qed_mcp_info* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load %struct.qed_mcp_info*, %struct.qed_mcp_info** %6, align 8
  %57 = getelementptr inbounds %struct.qed_mcp_info, %struct.qed_mcp_info* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %38
  %61 = load %struct.qed_mcp_info*, %struct.qed_mcp_info** %6, align 8
  %62 = getelementptr inbounds %struct.qed_mcp_info, %struct.qed_mcp_info* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %60, %38
  br label %67

66:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %72

67:                                               ; preds = %65, %17
  %68 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %69 = call i32 @qed_mcp_free(%struct.qed_hwfn* %68)
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %67, %66, %35
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @qed_load_mcp_offsets(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @MFW_DRV_MSG_MAX_DWORDS(i32) #1

declare dso_local i32 @qed_mcp_free(%struct.qed_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
