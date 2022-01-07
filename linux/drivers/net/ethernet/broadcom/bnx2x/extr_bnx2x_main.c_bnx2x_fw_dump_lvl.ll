; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_fw_dump_lvl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_fw_dump_lvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"NO MCP - can not dump\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"bc %d.%d.%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Cannot dump MCP info while in PCI error\0A\00", align 1
@MCP_REG_MCPR_CPU_PROGRAM_COUNTER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"%sMCP PC at 0x%x\0A\00", align 1
@other_shmem_base_addr = common dso_local global i32 0, align 4
@MCPR_TRACE_BUFFER_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Unable to dump trace buffer (mark %x)\0A\00", align 1
@MFW_TRACE_SIGNATURE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"Trace buffer signature is missing.\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Mark doesn't fall inside Trace Buffer\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"%sbegin fw dump (mark 0x%x)\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"%send of fw dump\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_fw_dump_lvl(%struct.bnx2x* %0, i8* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [9 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %13 = call i64 @BP_NOMCP(%struct.bnx2x* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %201

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %20 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %23 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 16711680
  %27 = ashr i32 %26, 16
  %28 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %29 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 65280
  %33 = ashr i32 %32, 8
  %34 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %35 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 255
  %39 = call i32 @netdev_printk(i8* %18, i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %33, i32 %38)
  %40 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %41 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @pci_channel_offline(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %17
  %46 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %201

47:                                               ; preds = %17
  %48 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %49 = load i64, i64* @MCP_REG_MCPR_CPU_PROGRAM_COUNTER, align 8
  %50 = call i64 @REG_RD(%struct.bnx2x* %48, i64 %49)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %53 = load i64, i64* @MCP_REG_MCPR_CPU_PROGRAM_COUNTER, align 8
  %54 = call i64 @REG_RD(%struct.bnx2x* %52, i64 %53)
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load i8*, i8** %4, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %57, i64 %58)
  br label %60

60:                                               ; preds = %56, %47
  %61 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %62 = call i64 @BP_PATH(%struct.bnx2x* %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %66 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %11, align 8
  br label %73

69:                                               ; preds = %60
  %70 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %71 = load i32, i32* @other_shmem_base_addr, align 4
  %72 = call i64 @SHMEM2_RD(%struct.bnx2x* %70, i32 %71)
  store i64 %72, i64* %11, align 8
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i64, i64* %11, align 8
  %75 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %76 = call i64 @MCPR_SCRATCH_BASE(%struct.bnx2x* %75)
  %77 = load i64, i64* @MCPR_TRACE_BUFFER_SIZE, align 8
  %78 = add nsw i64 %76, %77
  %79 = icmp slt i64 %74, %78
  br i1 %79, label %88, label %80

80:                                               ; preds = %73
  %81 = load i64, i64* %11, align 8
  %82 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %83 = call i64 @MCPR_SCRATCH_BASE(%struct.bnx2x* %82)
  %84 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %85 = call i64 @SCRATCH_BUFFER_SIZE(%struct.bnx2x* %84)
  %86 = add nsw i64 %83, %85
  %87 = icmp sge i64 %81, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %80, %73
  %89 = load i64, i64* %11, align 8
  %90 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %89)
  br label %201

91:                                               ; preds = %80
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* @MCPR_TRACE_BUFFER_SIZE, align 8
  %94 = sub nsw i64 %92, %93
  store i64 %94, i64* %5, align 8
  %95 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %96 = load i64, i64* %5, align 8
  %97 = call i64 @REG_RD(%struct.bnx2x* %95, i64 %96)
  store i64 %97, i64* %7, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* @MFW_TRACE_SIGNATURE, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %201

103:                                              ; preds = %91
  %104 = load i64, i64* %5, align 8
  %105 = add nsw i64 %104, 4
  store i64 %105, i64* %5, align 8
  %106 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %107 = load i64, i64* %5, align 8
  %108 = call i64 @REG_RD(%struct.bnx2x* %106, i64 %107)
  store i64 %108, i64* %7, align 8
  %109 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %110 = call i64 @MCPR_SCRATCH_BASE(%struct.bnx2x* %109)
  %111 = load i64, i64* %7, align 8
  %112 = add nsw i64 %111, 3
  %113 = and i64 %112, -4
  %114 = add nsw i64 %110, %113
  %115 = sub nsw i64 %114, 134217728
  store i64 %115, i64* %7, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* %11, align 8
  %118 = icmp sge i64 %116, %117
  br i1 %118, label %124, label %119

119:                                              ; preds = %103
  %120 = load i64, i64* %7, align 8
  %121 = load i64, i64* %5, align 8
  %122 = add nsw i64 %121, 4
  %123 = icmp slt i64 %120, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %119, %103
  %125 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %201

126:                                              ; preds = %119
  %127 = load i8*, i8** %4, align 8
  %128 = load i64, i64* %7, align 8
  %129 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %127, i64 %128)
  %130 = load i8*, i8** %4, align 8
  %131 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %130)
  %132 = load i64, i64* %7, align 8
  store i64 %132, i64* %8, align 8
  br label %133

133:                                              ; preds = %161, %126
  %134 = load i64, i64* %8, align 8
  %135 = load i64, i64* %11, align 8
  %136 = icmp slt i64 %134, %135
  br i1 %136, label %137, label %164

137:                                              ; preds = %133
  store i32 0, i32* %10, align 4
  br label %138

138:                                              ; preds = %153, %137
  %139 = load i32, i32* %10, align 4
  %140 = icmp slt i32 %139, 8
  br i1 %140, label %141, label %156

141:                                              ; preds = %138
  %142 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %143 = load i64, i64* %8, align 8
  %144 = load i32, i32* %10, align 4
  %145 = mul nsw i32 4, %144
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %143, %146
  %148 = call i64 @REG_RD(%struct.bnx2x* %142, i64 %147)
  %149 = call i32 @htonl(i64 %148)
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 %151
  store i32 %149, i32* %152, align 4
  br label %153

153:                                              ; preds = %141
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %138

156:                                              ; preds = %138
  %157 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 8
  store i32 0, i32* %157, align 16
  %158 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %159 = bitcast i32* %158 to i8*
  %160 = call i32 @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %159)
  br label %161

161:                                              ; preds = %156
  %162 = load i64, i64* %8, align 8
  %163 = add nsw i64 %162, 32
  store i64 %163, i64* %8, align 8
  br label %133

164:                                              ; preds = %133
  %165 = load i64, i64* %5, align 8
  %166 = add nsw i64 %165, 4
  store i64 %166, i64* %8, align 8
  br label %167

167:                                              ; preds = %195, %164
  %168 = load i64, i64* %8, align 8
  %169 = load i64, i64* %7, align 8
  %170 = icmp sle i64 %168, %169
  br i1 %170, label %171, label %198

171:                                              ; preds = %167
  store i32 0, i32* %10, align 4
  br label %172

172:                                              ; preds = %187, %171
  %173 = load i32, i32* %10, align 4
  %174 = icmp slt i32 %173, 8
  br i1 %174, label %175, label %190

175:                                              ; preds = %172
  %176 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %177 = load i64, i64* %8, align 8
  %178 = load i32, i32* %10, align 4
  %179 = mul nsw i32 4, %178
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %177, %180
  %182 = call i64 @REG_RD(%struct.bnx2x* %176, i64 %181)
  %183 = call i32 @htonl(i64 %182)
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 %185
  store i32 %183, i32* %186, align 4
  br label %187

187:                                              ; preds = %175
  %188 = load i32, i32* %10, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %10, align 4
  br label %172

190:                                              ; preds = %172
  %191 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 8
  store i32 0, i32* %191, align 16
  %192 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %193 = bitcast i32* %192 to i8*
  %194 = call i32 @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %193)
  br label %195

195:                                              ; preds = %190
  %196 = load i64, i64* %8, align 8
  %197 = add nsw i64 %196, 32
  store i64 %197, i64* %8, align 8
  br label %167

198:                                              ; preds = %167
  %199 = load i8*, i8** %4, align 8
  %200 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %199)
  br label %201

201:                                              ; preds = %198, %124, %101, %88, %45, %15
  ret void
}

declare dso_local i64 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*, ...) #1

declare dso_local i32 @netdev_printk(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @pci_channel_offline(i32) #1

declare dso_local i64 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i64 @BP_PATH(%struct.bnx2x*) #1

declare dso_local i64 @SHMEM2_RD(%struct.bnx2x*, i32) #1

declare dso_local i64 @MCPR_SCRATCH_BASE(%struct.bnx2x*) #1

declare dso_local i64 @SCRATCH_BUFFER_SIZE(%struct.bnx2x*) #1

declare dso_local i32 @printk(i8*, i8*, ...) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @pr_cont(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
