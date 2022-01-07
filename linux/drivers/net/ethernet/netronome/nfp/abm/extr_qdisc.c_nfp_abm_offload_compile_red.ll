; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_offload_compile_red.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_offload_compile_red.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_abm_link = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nfp_qdisc = type { i64, i32, i32, %struct.TYPE_6__, i32, i64, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@NFP_QDISC_RED = common dso_local global i64 0, align 8
@NFP_QDISC_GRED = common dso_local global i64 0, align 8
@NFP_ABM_ACT_MARK_DROP = common dso_local global i32 0, align 4
@NFP_ABM_ACT_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_abm_link*, %struct.nfp_qdisc*, i32)* @nfp_abm_offload_compile_red to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_abm_offload_compile_red(%struct.nfp_abm_link* %0, %struct.nfp_qdisc* %1, i32 %2) #0 {
  %4 = alloca %struct.nfp_abm_link*, align 8
  %5 = alloca %struct.nfp_qdisc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nfp_abm_link* %0, %struct.nfp_abm_link** %4, align 8
  store %struct.nfp_qdisc* %1, %struct.nfp_qdisc** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %5, align 8
  %12 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NFP_QDISC_RED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %3
  %17 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %5, align 8
  %18 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %5, align 8
  %23 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %4, align 8
  %28 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %5, align 8
  %33 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %32, i32 0, i32 6
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %31, %26, %21, %16, %3
  %40 = phi i1 [ false, %26 ], [ false, %21 ], [ false, %16 ], [ false, %3 ], [ %38, %31 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %5, align 8
  %43 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NFP_QDISC_GRED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %5, align 8
  %49 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %5, align 8
  %54 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 1
  br label %57

57:                                               ; preds = %52, %47, %39
  %58 = phi i1 [ false, %47 ], [ false, %39 ], [ %56, %52 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br label %65

65:                                               ; preds = %62, %57
  %66 = phi i1 [ true, %57 ], [ %64, %62 ]
  %67 = zext i1 %66 to i32
  %68 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %5, align 8
  %69 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %5, align 8
  %71 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %65
  %75 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %5, align 8
  %76 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %74
  %80 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %4, align 8
  %81 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i64 @nfp_abm_stats_init(%struct.nfp_abm_link* %80, %struct.nfp_qdisc* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %5, align 8
  %87 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %86, i32 0, i32 2
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %79
  br label %89

89:                                               ; preds = %88, %74, %65
  %90 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %5, align 8
  %91 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  br label %142

95:                                               ; preds = %89
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %139, %95
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %4, align 8
  %99 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ult i32 %97, %102
  br i1 %103, label %104, label %142

104:                                              ; preds = %96
  %105 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %4, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %5, align 8
  %109 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @nfp_abm_ctrl_set_q_lvl(%struct.nfp_abm_link* %105, i32 %106, i32 %107, i32 %116)
  %118 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %5, align 8
  %119 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %104
  %129 = load i32, i32* @NFP_ABM_ACT_MARK_DROP, align 4
  br label %132

130:                                              ; preds = %104
  %131 = load i32, i32* @NFP_ABM_ACT_DROP, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  store i32 %133, i32* %10, align 4
  %134 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %4, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @nfp_abm_ctrl_set_q_act(%struct.nfp_abm_link* %134, i32 %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %9, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %9, align 4
  br label %96

142:                                              ; preds = %94, %96
  ret void
}

declare dso_local i64 @nfp_abm_stats_init(%struct.nfp_abm_link*, %struct.nfp_qdisc*, i32) #1

declare dso_local i32 @nfp_abm_ctrl_set_q_lvl(%struct.nfp_abm_link*, i32, i32, i32) #1

declare dso_local i32 @nfp_abm_ctrl_set_q_act(%struct.nfp_abm_link*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
