; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_calc_hw_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_calc_hw_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@MODE_BB = common dso_local global i32 0, align 4
@MODE_K2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown chip type %#x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MODE_PORTS_PER_ENG_1 = common dso_local global i32 0, align 4
@MODE_PORTS_PER_ENG_2 = common dso_local global i32 0, align 4
@MODE_PORTS_PER_ENG_4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"num_ports_in_engine = %d not supported\0A\00", align 1
@QED_MF_OVLAN_CLSS = common dso_local global i32 0, align 4
@MODE_MF_SD = common dso_local global i32 0, align 4
@MODE_MF_SI = common dso_local global i32 0, align 4
@MODE_ASIC = common dso_local global i32 0, align 4
@MODE_100G = common dso_local global i32 0, align 4
@NETIF_MSG_PROBE = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Configuring function for hw_mode: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*)* @qed_calc_hw_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_calc_hw_mode(%struct.qed_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %6 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = call i64 @QED_IS_BB_B0(%struct.TYPE_5__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* @MODE_BB, align 4
  %12 = shl i32 1, %11
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %4, align 4
  br label %37

15:                                               ; preds = %1
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %17 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = call i64 @QED_IS_AH(%struct.TYPE_5__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i32, i32* @MODE_K2, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %36

26:                                               ; preds = %15
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %29 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DP_NOTICE(%struct.qed_hwfn* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %116

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36, %10
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %39 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %58 [
    i32 1, label %43
    i32 2, label %48
    i32 4, label %53
  ]

43:                                               ; preds = %37
  %44 = load i32, i32* @MODE_PORTS_PER_ENG_1, align 4
  %45 = shl i32 1, %44
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %4, align 4
  br label %68

48:                                               ; preds = %37
  %49 = load i32, i32* @MODE_PORTS_PER_ENG_2, align 4
  %50 = shl i32 1, %49
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %68

53:                                               ; preds = %37
  %54 = load i32, i32* @MODE_PORTS_PER_ENG_4, align 4
  %55 = shl i32 1, %54
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %68

58:                                               ; preds = %37
  %59 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %60 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %61 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @DP_NOTICE(%struct.qed_hwfn* %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %116

68:                                               ; preds = %53, %48, %43
  %69 = load i32, i32* @QED_MF_OVLAN_CLSS, align 4
  %70 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %71 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  %74 = call i64 @test_bit(i32 %69, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load i32, i32* @MODE_MF_SD, align 4
  %78 = shl i32 1, %77
  %79 = load i32, i32* %4, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %4, align 4
  br label %86

81:                                               ; preds = %68
  %82 = load i32, i32* @MODE_MF_SI, align 4
  %83 = shl i32 1, %82
  %84 = load i32, i32* %4, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %81, %76
  %87 = load i32, i32* @MODE_ASIC, align 4
  %88 = shl i32 1, %87
  %89 = load i32, i32* %4, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %4, align 4
  %91 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %92 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %97, label %102

97:                                               ; preds = %86
  %98 = load i32, i32* @MODE_100G, align 4
  %99 = shl i32 1, %98
  %100 = load i32, i32* %4, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %97, %86
  %103 = load i32, i32* %4, align 4
  %104 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %105 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %108 = load i32, i32* @NETIF_MSG_PROBE, align 4
  %109 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %112 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %107, i32 %110, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %102, %58, %26
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i64 @QED_IS_BB_B0(%struct.TYPE_5__*) #1

declare dso_local i64 @QED_IS_AH(%struct.TYPE_5__*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
