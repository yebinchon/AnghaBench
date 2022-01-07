; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_int_attentions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_int_attentions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_sb_attn_info* }
%struct.qed_sb_attn_info = type { i32, %struct.atten_status_block* }
%struct.atten_status_block = type { i64, i32, i32 }

@ATTN_STATE_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [114 x i8] c"Attention: Index: 0x%04x, Bits: 0x%08x, Acks: 0x%08x, asserted: 0x%04x, De-asserted 0x%04x [Prev. known: 0x%04x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"MFW indication via attention\0A\00", align 1
@NETIF_MSG_INTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"MFW indication [deassertion]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*)* @qed_int_attentions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_int_attentions(%struct.qed_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_sb_attn_info*, align 8
  %5 = alloca %struct.atten_status_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %13 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %12, i32 0, i32 0
  %14 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %13, align 8
  store %struct.qed_sb_attn_info* %14, %struct.qed_sb_attn_info** %4, align 8
  %15 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %4, align 8
  %16 = getelementptr inbounds %struct.qed_sb_attn_info, %struct.qed_sb_attn_info* %15, i32 0, i32 1
  %17 = load %struct.atten_status_block*, %struct.atten_status_block** %16, align 8
  store %struct.atten_status_block* %17, %struct.atten_status_block** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %31, %1
  %19 = load %struct.atten_status_block*, %struct.atten_status_block** %5, align 8
  %20 = getelementptr inbounds %struct.atten_status_block, %struct.atten_status_block* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = call i32 (...) @dma_rmb()
  %23 = load %struct.atten_status_block*, %struct.atten_status_block** %5, align 8
  %24 = getelementptr inbounds %struct.atten_status_block, %struct.atten_status_block* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.atten_status_block*, %struct.atten_status_block** %5, align 8
  %28 = getelementptr inbounds %struct.atten_status_block, %struct.atten_status_block* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @le32_to_cpu(i32 %29)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %18
  %32 = load i64, i64* %10, align 8
  %33 = load %struct.atten_status_block*, %struct.atten_status_block** %5, align 8
  %34 = getelementptr inbounds %struct.atten_status_block, %struct.atten_status_block* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %18, label %37

37:                                               ; preds = %31
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.atten_status_block*, %struct.atten_status_block** %5, align 8
  %40 = getelementptr inbounds %struct.atten_status_block, %struct.atten_status_block* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = load i32, i32* @ATTN_STATE_BITS, align 4
  %46 = and i32 %44, %45
  %47 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %4, align 8
  %48 = getelementptr inbounds %struct.qed_sb_attn_info, %struct.qed_sb_attn_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = xor i32 %49, -1
  %51 = and i32 %46, %50
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %6, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @ATTN_STATE_BITS, align 4
  %57 = and i32 %55, %56
  %58 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %4, align 8
  %59 = getelementptr inbounds %struct.qed_sb_attn_info, %struct.qed_sb_attn_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %57, %60
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, -257
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %37
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, -257
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %65, %37
  %70 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %4, align 8
  %77 = getelementptr inbounds %struct.qed_sb_attn_info, %struct.qed_sb_attn_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_INFO(%struct.qed_hwfn* %70, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str, i64 0, i64 0), i64 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %78)
  br label %91

80:                                               ; preds = %65
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, 256
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %85 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_INFO(%struct.qed_hwfn* %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %90

86:                                               ; preds = %80
  %87 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %88 = load i32, i32* @NETIF_MSG_INTR, align 4
  %89 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %87, i32 %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %86, %83
  br label %91

91:                                               ; preds = %90, %69
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @qed_int_assertion(%struct.qed_hwfn* %95, i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %2, align 4
  br label %112

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %91
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @qed_int_deassertion(%struct.qed_hwfn* %107, i32 %108)
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %106, %103
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %110, %100
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DP_INFO(%struct.qed_hwfn*, i8*, ...) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*) #1

declare dso_local i32 @qed_int_assertion(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_int_deassertion(%struct.qed_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
