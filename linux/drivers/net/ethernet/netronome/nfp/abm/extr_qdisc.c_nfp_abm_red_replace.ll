; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_red_replace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_red_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.net_device = type { i32 }
%struct.nfp_abm_link = type { i32 }
%struct.tc_red_qopt_offload = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.nfp_qdisc = type { i32, %struct.TYPE_6__, i64, %struct.TYPE_8__** }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@NFP_QDISC_RED = common dso_local global i32 0, align 4
@NFP_QDISC_UNTRACKED = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nfp_abm_link*, %struct.tc_red_qopt_offload*)* @nfp_abm_red_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_abm_red_replace(%struct.net_device* %0, %struct.nfp_abm_link* %1, %struct.tc_red_qopt_offload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nfp_abm_link*, align 8
  %7 = alloca %struct.tc_red_qopt_offload*, align 8
  %8 = alloca %struct.nfp_qdisc*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.nfp_abm_link* %1, %struct.nfp_abm_link** %6, align 8
  store %struct.tc_red_qopt_offload* %2, %struct.tc_red_qopt_offload** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %12 = load i32, i32* @NFP_QDISC_RED, align 4
  %13 = load %struct.tc_red_qopt_offload*, %struct.tc_red_qopt_offload** %7, align 8
  %14 = getelementptr inbounds %struct.tc_red_qopt_offload, %struct.tc_red_qopt_offload* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tc_red_qopt_offload*, %struct.tc_red_qopt_offload** %7, align 8
  %17 = getelementptr inbounds %struct.tc_red_qopt_offload, %struct.tc_red_qopt_offload* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @nfp_abm_qdisc_replace(%struct.net_device* %10, %struct.nfp_abm_link* %11, i32 %12, i32 %15, i32 %18, i32 1, %struct.nfp_qdisc** %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %101

24:                                               ; preds = %3
  %25 = load %struct.tc_red_qopt_offload*, %struct.tc_red_qopt_offload** %7, align 8
  %26 = getelementptr inbounds %struct.tc_red_qopt_offload, %struct.tc_red_qopt_offload* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %32 = call i64 @nfp_abm_qdisc_child_valid(%struct.nfp_qdisc* %31, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %36 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %35, i32 0, i32 3
  %37 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %37, i64 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %34, %30
  %44 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %45 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %44, i32 0, i32 3
  %46 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %46, i64 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %47, align 8
  br label %58

48:                                               ; preds = %24
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NFP_QDISC_UNTRACKED, align 8
  %53 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %54 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %53, i32 0, i32 3
  %55 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %55, i64 0
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %56, align 8
  br label %57

57:                                               ; preds = %51, %48
  br label %58

58:                                               ; preds = %57, %43
  %59 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %60 = load %struct.tc_red_qopt_offload*, %struct.tc_red_qopt_offload** %7, align 8
  %61 = call i64 @nfp_abm_red_check_params(%struct.nfp_abm_link* %59, %struct.tc_red_qopt_offload* %60)
  %62 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %63 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  %64 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %65 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %58
  %69 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %70 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.tc_red_qopt_offload*, %struct.tc_red_qopt_offload** %7, align 8
  %73 = getelementptr inbounds %struct.tc_red_qopt_offload, %struct.tc_red_qopt_offload* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %77 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i32 %75, i32* %81, align 4
  %82 = load %struct.tc_red_qopt_offload*, %struct.tc_red_qopt_offload** %7, align 8
  %83 = getelementptr inbounds %struct.tc_red_qopt_offload, %struct.tc_red_qopt_offload* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %87 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 %85, i32* %91, align 4
  br label %92

92:                                               ; preds = %68, %58
  %93 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %94 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %99 = call i32 @nfp_abm_qdisc_offload_update(%struct.nfp_abm_link* %98)
  br label %100

100:                                              ; preds = %97, %92
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %22
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @nfp_abm_qdisc_replace(%struct.net_device*, %struct.nfp_abm_link*, i32, i32, i32, i32, %struct.nfp_qdisc**) #1

declare dso_local i64 @nfp_abm_qdisc_child_valid(%struct.nfp_qdisc*, i32) #1

declare dso_local i64 @nfp_abm_red_check_params(%struct.nfp_abm_link*, %struct.tc_red_qopt_offload*) #1

declare dso_local i32 @nfp_abm_qdisc_offload_update(%struct.nfp_abm_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
