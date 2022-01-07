; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_stats.c_bnx2x_hw_stats_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_stats.c_bnx2x_hw_stats_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i64, i64, i32, %struct.dmae_command }
%struct.dmae_command = type { i32, i32, i32, i32, i64, i64, i32, i32, i64 }

@DMAE_COMP_VAL = common dso_local global i64 0, align 8
@func_stats = common dso_local global i32 0, align 4
@DMAE_SRC_PCI = common dso_local global i32 0, align 4
@DMAE_DST_GRC = common dso_local global i32 0, align 4
@DMAE_COMP_GRC = common dso_local global i32 0, align 4
@DMAE_REG_CMD_MEM = common dso_local global i32 0, align 4
@dmae_reg_go_c = common dso_local global i32* null, align 8
@stats_comp = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_hw_stats_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_hw_stats_post(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca %struct.dmae_command*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 3
  store %struct.dmae_command* %8, %struct.dmae_command** %3, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %10 = load i64*, i64** %4, align 8
  %11 = ptrtoint i64* %10 to i32
  %12 = call i64* @bnx2x_sp(%struct.bnx2x* %9, i32 %11)
  store i64* %12, i64** %4, align 8
  %13 = load i64, i64* @DMAE_COMP_VAL, align 8
  %14 = load i64*, i64** %4, align 8
  store i64 %13, i64* %14, align 8
  %15 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %16 = call i64 @CHIP_REV_IS_SLOW(%struct.bnx2x* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %119

19:                                               ; preds = %1
  %20 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %21 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %26 = load i32, i32* @func_stats, align 4
  %27 = call i64* @bnx2x_sp(%struct.bnx2x* %25, i32 %26)
  %28 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %29 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %28, i32 0, i32 2
  %30 = call i32 @memcpy(i64* %27, i32* %29, i32 4)
  br label %31

31:                                               ; preds = %24, %19
  %32 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %33 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %107

36:                                               ; preds = %31
  %37 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %38 = call i32 @PMF_DMAE_C(%struct.bnx2x* %37)
  store i32 %38, i32* %5, align 4
  %39 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %40 = load i32, i32* @DMAE_SRC_PCI, align 4
  %41 = load i32, i32* @DMAE_DST_GRC, align 4
  %42 = load i32, i32* @DMAE_COMP_GRC, align 4
  %43 = call i64 @bnx2x_dmae_opcode(%struct.bnx2x* %39, i32 %40, i32 %41, i32 1, i32 %42)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @bnx2x_dmae_opcode_clr_src_reset(i64 %44)
  store i64 %45, i64* %6, align 8
  %46 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %47 = call i32 @memset(%struct.dmae_command* %46, i32 0, i32 48)
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %50 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %49, i32 0, i32 8
  store i64 %48, i64* %50, align 8
  %51 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %52 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %53 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %52, i64 0
  %54 = call i32 @bnx2x_sp_mapping(%struct.bnx2x* %51, %struct.dmae_command* byval(%struct.dmae_command) align 8 %53)
  %55 = call i32 @U64_LO(i32 %54)
  %56 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %57 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 4
  %58 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %59 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %60 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %59, i64 0
  %61 = call i32 @bnx2x_sp_mapping(%struct.bnx2x* %58, %struct.dmae_command* byval(%struct.dmae_command) align 8 %60)
  %62 = call i32 @U64_HI(i32 %61)
  %63 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %64 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @DMAE_REG_CMD_MEM, align 4
  %66 = sext i32 %65 to i64
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = mul i64 48, %69
  %71 = add i64 %66, %70
  %72 = lshr i64 %71, 2
  %73 = trunc i64 %72 to i32
  %74 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %75 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %77 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %76, i32 0, i32 5
  store i64 0, i64* %77, align 8
  %78 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %79 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %78, i32 0, i32 1
  store i32 12, i32* %79, align 4
  %80 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %81 = call i64 @CHIP_IS_E1(%struct.bnx2x* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %36
  %84 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %85 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %83, %36
  %89 = load i32*, i32** @dmae_reg_go_c, align 8
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 2
  %96 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %97 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %99 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %98, i32 0, i32 4
  store i64 0, i64* %99, align 8
  %100 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %101 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %100, i32 0, i32 3
  store i32 1, i32* %101, align 4
  %102 = load i64*, i64** %4, align 8
  store i64 0, i64* %102, align 8
  %103 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %104 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @bnx2x_post_dmae(%struct.bnx2x* %103, %struct.dmae_command* %104, i32 %105)
  br label %119

107:                                              ; preds = %31
  %108 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %109 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load i64*, i64** %4, align 8
  store i64 0, i64* %113, align 8
  %114 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %115 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %116 = load i64*, i64** %4, align 8
  %117 = call i32 @bnx2x_issue_dmae_with_comp(%struct.bnx2x* %114, %struct.dmae_command* %115, i64* %116)
  br label %118

118:                                              ; preds = %112, %107
  br label %119

119:                                              ; preds = %18, %118, %88
  ret void
}

declare dso_local i64* @bnx2x_sp(%struct.bnx2x*, i32) #1

declare dso_local i64 @CHIP_REV_IS_SLOW(%struct.bnx2x*) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @PMF_DMAE_C(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_dmae_opcode(%struct.bnx2x*, i32, i32, i32, i32) #1

declare dso_local i64 @bnx2x_dmae_opcode_clr_src_reset(i64) #1

declare dso_local i32 @memset(%struct.dmae_command*, i32, i32) #1

declare dso_local i32 @U64_LO(i32) #1

declare dso_local i32 @bnx2x_sp_mapping(%struct.bnx2x*, %struct.dmae_command* byval(%struct.dmae_command) align 8) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_post_dmae(%struct.bnx2x*, %struct.dmae_command*, i32) #1

declare dso_local i32 @bnx2x_issue_dmae_with_comp(%struct.bnx2x*, %struct.dmae_command*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
