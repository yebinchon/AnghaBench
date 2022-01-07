; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_single_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_single_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32, %struct.qed_hwfn* }
%struct.qed_hwfn = type { %struct.qed_simd_fp_handler*, i32 }
%struct.qed_simd_fp_handler = type { i32, i32 (i32)* }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Not calling fastpath handler as it is NULL [handler #%d, status 0x%llx]\0A\00", align 1
@NETIF_MSG_INTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"got an unknown interrupt status 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qed_single_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_single_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qed_dev*, align 8
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qed_simd_fp_handler*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.qed_dev*
  store %struct.qed_dev* %13, %struct.qed_dev** %5, align 8
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %111, %2
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %18 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %114

21:                                               ; preds = %15
  %22 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %23 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %22, i32 0, i32 1
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %24, i64 %26
  %28 = call i32 @qed_int_igu_read_sisr_reg(%struct.qed_hwfn* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  br label %111

32:                                               ; preds = %21
  %33 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %34 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %33, i32 0, i32 1
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %35, i64 %37
  store %struct.qed_hwfn* %38, %struct.qed_hwfn** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 1
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %32
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %45 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @tasklet_schedule(i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, -2
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %43, %32
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %98, %51
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 64
  br i1 %54, label %55, label %101

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  %57 = zext i32 %56 to i64
  %58 = shl i64 2, %57
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = and i64 %58, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %97

63:                                               ; preds = %55
  %64 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %65 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %64, i32 0, i32 0
  %66 = load %struct.qed_simd_fp_handler*, %struct.qed_simd_fp_handler** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.qed_simd_fp_handler, %struct.qed_simd_fp_handler* %66, i64 %68
  store %struct.qed_simd_fp_handler* %69, %struct.qed_simd_fp_handler** %11, align 8
  %70 = load %struct.qed_simd_fp_handler*, %struct.qed_simd_fp_handler** %11, align 8
  %71 = getelementptr inbounds %struct.qed_simd_fp_handler, %struct.qed_simd_fp_handler* %70, i32 0, i32 1
  %72 = load i32 (i32)*, i32 (i32)** %71, align 8
  %73 = icmp ne i32 (i32)* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %63
  %75 = load %struct.qed_simd_fp_handler*, %struct.qed_simd_fp_handler** %11, align 8
  %76 = getelementptr inbounds %struct.qed_simd_fp_handler, %struct.qed_simd_fp_handler* %75, i32 0, i32 1
  %77 = load i32 (i32)*, i32 (i32)** %76, align 8
  %78 = load %struct.qed_simd_fp_handler*, %struct.qed_simd_fp_handler** %11, align 8
  %79 = getelementptr inbounds %struct.qed_simd_fp_handler, %struct.qed_simd_fp_handler* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 %77(i32 %80)
  br label %87

82:                                               ; preds = %63
  %83 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @DP_NOTICE(%struct.qed_hwfn* %83, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %74
  %88 = load i32, i32* %10, align 4
  %89 = zext i32 %88 to i64
  %90 = shl i64 2, %89
  %91 = xor i64 %90, -1
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = and i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %87, %55
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %52

101:                                              ; preds = %52
  %102 = load i32, i32* %8, align 4
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %107 = load i32, i32* @NETIF_MSG_INTR, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %106, i32 %107, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %105, %101
  br label %111

111:                                              ; preds = %110, %31
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %15

114:                                              ; preds = %15
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local i32 @qed_int_igu_read_sisr_reg(%struct.qed_hwfn*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tasklet_schedule(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
