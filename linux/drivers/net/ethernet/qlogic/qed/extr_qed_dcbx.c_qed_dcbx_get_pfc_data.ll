; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_get_pfc_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_get_pfc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_dcbx_params = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i8*, i8*, i8* }

@DCBX_PFC_WILLING = common dso_local global i32 0, align 4
@DCBX_PFC_CAPS = common dso_local global i32 0, align 4
@DCBX_PFC_ENABLED = common dso_local global i32 0, align 4
@DCBX_PFC_PRI_EN_BITMAP = common dso_local global i32 0, align 4
@DCBX_PFC_PRI_EN_BITMAP_PRI_0 = common dso_local global i32 0, align 4
@DCBX_PFC_PRI_EN_BITMAP_PRI_1 = common dso_local global i32 0, align 4
@DCBX_PFC_PRI_EN_BITMAP_PRI_2 = common dso_local global i32 0, align 4
@DCBX_PFC_PRI_EN_BITMAP_PRI_3 = common dso_local global i32 0, align 4
@DCBX_PFC_PRI_EN_BITMAP_PRI_4 = common dso_local global i32 0, align 4
@DCBX_PFC_PRI_EN_BITMAP_PRI_5 = common dso_local global i32 0, align 4
@DCBX_PFC_PRI_EN_BITMAP_PRI_6 = common dso_local global i32 0, align 4
@DCBX_PFC_PRI_EN_BITMAP_PRI_7 = common dso_local global i32 0, align 4
@QED_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"PFC params: willing %d, pfc_bitmap %u max_tc = %u enabled = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, i32, %struct.qed_dcbx_params*)* @qed_dcbx_get_pfc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_dcbx_get_pfc_data(%struct.qed_hwfn* %0, i32 %1, %struct.qed_dcbx_params* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_dcbx_params*, align 8
  %7 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.qed_dcbx_params* %2, %struct.qed_dcbx_params** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @DCBX_PFC_WILLING, align 4
  %10 = call i8* @QED_MFW_GET_FIELD(i32 %8, i32 %9)
  %11 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %6, align 8
  %12 = getelementptr inbounds %struct.qed_dcbx_params, %struct.qed_dcbx_params* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  store i8* %10, i8** %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @DCBX_PFC_CAPS, align 4
  %16 = call i8* @QED_MFW_GET_FIELD(i32 %14, i32 %15)
  %17 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %6, align 8
  %18 = getelementptr inbounds %struct.qed_dcbx_params, %struct.qed_dcbx_params* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i8* %16, i8** %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @DCBX_PFC_ENABLED, align 4
  %22 = call i8* @QED_MFW_GET_FIELD(i32 %20, i32 %21)
  %23 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %6, align 8
  %24 = getelementptr inbounds %struct.qed_dcbx_params, %struct.qed_dcbx_params* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i8* %22, i8** %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @DCBX_PFC_PRI_EN_BITMAP, align 4
  %28 = call i8* @QED_MFW_GET_FIELD(i32 %26, i32 %27)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @DCBX_PFC_PRI_EN_BITMAP_PRI_0, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %6, align 8
  %38 = getelementptr inbounds %struct.qed_dcbx_params, %struct.qed_dcbx_params* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %36, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @DCBX_PFC_PRI_EN_BITMAP_PRI_1, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %6, align 8
  %50 = getelementptr inbounds %struct.qed_dcbx_params, %struct.qed_dcbx_params* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @DCBX_PFC_PRI_EN_BITMAP_PRI_2, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %6, align 8
  %62 = getelementptr inbounds %struct.qed_dcbx_params, %struct.qed_dcbx_params* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  store i32 %60, i32* %65, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @DCBX_PFC_PRI_EN_BITMAP_PRI_3, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %6, align 8
  %74 = getelementptr inbounds %struct.qed_dcbx_params, %struct.qed_dcbx_params* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  store i32 %72, i32* %77, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @DCBX_PFC_PRI_EN_BITMAP_PRI_4, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %6, align 8
  %86 = getelementptr inbounds %struct.qed_dcbx_params, %struct.qed_dcbx_params* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  store i32 %84, i32* %89, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @DCBX_PFC_PRI_EN_BITMAP_PRI_5, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %6, align 8
  %98 = getelementptr inbounds %struct.qed_dcbx_params, %struct.qed_dcbx_params* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 5
  store i32 %96, i32* %101, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @DCBX_PFC_PRI_EN_BITMAP_PRI_6, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %6, align 8
  %110 = getelementptr inbounds %struct.qed_dcbx_params, %struct.qed_dcbx_params* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 6
  store i32 %108, i32* %113, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @DCBX_PFC_PRI_EN_BITMAP_PRI_7, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %6, align 8
  %122 = getelementptr inbounds %struct.qed_dcbx_params, %struct.qed_dcbx_params* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 7
  store i32 %120, i32* %125, align 4
  %126 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %127 = load i32, i32* @QED_MSG_DCB, align 4
  %128 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %6, align 8
  %129 = getelementptr inbounds %struct.qed_dcbx_params, %struct.qed_dcbx_params* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 3
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %6, align 8
  %134 = getelementptr inbounds %struct.qed_dcbx_params, %struct.qed_dcbx_params* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %6, align 8
  %138 = getelementptr inbounds %struct.qed_dcbx_params, %struct.qed_dcbx_params* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %126, i32 %127, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %131, i32 %132, i8* %136, i8* %140)
  ret void
}

declare dso_local i8* @QED_MFW_GET_FIELD(i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
