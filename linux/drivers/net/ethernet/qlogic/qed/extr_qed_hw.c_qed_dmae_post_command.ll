; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_hw.c_qed_dmae_post_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_hw.c_qed_dmae_post_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.dmae_cmd* }
%struct.dmae_cmd = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.qed_ptt = type { i32 }

@.str = private unnamed_addr constant [102 x i8] c"source or destination address 0 idx_cmd=%d\0Aopcode = [0x%08x,0x%04x] len=0x%x src=0x%x:%x dst=0x%x:%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NETIF_MSG_HW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [90 x i8] c"Posting DMAE command [idx %d]: opcode = [0x%08x,0x%04x] len=0x%x src=0x%x:%x dst=0x%x:%x\0A\00", align 1
@DMAE_CMD_SIZE = common dso_local global i32 0, align 4
@DMAE_CMD_SIZE_TO_FILL = common dso_local global i32 0, align 4
@DMAE_REG_CMD_MEM = common dso_local global i64 0, align 8
@DMAE_GO_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*)* @qed_dmae_post_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_dmae_post_command(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.dmae_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %12 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.dmae_cmd*, %struct.dmae_cmd** %13, align 8
  store %struct.dmae_cmd* %14, %struct.dmae_cmd** %6, align 8
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %16 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %20 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %25 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23, %2
  %29 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %30 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %72, label %33

33:                                               ; preds = %28
  %34 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %35 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %72, label %38

38:                                               ; preds = %33, %23
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %42 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %46 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le16_to_cpu(i32 %47)
  %49 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %50 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %54 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  %57 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %58 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le32_to_cpu(i32 %59)
  %61 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %62 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le32_to_cpu(i32 %63)
  %65 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %66 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le32_to_cpu(i32 %67)
  %69 = call i32 @DP_NOTICE(%struct.qed_hwfn* %39, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %44, i32 %48, i32 %52, i32 %56, i32 %60, i32 %64, i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %149

72:                                               ; preds = %33, %28
  %73 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %74 = load i32, i32* @NETIF_MSG_HW, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %77 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le32_to_cpu(i32 %78)
  %80 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %81 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @le16_to_cpu(i32 %82)
  %84 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %85 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le16_to_cpu(i32 %86)
  %88 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %89 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le32_to_cpu(i32 %90)
  %92 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %93 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le32_to_cpu(i32 %94)
  %96 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %97 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @le32_to_cpu(i32 %98)
  %100 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %101 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @le32_to_cpu(i32 %102)
  %104 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %73, i32 %74, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %79, i32 %83, i32 %87, i32 %91, i32 %95, i32 %99, i32 %103)
  store i32 0, i32* %8, align 4
  br label %105

105:                                              ; preds = %138, %72
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @DMAE_CMD_SIZE, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %141

109:                                              ; preds = %105
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @DMAE_CMD_SIZE_TO_FILL, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %109
  %114 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %115 = bitcast %struct.dmae_cmd* %114 to i32*
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  br label %121

120:                                              ; preds = %109
  br label %121

121:                                              ; preds = %120, %113
  %122 = phi i32 [ %119, %113 ], [ 0, %120 ]
  store i32 %122, i32* %10, align 4
  %123 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %124 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %125 = load i64, i64* @DMAE_REG_CMD_MEM, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @DMAE_CMD_SIZE, align 4
  %128 = mul nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  %131 = add i64 %125, %130
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = mul i64 %133, 4
  %135 = add i64 %131, %134
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @qed_wr(%struct.qed_hwfn* %123, %struct.qed_ptt* %124, i64 %135, i32 %136)
  br label %138

138:                                              ; preds = %121
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %105

141:                                              ; preds = %105
  %142 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %143 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i64 @qed_dmae_idx_to_go_cmd(i32 %144)
  %146 = load i32, i32* @DMAE_GO_VALUE, align 4
  %147 = call i32 @qed_wr(%struct.qed_hwfn* %142, %struct.qed_ptt* %143, i64 %145, i32 %146)
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %141, %38
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i64, i32) #1

declare dso_local i64 @qed_dmae_idx_to_go_cmd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
