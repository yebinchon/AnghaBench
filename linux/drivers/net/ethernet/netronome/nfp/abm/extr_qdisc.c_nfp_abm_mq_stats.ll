; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_mq_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_mq_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_abm_link = type { i32 }
%struct.tc_qopt_offload_stats = type { i32, i32 }
%struct.nfp_qdisc = type { i32, i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.nfp_qdisc** }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_abm_link*, i32, %struct.tc_qopt_offload_stats*)* @nfp_abm_mq_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_abm_mq_stats(%struct.nfp_abm_link* %0, i32 %1, %struct.tc_qopt_offload_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_abm_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tc_qopt_offload_stats*, align 8
  %8 = alloca %struct.nfp_qdisc*, align 8
  %9 = alloca %struct.nfp_qdisc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nfp_abm_link* %0, %struct.nfp_abm_link** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tc_qopt_offload_stats* %2, %struct.tc_qopt_offload_stats** %7, align 8
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
  br label %125

20:                                               ; preds = %3
  %21 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %5, align 8
  %22 = call i32 @nfp_abm_stats_update(%struct.nfp_abm_link* %21)
  %23 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %24 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = call i32 @memset(i32* %25, i32 0, i32 4)
  %27 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %28 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = call i32 @memset(i32* %29, i32 0, i32 4)
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %98, %20
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %34 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %101

37:                                               ; preds = %31
  %38 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @nfp_abm_qdisc_child_valid(%struct.nfp_qdisc* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %98

43:                                               ; preds = %37
  %44 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %45 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %44, i32 0, i32 4
  %46 = load %struct.nfp_qdisc**, %struct.nfp_qdisc*** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.nfp_qdisc*, %struct.nfp_qdisc** %46, i64 %48
  %50 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %49, align 8
  %51 = call i32 @nfp_abm_qdisc_is_red(%struct.nfp_qdisc* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %43
  br label %98

54:                                               ; preds = %43
  %55 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %56 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %55, i32 0, i32 4
  %57 = load %struct.nfp_qdisc**, %struct.nfp_qdisc*** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.nfp_qdisc*, %struct.nfp_qdisc** %57, i64 %59
  %61 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %60, align 8
  store %struct.nfp_qdisc* %61, %struct.nfp_qdisc** %9, align 8
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %94, %54
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %9, align 8
  %65 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ult i32 %63, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %62
  %70 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %71 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %9, align 8
  %74 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = call i32 @nfp_abm_stats_propagate(i32* %72, i32* %80)
  %82 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %83 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %9, align 8
  %86 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = call i32 @nfp_abm_stats_propagate(i32* %84, i32* %92)
  br label %94

94:                                               ; preds = %69
  %95 = load i32, i32* %11, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %62

97:                                               ; preds = %62
  br label %98

98:                                               ; preds = %97, %53, %42
  %99 = load i32, i32* %10, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %31

101:                                              ; preds = %31
  %102 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %103 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %106 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load %struct.tc_qopt_offload_stats*, %struct.tc_qopt_offload_stats** %7, align 8
  %109 = getelementptr inbounds %struct.tc_qopt_offload_stats, %struct.tc_qopt_offload_stats* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.tc_qopt_offload_stats*, %struct.tc_qopt_offload_stats** %7, align 8
  %112 = getelementptr inbounds %struct.tc_qopt_offload_stats, %struct.tc_qopt_offload_stats* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @nfp_abm_stats_calculate(i32* %104, i32* %107, i32 %110, i32 %113)
  %115 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %116 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %101
  br label %123

120:                                              ; preds = %101
  %121 = load i32, i32* @EOPNOTSUPP, align 4
  %122 = sub nsw i32 0, %121
  br label %123

123:                                              ; preds = %120, %119
  %124 = phi i32 [ 0, %119 ], [ %122, %120 ]
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %123, %17
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.nfp_qdisc* @nfp_abm_qdisc_find(%struct.nfp_abm_link*, i32) #1

declare dso_local i32 @nfp_abm_stats_update(%struct.nfp_abm_link*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @nfp_abm_qdisc_child_valid(%struct.nfp_qdisc*, i32) #1

declare dso_local i32 @nfp_abm_qdisc_is_red(%struct.nfp_qdisc*) #1

declare dso_local i32 @nfp_abm_stats_propagate(i32*, i32*) #1

declare dso_local i32 @nfp_abm_stats_calculate(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
