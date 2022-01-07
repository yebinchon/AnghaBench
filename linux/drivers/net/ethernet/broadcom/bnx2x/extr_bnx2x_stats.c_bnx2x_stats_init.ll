; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_stats.c_bnx2x_stats_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_stats.c_bnx2x_stats_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.bnx2x = type { i8*, i64, %struct.TYPE_6__, i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_8__, i8*, i64 }
%struct.TYPE_8__ = type { i32, i32, i8*, i8* }

@port_mb = common dso_local global %struct.TYPE_7__* null, align 8
@func_mb = common dso_local global %struct.TYPE_9__* null, align 8
@BNX2X_MSG_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"port_stx 0x%x  func_stx 0x%x\0A\00", align 1
@STATS_EVENT_PMF = common dso_local global i32 0, align 4
@NIG_REG_STAT0_BRB_DISCARD = common dso_local global i64 0, align 8
@NIG_REG_STAT0_BRB_TRUNCATE = common dso_local global i64 0, align 8
@NIG_REG_STAT0_EGRESS_MAC_PKT0 = common dso_local global i64 0, align 8
@NIG_REG_STAT0_EGRESS_MAC_PKT1 = common dso_local global i64 0, align 8
@func_stats = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_stats_init(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %5 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %6 = call i32 @BP_PORT(%struct.bnx2x* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = call i32 @BP_FW_MB_IDX(%struct.bnx2x* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %10 = call i64 @IS_VF(%struct.bnx2x* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %14 = call i32 @bnx2x_memset_stats(%struct.bnx2x* %13)
  br label %165

15:                                               ; preds = %1
  %16 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %17 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %19 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %21 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %23 = call i32 @BP_NOMCP(%struct.bnx2x* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %15
  %26 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @port_mb, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @SHMEM_RD(%struct.bnx2x* %26, i32 %32)
  %34 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %35 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** @func_mb, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @SHMEM_RD(%struct.bnx2x* %37, i32 %43)
  %45 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %46 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  br label %53

47:                                               ; preds = %15
  %48 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %49 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i8* null, i8** %50, align 8
  %51 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %52 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %51, i32 0, i32 0
  store i8* null, i8** %52, align 8
  br label %53

53:                                               ; preds = %47, %25
  %54 = load i32, i32* @BNX2X_MSG_STATS, align 4
  %55 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %56 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %60 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @DP(i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %58, i8* %61)
  %63 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %64 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %53
  %68 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %69 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %75 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %81 = load i32, i32* @STATS_EVENT_PMF, align 4
  %82 = call i32 @bnx2x_stats_handle(%struct.bnx2x* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %73, %67, %53
  %84 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %85 = call i32 @BP_PORT(%struct.bnx2x* %84)
  store i32 %85, i32* %3, align 4
  %86 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %87 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = call i32 @memset(%struct.TYPE_8__* %88, i32 0, i32 4)
  %90 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %91 = load i64, i64* @NIG_REG_STAT0_BRB_DISCARD, align 8
  %92 = load i32, i32* %3, align 4
  %93 = mul nsw i32 %92, 56
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %91, %94
  %96 = call i8* @REG_RD(%struct.bnx2x* %90, i64 %95)
  %97 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %98 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 3
  store i8* %96, i8** %100, align 8
  %101 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %102 = load i64, i64* @NIG_REG_STAT0_BRB_TRUNCATE, align 8
  %103 = load i32, i32* %3, align 4
  %104 = mul nsw i32 %103, 56
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %102, %105
  %107 = call i8* @REG_RD(%struct.bnx2x* %101, i64 %106)
  %108 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %109 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  store i8* %107, i8** %111, align 8
  %112 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %113 = call i32 @CHIP_IS_E3(%struct.bnx2x* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %138, label %115

115:                                              ; preds = %83
  %116 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %117 = load i64, i64* @NIG_REG_STAT0_EGRESS_MAC_PKT0, align 8
  %118 = load i32, i32* %3, align 4
  %119 = mul nsw i32 %118, 80
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %117, %120
  %122 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %123 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = call i32 @REG_RD_DMAE(%struct.bnx2x* %116, i64 %121, i32* %125, i32 2)
  %127 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %128 = load i64, i64* @NIG_REG_STAT0_EGRESS_MAC_PKT1, align 8
  %129 = load i32, i32* %3, align 4
  %130 = mul nsw i32 %129, 80
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %128, %131
  %133 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %134 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = call i32 @REG_RD_DMAE(%struct.bnx2x* %127, i64 %132, i32* %136, i32 2)
  br label %138

138:                                              ; preds = %115, %83
  %139 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %140 = call i32 @bnx2x_prep_fw_stats_req(%struct.bnx2x* %139)
  %141 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %142 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %162

145:                                              ; preds = %138
  %146 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %147 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %161

150:                                              ; preds = %145
  %151 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %152 = load i32, i32* @func_stats, align 4
  %153 = call %struct.TYPE_8__* @bnx2x_sp(%struct.bnx2x* %151, i32 %152)
  %154 = call i32 @memset(%struct.TYPE_8__* %153, i32 0, i32 4)
  %155 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %156 = call i32 @bnx2x_func_stats_init(%struct.bnx2x* %155)
  %157 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %158 = call i32 @bnx2x_hw_stats_post(%struct.bnx2x* %157)
  %159 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %160 = call i32 @bnx2x_stats_comp(%struct.bnx2x* %159)
  br label %161

161:                                              ; preds = %150, %145
  br label %162

162:                                              ; preds = %161, %138
  %163 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %164 = call i32 @bnx2x_memset_stats(%struct.bnx2x* %163)
  br label %165

165:                                              ; preds = %162, %12
  ret void
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @BP_FW_MB_IDX(%struct.bnx2x*) #1

declare dso_local i64 @IS_VF(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_memset_stats(%struct.bnx2x*) #1

declare dso_local i32 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i8* @SHMEM_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @DP(i32, i8*, i8*, i8*) #1

declare dso_local i32 @bnx2x_stats_handle(%struct.bnx2x*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i8* @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i32 @CHIP_IS_E3(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD_DMAE(%struct.bnx2x*, i64, i32*, i32) #1

declare dso_local i32 @bnx2x_prep_fw_stats_req(%struct.bnx2x*) #1

declare dso_local %struct.TYPE_8__* @bnx2x_sp(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_func_stats_init(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_hw_stats_post(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_stats_comp(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
