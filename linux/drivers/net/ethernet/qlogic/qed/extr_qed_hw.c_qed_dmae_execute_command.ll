; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_hw.c_qed_dmae_execute_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_hw.c_qed_dmae_execute_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.dmae_cmd*, i32 }
%struct.dmae_cmd = type { i8*, i8*, i8* }
%struct.qed_ptt = type { i32 }
%struct.qed_dmae_params = type { i32 }

@DMAE_MAX_RW_SIZE = common dso_local global i32 0, align 4
@NETIF_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [118 x i8] c"Recovery is in progress. Avoid DMAE transaction [{src: addr 0x%llx, type %d}, {dst: addr 0x%llx, type %d}, size %d].\0A\00", align 1
@QED_DMAE_ADDRESS_GRC = common dso_local global i32 0, align 4
@DMAE_COMPLETION_VAL = common dso_local global i32 0, align 4
@RW_REPL_SRC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [121 x i8] c"qed_dmae_execute_sub_operation Failed with error 0x%x. source_addr 0x%llx, destination addr 0x%llx, size_in_dwords 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i64, i64, i32, i32, i32, %struct.qed_dmae_params*)* @qed_dmae_execute_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_dmae_execute_command(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6, %struct.qed_dmae_params* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.qed_hwfn*, align 8
  %11 = alloca %struct.qed_ptt*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.qed_dmae_params*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.dmae_cmd*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %10, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.qed_dmae_params* %7, %struct.qed_dmae_params** %17, align 8
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %30 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %34 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.dmae_cmd*, %struct.dmae_cmd** %35, align 8
  store %struct.dmae_cmd* %36, %struct.dmae_cmd** %23, align 8
  store i64 0, i64* %24, align 8
  store i64 0, i64* %25, align 8
  %37 = load i32, i32* @DMAE_MAX_RW_SIZE, align 4
  store i32 %37, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %39 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %8
  %45 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %46 = load i32, i32* @NETIF_MSG_HW, align 4
  %47 = load i64, i64* %12, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i64, i64* %13, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %45, i32 %46, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str, i64 0, i64 0), i64 %47, i32 %48, i64 %49, i32 %50, i32 %51)
  store i32 0, i32* %9, align 4
  br label %167

53:                                               ; preds = %8
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @QED_DMAE_ADDRESS_GRC, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @QED_DMAE_ADDRESS_GRC, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load %struct.qed_dmae_params*, %struct.qed_dmae_params** %17, align 8
  %64 = call i32 @qed_dmae_opcode(%struct.qed_hwfn* %54, i32 %58, i32 %62, %struct.qed_dmae_params* %63)
  %65 = load i32, i32* %18, align 4
  %66 = call i32 @lower_32_bits(i32 %65)
  %67 = call i8* @cpu_to_le32(i32 %66)
  %68 = load %struct.dmae_cmd*, %struct.dmae_cmd** %23, align 8
  %69 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* %18, align 4
  %71 = call i32 @upper_32_bits(i32 %70)
  %72 = call i8* @cpu_to_le32(i32 %71)
  %73 = load %struct.dmae_cmd*, %struct.dmae_cmd** %23, align 8
  %74 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @DMAE_COMPLETION_VAL, align 4
  %76 = call i8* @cpu_to_le32(i32 %75)
  %77 = load %struct.dmae_cmd*, %struct.dmae_cmd** %23, align 8
  %78 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %26, align 4
  %81 = sdiv i32 %79, %80
  store i32 %81, i32* %21, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %26, align 4
  %84 = srem i32 %82, %83
  store i32 %84, i32* %22, align 4
  %85 = load i64, i64* %12, align 8
  store i64 %85, i64* %24, align 8
  %86 = load i64, i64* %13, align 8
  store i64 %86, i64* %25, align 8
  store i32 0, i32* %20, align 4
  br label %87

87:                                               ; preds = %162, %53
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %21, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %165

91:                                               ; preds = %87
  %92 = load i32, i32* %26, align 4
  %93 = load i32, i32* %20, align 4
  %94 = mul nsw i32 %92, %93
  store i32 %94, i32* %28, align 4
  %95 = load %struct.qed_dmae_params*, %struct.qed_dmae_params** %17, align 8
  %96 = load i32, i32* @RW_REPL_SRC, align 4
  %97 = call i32 @QED_DMAE_FLAGS_IS_SET(%struct.qed_dmae_params* %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %115, label %99

99:                                               ; preds = %91
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @QED_DMAE_ADDRESS_GRC, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i64, i64* %12, align 8
  %105 = load i32, i32* %28, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  store i64 %107, i64* %24, align 8
  br label %114

108:                                              ; preds = %99
  %109 = load i64, i64* %12, align 8
  %110 = load i32, i32* %28, align 4
  %111 = mul nsw i32 %110, 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %109, %112
  store i64 %113, i64* %24, align 8
  br label %114

114:                                              ; preds = %108, %103
  br label %115

115:                                              ; preds = %114, %91
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* @QED_DMAE_ADDRESS_GRC, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load i64, i64* %13, align 8
  %121 = load i32, i32* %28, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %120, %122
  store i64 %123, i64* %25, align 8
  br label %130

124:                                              ; preds = %115
  %125 = load i64, i64* %13, align 8
  %126 = load i32, i32* %28, align 4
  %127 = mul nsw i32 %126, 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %125, %128
  store i64 %129, i64* %25, align 8
  br label %130

130:                                              ; preds = %124, %119
  %131 = load i32, i32* %21, align 4
  %132 = load i32, i32* %20, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32, i32* %22, align 4
  br label %138

136:                                              ; preds = %130
  %137 = load i32, i32* %26, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  store i32 %139, i32* %19, align 4
  %140 = load i32, i32* %19, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  br label %162

143:                                              ; preds = %138
  %144 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %145 = load %struct.qed_ptt*, %struct.qed_ptt** %11, align 8
  %146 = load i64, i64* %24, align 8
  %147 = load i64, i64* %25, align 8
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %19, align 4
  %151 = call i32 @qed_dmae_execute_sub_operation(%struct.qed_hwfn* %144, %struct.qed_ptt* %145, i64 %146, i64 %147, i32 %148, i32 %149, i32 %150)
  store i32 %151, i32* %27, align 4
  %152 = load i32, i32* %27, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %143
  %155 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %156 = load i32, i32* %27, align 4
  %157 = load i64, i64* %12, align 8
  %158 = load i64, i64* %13, align 8
  %159 = load i32, i32* %19, align 4
  %160 = call i32 @DP_NOTICE(%struct.qed_hwfn* %155, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.1, i64 0, i64 0), i32 %156, i64 %157, i64 %158, i32 %159)
  br label %165

161:                                              ; preds = %143
  br label %162

162:                                              ; preds = %161, %142
  %163 = load i32, i32* %20, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %20, align 4
  br label %87

165:                                              ; preds = %154, %87
  %166 = load i32, i32* %27, align 4
  store i32 %166, i32* %9, align 4
  br label %167

167:                                              ; preds = %165, %44
  %168 = load i32, i32* %9, align 4
  ret i32 %168
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i64, i32, i64, i32, i32) #1

declare dso_local i32 @qed_dmae_opcode(%struct.qed_hwfn*, i32, i32, %struct.qed_dmae_params*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @QED_DMAE_FLAGS_IS_SET(%struct.qed_dmae_params*, i32) #1

declare dso_local i32 @qed_dmae_execute_sub_operation(%struct.qed_hwfn*, %struct.qed_ptt*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
