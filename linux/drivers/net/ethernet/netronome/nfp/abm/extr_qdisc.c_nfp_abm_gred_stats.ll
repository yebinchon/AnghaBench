; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_gred_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_gred_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_abm_link = type { i32 }
%struct.tc_gred_qopt_offload_stats = type { i32*, i32*, i32* }
%struct.nfp_qdisc = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_abm_link*, i32, %struct.tc_gred_qopt_offload_stats*)* @nfp_abm_gred_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_abm_gred_stats(%struct.nfp_abm_link* %0, i32 %1, %struct.tc_gred_qopt_offload_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_abm_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tc_gred_qopt_offload_stats*, align 8
  %8 = alloca %struct.nfp_qdisc*, align 8
  %9 = alloca i32, align 4
  store %struct.nfp_abm_link* %0, %struct.nfp_abm_link** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tc_gred_qopt_offload_stats* %2, %struct.tc_gred_qopt_offload_stats** %7, align 8
  %10 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %5, align 8
  %11 = call i32 @nfp_abm_stats_update(%struct.nfp_abm_link* %10)
  %12 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.nfp_qdisc* @nfp_abm_qdisc_find(%struct.nfp_abm_link* %12, i32 %13)
  store %struct.nfp_qdisc* %14, %struct.nfp_qdisc** %8, align 8
  %15 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %16 = icmp ne %struct.nfp_qdisc* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %140

20:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %126, %20
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %24 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %22, %26
  br i1 %27, label %28, label %129

28:                                               ; preds = %21
  %29 = load %struct.tc_gred_qopt_offload_stats*, %struct.tc_gred_qopt_offload_stats** %7, align 8
  %30 = getelementptr inbounds %struct.tc_gred_qopt_offload_stats, %struct.tc_gred_qopt_offload_stats* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  br label %126

38:                                               ; preds = %28
  %39 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %40 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %48 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = load %struct.tc_gred_qopt_offload_stats*, %struct.tc_gred_qopt_offload_stats** %7, align 8
  %56 = getelementptr inbounds %struct.tc_gred_qopt_offload_stats, %struct.tc_gred_qopt_offload_stats* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load %struct.tc_gred_qopt_offload_stats*, %struct.tc_gred_qopt_offload_stats** %7, align 8
  %62 = getelementptr inbounds %struct.tc_gred_qopt_offload_stats, %struct.tc_gred_qopt_offload_stats* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32 @nfp_abm_stats_calculate(i32* %46, i32* %54, i32* %60, i32* %66)
  %68 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %69 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %78 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  store i32 %76, i32* %84, align 4
  %85 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %86 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %94 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load %struct.tc_gred_qopt_offload_stats*, %struct.tc_gred_qopt_offload_stats** %7, align 8
  %102 = getelementptr inbounds %struct.tc_gred_qopt_offload_stats, %struct.tc_gred_qopt_offload_stats* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @nfp_abm_stats_red_calculate(i32* %92, i32* %100, i32 %107)
  %109 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %110 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %119 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  store i32 %117, i32* %125, align 4
  br label %126

126:                                              ; preds = %38, %37
  %127 = load i32, i32* %9, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %21

129:                                              ; preds = %21
  %130 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %131 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %138

135:                                              ; preds = %129
  %136 = load i32, i32* @EOPNOTSUPP, align 4
  %137 = sub nsw i32 0, %136
  br label %138

138:                                              ; preds = %135, %134
  %139 = phi i32 [ 0, %134 ], [ %137, %135 ]
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %138, %17
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @nfp_abm_stats_update(%struct.nfp_abm_link*) #1

declare dso_local %struct.nfp_qdisc* @nfp_abm_qdisc_find(%struct.nfp_abm_link*, i32) #1

declare dso_local i32 @nfp_abm_stats_calculate(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nfp_abm_stats_red_calculate(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
