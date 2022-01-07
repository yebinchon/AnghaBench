; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_configure_sge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_configure_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.adapter* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.adapter = type { i64 }
%struct.sge_params = type { i32 }

@A_SG_CONTROL = common dso_local global i64 0, align 8
@A_SG_CMD0BASELWR = common dso_local global i32 0, align 4
@A_SG_CMD0BASEUPR = common dso_local global i32 0, align 4
@A_SG_CMD0SIZE = common dso_local global i32 0, align 4
@A_SG_CMD1BASELWR = common dso_local global i32 0, align 4
@A_SG_CMD1BASEUPR = common dso_local global i32 0, align 4
@A_SG_CMD1SIZE = common dso_local global i32 0, align 4
@A_SG_FL0BASELWR = common dso_local global i32 0, align 4
@A_SG_FL0BASEUPR = common dso_local global i32 0, align 4
@A_SG_FL0SIZE = common dso_local global i32 0, align 4
@A_SG_FL1BASELWR = common dso_local global i32 0, align 4
@A_SG_FL1BASEUPR = common dso_local global i32 0, align 4
@A_SG_FL1SIZE = common dso_local global i32 0, align 4
@SGE_RX_SM_BUF_SIZE = common dso_local global i64 0, align 8
@A_SG_FLTHRESHOLD = common dso_local global i64 0, align 8
@A_SG_RSPBASELWR = common dso_local global i32 0, align 4
@A_SG_RSPBASEUPR = common dso_local global i32 0, align 4
@A_SG_RSPSIZE = common dso_local global i32 0, align 4
@A_SG_RSPQUEUECREDIT = common dso_local global i64 0, align 8
@F_CMDQ0_ENABLE = common dso_local global i32 0, align 4
@F_CMDQ1_ENABLE = common dso_local global i32 0, align 4
@F_FL0_ENABLE = common dso_local global i32 0, align 4
@F_FL1_ENABLE = common dso_local global i32 0, align 4
@F_CPL_ENABLE = common dso_local global i32 0, align 4
@F_RESPONSE_QUEUE_ENABLE = common dso_local global i32 0, align 4
@F_DISABLE_CMDQ1_GTS = common dso_local global i32 0, align 4
@F_ISCSI_COALESCE = common dso_local global i32 0, align 4
@SGE_INTRTIMER_NRES = common dso_local global i32 0, align 4
@F_ENABLE_BIG_ENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge*, %struct.sge_params*)* @configure_sge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_sge(%struct.sge* %0, %struct.sge_params* %1) #0 {
  %3 = alloca %struct.sge*, align 8
  %4 = alloca %struct.sge_params*, align 8
  %5 = alloca %struct.adapter*, align 8
  store %struct.sge* %0, %struct.sge** %3, align 8
  store %struct.sge_params* %1, %struct.sge_params** %4, align 8
  %6 = load %struct.sge*, %struct.sge** %3, align 8
  %7 = getelementptr inbounds %struct.sge, %struct.sge* %6, i32 0, i32 6
  %8 = load %struct.adapter*, %struct.adapter** %7, align 8
  store %struct.adapter* %8, %struct.adapter** %5, align 8
  %9 = load %struct.adapter*, %struct.adapter** %5, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @A_SG_CONTROL, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i64 0, i64 %13)
  %15 = load %struct.adapter*, %struct.adapter** %5, align 8
  %16 = load %struct.sge*, %struct.sge** %3, align 8
  %17 = getelementptr inbounds %struct.sge, %struct.sge* %16, i32 0, i32 5
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.sge*, %struct.sge** %3, align 8
  %23 = getelementptr inbounds %struct.sge, %struct.sge* %22, i32 0, i32 5
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @A_SG_CMD0BASELWR, align 4
  %29 = load i32, i32* @A_SG_CMD0BASEUPR, align 4
  %30 = load i32, i32* @A_SG_CMD0SIZE, align 4
  %31 = call i32 @setup_ring_params(%struct.adapter* %15, i32 %21, i64 %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.adapter*, %struct.adapter** %5, align 8
  %33 = load %struct.sge*, %struct.sge** %3, align 8
  %34 = getelementptr inbounds %struct.sge, %struct.sge* %33, i32 0, i32 5
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.sge*, %struct.sge** %3, align 8
  %40 = getelementptr inbounds %struct.sge, %struct.sge* %39, i32 0, i32 5
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @A_SG_CMD1BASELWR, align 4
  %46 = load i32, i32* @A_SG_CMD1BASEUPR, align 4
  %47 = load i32, i32* @A_SG_CMD1SIZE, align 4
  %48 = call i32 @setup_ring_params(%struct.adapter* %32, i32 %38, i64 %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.adapter*, %struct.adapter** %5, align 8
  %50 = load %struct.sge*, %struct.sge** %3, align 8
  %51 = getelementptr inbounds %struct.sge, %struct.sge* %50, i32 0, i32 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.sge*, %struct.sge** %3, align 8
  %57 = getelementptr inbounds %struct.sge, %struct.sge* %56, i32 0, i32 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @A_SG_FL0BASELWR, align 4
  %63 = load i32, i32* @A_SG_FL0BASEUPR, align 4
  %64 = load i32, i32* @A_SG_FL0SIZE, align 4
  %65 = call i32 @setup_ring_params(%struct.adapter* %49, i32 %55, i64 %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.adapter*, %struct.adapter** %5, align 8
  %67 = load %struct.sge*, %struct.sge** %3, align 8
  %68 = getelementptr inbounds %struct.sge, %struct.sge* %67, i32 0, i32 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.sge*, %struct.sge** %3, align 8
  %74 = getelementptr inbounds %struct.sge, %struct.sge* %73, i32 0, i32 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @A_SG_FL1BASELWR, align 4
  %80 = load i32, i32* @A_SG_FL1BASEUPR, align 4
  %81 = load i32, i32* @A_SG_FL1SIZE, align 4
  %82 = call i32 @setup_ring_params(%struct.adapter* %66, i32 %72, i64 %78, i32 %79, i32 %80, i32 %81)
  %83 = load i64, i64* @SGE_RX_SM_BUF_SIZE, align 8
  %84 = add nsw i64 %83, 1
  %85 = load %struct.adapter*, %struct.adapter** %5, align 8
  %86 = getelementptr inbounds %struct.adapter, %struct.adapter* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @A_SG_FLTHRESHOLD, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @writel(i64 %84, i64 %89)
  %91 = load %struct.adapter*, %struct.adapter** %5, align 8
  %92 = load %struct.sge*, %struct.sge** %3, align 8
  %93 = getelementptr inbounds %struct.sge, %struct.sge* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.sge*, %struct.sge** %3, align 8
  %97 = getelementptr inbounds %struct.sge, %struct.sge* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @A_SG_RSPBASELWR, align 4
  %101 = load i32, i32* @A_SG_RSPBASEUPR, align 4
  %102 = load i32, i32* @A_SG_RSPSIZE, align 4
  %103 = call i32 @setup_ring_params(%struct.adapter* %91, i32 %95, i64 %99, i32 %100, i32 %101, i32 %102)
  %104 = load %struct.sge*, %struct.sge** %3, align 8
  %105 = getelementptr inbounds %struct.sge, %struct.sge* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %107, 1
  %109 = load %struct.adapter*, %struct.adapter** %5, align 8
  %110 = getelementptr inbounds %struct.adapter, %struct.adapter* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @A_SG_RSPQUEUECREDIT, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @writel(i64 %108, i64 %113)
  %115 = load i32, i32* @F_CMDQ0_ENABLE, align 4
  %116 = load i32, i32* @F_CMDQ1_ENABLE, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @F_FL0_ENABLE, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @F_FL1_ENABLE, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @F_CPL_ENABLE, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @F_RESPONSE_QUEUE_ENABLE, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @V_CMDQ_PRIORITY(i32 2)
  %127 = or i32 %125, %126
  %128 = load i32, i32* @F_DISABLE_CMDQ1_GTS, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @F_ISCSI_COALESCE, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.sge*, %struct.sge** %3, align 8
  %133 = getelementptr inbounds %struct.sge, %struct.sge* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @V_RX_PKT_OFFSET(i32 %134)
  %136 = or i32 %131, %135
  %137 = load %struct.sge*, %struct.sge** %3, align 8
  %138 = getelementptr inbounds %struct.sge, %struct.sge* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* @SGE_INTRTIMER_NRES, align 4
  %140 = load %struct.adapter*, %struct.adapter** %5, align 8
  %141 = call i32 @core_ticks_per_usec(%struct.adapter* %140)
  %142 = mul nsw i32 %139, %141
  %143 = load %struct.sge*, %struct.sge** %3, align 8
  %144 = getelementptr inbounds %struct.sge, %struct.sge* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.sge*, %struct.sge** %3, align 8
  %146 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %147 = call i32 @t1_sge_set_coalesce_params(%struct.sge* %145, %struct.sge_params* %146)
  ret void
}

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @setup_ring_params(%struct.adapter*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @V_CMDQ_PRIORITY(i32) #1

declare dso_local i32 @V_RX_PKT_OFFSET(i32) #1

declare dso_local i32 @core_ticks_per_usec(%struct.adapter*) #1

declare dso_local i32 @t1_sge_set_coalesce_params(%struct.sge*, %struct.sge_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
