; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cdu_init_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cdu_init_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ILT_CLI_CDUC = common dso_local global i64 0, align 8
@CDUC_CXT_SIZE = common dso_local global i32 0, align 4
@CDUC_BLOCK_WASTE = common dso_local global i32 0, align 4
@CDUC_NCIB = common dso_local global i32 0, align 4
@CDU_REG_CID_ADDR_PARAMS_RT_OFFSET = common dso_local global i32 0, align 4
@ILT_CLI_CDUT = common dso_local global i64 0, align 8
@CDUT_TYPE0_CXT_SIZE = common dso_local global i32 0, align 4
@CDUT_TYPE0_BLOCK_WASTE = common dso_local global i32 0, align 4
@CDUT_TYPE0_NCIB = common dso_local global i32 0, align 4
@CDU_REG_SEGMENT0_PARAMS_RT_OFFSET = common dso_local global i32 0, align 4
@CDUT_TYPE1_CXT_SIZE = common dso_local global i32 0, align 4
@CDUT_TYPE1_BLOCK_WASTE = common dso_local global i32 0, align 4
@CDUT_TYPE1_NCIB = common dso_local global i32 0, align 4
@CDU_REG_SEGMENT1_PARAMS_RT_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*)* @qed_cdu_init_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_cdu_init_common(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %9 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = load i64, i64* @ILT_CLI_CDUC, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %19 = call i32 @CONN_CXT_SIZE(%struct.qed_hwfn* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @ILT_PAGE_IN_BYTES(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = sdiv i32 %21, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @ILT_PAGE_IN_BYTES(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sub nsw i32 %25, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @CDUC_CXT_SIZE, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @SET_FIELD(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @CDUC_BLOCK_WASTE, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @SET_FIELD(i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @CDUC_NCIB, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @SET_FIELD(i32 %38, i32 %39, i32 %40)
  %42 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %43 = load i32, i32* @CDU_REG_CID_ADDR_PARAMS_RT_OFFSET, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %42, i32 %43, i32 %44)
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %47 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i64, i64* @ILT_CLI_CDUT, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %3, align 4
  %56 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %57 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @ILT_PAGE_IN_BYTES(i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = sdiv i32 %64, %65
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @ILT_PAGE_IN_BYTES(i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %6, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sub nsw i32 %68, %71
  store i32 %72, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @CDUT_TYPE0_CXT_SIZE, align 4
  %75 = load i32, i32* %6, align 4
  %76 = ashr i32 %75, 3
  %77 = call i32 @SET_FIELD(i32 %73, i32 %74, i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @CDUT_TYPE0_BLOCK_WASTE, align 4
  %80 = load i32, i32* %5, align 4
  %81 = ashr i32 %80, 3
  %82 = call i32 @SET_FIELD(i32 %78, i32 %79, i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @CDUT_TYPE0_NCIB, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @SET_FIELD(i32 %83, i32 %84, i32 %85)
  %87 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %88 = load i32, i32* @CDU_REG_SEGMENT0_PARAMS_RT_OFFSET, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %87, i32 %88, i32 %89)
  %91 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %92 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @ILT_PAGE_IN_BYTES(i32 %98)
  %100 = load i32, i32* %6, align 4
  %101 = sdiv i32 %99, %100
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @ILT_PAGE_IN_BYTES(i32 %102)
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %6, align 4
  %106 = mul nsw i32 %104, %105
  %107 = sub nsw i32 %103, %106
  store i32 %107, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @CDUT_TYPE1_CXT_SIZE, align 4
  %110 = load i32, i32* %6, align 4
  %111 = ashr i32 %110, 3
  %112 = call i32 @SET_FIELD(i32 %108, i32 %109, i32 %111)
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @CDUT_TYPE1_BLOCK_WASTE, align 4
  %115 = load i32, i32* %5, align 4
  %116 = ashr i32 %115, 3
  %117 = call i32 @SET_FIELD(i32 %113, i32 %114, i32 %116)
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @CDUT_TYPE1_NCIB, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @SET_FIELD(i32 %118, i32 %119, i32 %120)
  %122 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %123 = load i32, i32* @CDU_REG_SEGMENT1_PARAMS_RT_OFFSET, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %122, i32 %123, i32 %124)
  ret void
}

declare dso_local i32 @CONN_CXT_SIZE(%struct.qed_hwfn*) #1

declare dso_local i32 @ILT_PAGE_IN_BYTES(i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @STORE_RT_REG(%struct.qed_hwfn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
