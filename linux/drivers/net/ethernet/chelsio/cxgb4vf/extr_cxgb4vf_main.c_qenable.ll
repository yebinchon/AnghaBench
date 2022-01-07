; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_qenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_qenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_rspq = type { i32, i32, i32, i32 }

@T4VF_SGE_BASE_ADDR = common dso_local global i64 0, align 8
@SGE_VF_GTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge_rspq*)* @qenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qenable(%struct.sge_rspq* %0) #0 {
  %2 = alloca %struct.sge_rspq*, align 8
  store %struct.sge_rspq* %0, %struct.sge_rspq** %2, align 8
  %3 = load %struct.sge_rspq*, %struct.sge_rspq** %2, align 8
  %4 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %3, i32 0, i32 3
  %5 = call i32 @napi_enable(i32* %4)
  %6 = load %struct.sge_rspq*, %struct.sge_rspq** %2, align 8
  %7 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i64, i64* @T4VF_SGE_BASE_ADDR, align 8
  %10 = load i64, i64* @SGE_VF_GTS, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @CIDXINC_V(i32 0)
  %13 = load %struct.sge_rspq*, %struct.sge_rspq** %2, align 8
  %14 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @SEINTARM_V(i32 %15)
  %17 = or i32 %12, %16
  %18 = load %struct.sge_rspq*, %struct.sge_rspq** %2, align 8
  %19 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @INGRESSQID_V(i32 %20)
  %22 = or i32 %17, %21
  %23 = call i32 @t4_write_reg(i32 %8, i64 %11, i32 %22)
  ret void
}

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @t4_write_reg(i32, i64, i32) #1

declare dso_local i32 @CIDXINC_V(i32) #1

declare dso_local i32 @SEINTARM_V(i32) #1

declare dso_local i32 @INGRESSQID_V(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
