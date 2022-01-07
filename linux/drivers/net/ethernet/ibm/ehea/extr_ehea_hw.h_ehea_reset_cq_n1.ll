; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_hw.h_ehea_reset_cq_n1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_hw.h_ehea_reset_cq_n1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_cq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.h_epa }
%struct.h_epa = type { i32 }

@cqx_n1 = common dso_local global i32 0, align 4
@CQX_N1_GENERATE_COMP_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehea_cq*)* @ehea_reset_cq_n1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_reset_cq_n1(%struct.ehea_cq* %0) #0 {
  %2 = alloca %struct.ehea_cq*, align 8
  %3 = alloca %struct.h_epa, align 4
  store %struct.ehea_cq* %0, %struct.ehea_cq** %2, align 8
  %4 = load %struct.ehea_cq*, %struct.ehea_cq** %2, align 8
  %5 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = bitcast %struct.h_epa* %3 to i8*
  %8 = bitcast %struct.h_epa* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 4, i1 false)
  %9 = load i32, i32* @cqx_n1, align 4
  %10 = load i32, i32* @CQX_N1_GENERATE_COMP_EVENT, align 4
  %11 = call i32 @EHEA_BMASK_SET(i32 %10, i32 1)
  %12 = getelementptr inbounds %struct.h_epa, %struct.h_epa* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @epa_store_cq(i32 %13, i32 %9, i32 %11)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @epa_store_cq(i32, i32, i32) #2

declare dso_local i32 @EHEA_BMASK_SET(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
