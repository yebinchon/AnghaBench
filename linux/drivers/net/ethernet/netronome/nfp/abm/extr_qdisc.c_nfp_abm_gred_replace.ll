; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_gred_replace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_gred_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_abm_link = type { i32 }
%struct.tc_gred_qopt_offload = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.nfp_qdisc = type { i64, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@NFP_QDISC_GRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nfp_abm_link*, %struct.tc_gred_qopt_offload*)* @nfp_abm_gred_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_abm_gred_replace(%struct.net_device* %0, %struct.nfp_abm_link* %1, %struct.tc_gred_qopt_offload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nfp_abm_link*, align 8
  %7 = alloca %struct.tc_gred_qopt_offload*, align 8
  %8 = alloca %struct.nfp_qdisc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.nfp_abm_link* %1, %struct.nfp_abm_link** %6, align 8
  store %struct.tc_gred_qopt_offload* %2, %struct.tc_gred_qopt_offload** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %13 = load i32, i32* @NFP_QDISC_GRED, align 4
  %14 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %7, align 8
  %15 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %7, align 8
  %18 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @nfp_abm_qdisc_replace(%struct.net_device* %11, %struct.nfp_abm_link* %12, i32 %13, i32 %16, i32 %19, i32 0, %struct.nfp_qdisc** %8)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %98

25:                                               ; preds = %3
  %26 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %27 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %7, align 8
  %28 = call i64 @nfp_abm_gred_check_params(%struct.nfp_abm_link* %26, %struct.tc_gred_qopt_offload* %27)
  %29 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %30 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %32 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %89

35:                                               ; preds = %25
  %36 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %7, align 8
  %37 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %41 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %85, %35
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %46 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %44, %48
  br i1 %49, label %50, label %88

50:                                               ; preds = %43
  %51 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %7, align 8
  %52 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %61 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i32 %59, i32* %67, align 4
  %68 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %7, align 8
  %69 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %78 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i32 %76, i32* %84, align 4
  br label %85

85:                                               ; preds = %50
  %86 = load i32, i32* %9, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %43

88:                                               ; preds = %43
  br label %89

89:                                               ; preds = %88, %25
  %90 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %91 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %96 = call i32 @nfp_abm_qdisc_offload_update(%struct.nfp_abm_link* %95)
  br label %97

97:                                               ; preds = %94, %89
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %23
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @nfp_abm_qdisc_replace(%struct.net_device*, %struct.nfp_abm_link*, i32, i32, i32, i32, %struct.nfp_qdisc**) #1

declare dso_local i64 @nfp_abm_gred_check_params(%struct.nfp_abm_link*, %struct.tc_gred_qopt_offload*) #1

declare dso_local i32 @nfp_abm_qdisc_offload_update(%struct.nfp_abm_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
