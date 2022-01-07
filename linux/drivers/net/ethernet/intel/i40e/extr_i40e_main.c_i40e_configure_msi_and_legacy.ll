; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_configure_msi_and_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_configure_msi_and_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, %struct.TYPE_7__**, %struct.TYPE_5__**, %struct.i40e_pf*, %struct.i40e_q_vector** }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.i40e_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }
%struct.i40e_q_vector = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i8* }
%struct.TYPE_6__ = type { i32, i32, i8* }

@jiffies = common dso_local global i8* null, align 8
@I40E_RX_ITR = common dso_local global i32 0, align 4
@I40E_TX_ITR = common dso_local global i32 0, align 4
@I40E_PFINT_LNKLST0 = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_CAUSE_ENA_MASK = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_ITR_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_NEXTQ_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QUEUE_TYPE_TX = common dso_local global i32 0, align 4
@I40E_QINT_TQCTL_NEXTQ_TYPE_SHIFT = common dso_local global i32 0, align 4
@I40E_QINT_TQCTL_CAUSE_ENA_MASK = common dso_local global i32 0, align 4
@I40E_QINT_TQCTL_ITR_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QUEUE_END_OF_LIST = common dso_local global i32 0, align 4
@I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vsi*)* @i40e_configure_msi_and_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_configure_msi_and_legacy(%struct.i40e_vsi* %0) #0 {
  %2 = alloca %struct.i40e_vsi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_q_vector*, align 8
  %5 = alloca %struct.i40e_pf*, align 8
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %2, align 8
  %8 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %9 = call i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %13 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i32 [ %14, %11 ], [ 0, %15 ]
  store i32 %17, i32* %3, align 4
  %18 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %19 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %18, i32 0, i32 4
  %20 = load %struct.i40e_q_vector**, %struct.i40e_q_vector*** %19, align 8
  %21 = getelementptr inbounds %struct.i40e_q_vector*, %struct.i40e_q_vector** %20, i64 0
  %22 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %21, align 8
  store %struct.i40e_q_vector* %22, %struct.i40e_q_vector** %4, align 8
  %23 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %24 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %23, i32 0, i32 3
  %25 = load %struct.i40e_pf*, %struct.i40e_pf** %24, align 8
  store %struct.i40e_pf* %25, %struct.i40e_pf** %5, align 8
  %26 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %27 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %26, i32 0, i32 0
  store %struct.i40e_hw* %27, %struct.i40e_hw** %6, align 8
  %28 = load i8*, i8** @jiffies, align 8
  %29 = getelementptr i8, i8* %28, i64 1
  %30 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %31 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  store i8* %29, i8** %32, align 8
  %33 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %34 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %35, i64 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @ITR_TO_REG(i32 %39)
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %43 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %46 = load i32, i32* @I40E_RX_ITR, align 4
  %47 = call i32 @I40E_PFINT_ITR0(i32 %46)
  %48 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %49 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @wr32(%struct.i40e_hw* %45, i32 %47, i32 %51)
  %53 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %54 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %58 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = load i8*, i8** @jiffies, align 8
  %61 = getelementptr i8, i8* %60, i64 1
  %62 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %63 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  store i8* %61, i8** %64, align 8
  %65 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %66 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %67, i64 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @ITR_TO_REG(i32 %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %75 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %78 = load i32, i32* @I40E_TX_ITR, align 4
  %79 = call i32 @I40E_PFINT_ITR0(i32 %78)
  %80 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %81 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @wr32(%struct.i40e_hw* %77, i32 %79, i32 %83)
  %85 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %86 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %90 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %93 = call i32 @i40e_enable_misc_int_causes(%struct.i40e_pf* %92)
  %94 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %95 = load i32, i32* @I40E_PFINT_LNKLST0, align 4
  %96 = call i32 @wr32(%struct.i40e_hw* %94, i32 %95, i32 0)
  %97 = load i32, i32* @I40E_QINT_RQCTL_CAUSE_ENA_MASK, align 4
  %98 = load i32, i32* @I40E_RX_ITR, align 4
  %99 = load i32, i32* @I40E_QINT_RQCTL_ITR_INDX_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = or i32 %97, %100
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @I40E_QINT_RQCTL_NEXTQ_INDX_SHIFT, align 4
  %104 = shl i32 %102, %103
  %105 = or i32 %101, %104
  %106 = load i32, i32* @I40E_QUEUE_TYPE_TX, align 4
  %107 = load i32, i32* @I40E_QINT_TQCTL_NEXTQ_TYPE_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = or i32 %105, %108
  store i32 %109, i32* %7, align 4
  %110 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %111 = call i32 @I40E_QINT_RQCTL(i32 0)
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @wr32(%struct.i40e_hw* %110, i32 %111, i32 %112)
  %114 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %115 = call i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %16
  %118 = load i32, i32* @I40E_QINT_TQCTL_CAUSE_ENA_MASK, align 4
  %119 = load i32, i32* @I40E_TX_ITR, align 4
  %120 = load i32, i32* @I40E_QINT_TQCTL_ITR_INDX_SHIFT, align 4
  %121 = shl i32 %119, %120
  %122 = or i32 %118, %121
  %123 = load i32, i32* @I40E_QUEUE_TYPE_TX, align 4
  %124 = load i32, i32* @I40E_QINT_TQCTL_NEXTQ_TYPE_SHIFT, align 4
  %125 = shl i32 %123, %124
  %126 = or i32 %122, %125
  store i32 %126, i32* %7, align 4
  %127 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @I40E_QINT_TQCTL(i32 %128)
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @wr32(%struct.i40e_hw* %127, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %117, %16
  %133 = load i32, i32* @I40E_QINT_TQCTL_CAUSE_ENA_MASK, align 4
  %134 = load i32, i32* @I40E_TX_ITR, align 4
  %135 = load i32, i32* @I40E_QINT_TQCTL_ITR_INDX_SHIFT, align 4
  %136 = shl i32 %134, %135
  %137 = or i32 %133, %136
  %138 = load i32, i32* @I40E_QUEUE_END_OF_LIST, align 4
  %139 = load i32, i32* @I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT, align 4
  %140 = shl i32 %138, %139
  %141 = or i32 %137, %140
  store i32 %141, i32* %7, align 4
  %142 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %143 = call i32 @I40E_QINT_TQCTL(i32 0)
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @wr32(%struct.i40e_hw* %142, i32 %143, i32 %144)
  %146 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %147 = call i32 @i40e_flush(%struct.i40e_hw* %146)
  ret void
}

declare dso_local i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi*) #1

declare dso_local i8* @ITR_TO_REG(i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_PFINT_ITR0(i32) #1

declare dso_local i32 @i40e_enable_misc_int_causes(%struct.i40e_pf*) #1

declare dso_local i32 @I40E_QINT_RQCTL(i32) #1

declare dso_local i32 @I40E_QINT_TQCTL(i32) #1

declare dso_local i32 @i40e_flush(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
