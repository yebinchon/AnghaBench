; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_is_new_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_is_new_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsp_ctrl = type { i32 }
%struct.sge_rspq = type { i32 }

@RSPD_GEN_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsp_ctrl*, %struct.sge_rspq*)* @is_new_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_new_response(%struct.rsp_ctrl* %0, %struct.sge_rspq* %1) #0 {
  %3 = alloca %struct.rsp_ctrl*, align 8
  %4 = alloca %struct.sge_rspq*, align 8
  store %struct.rsp_ctrl* %0, %struct.rsp_ctrl** %3, align 8
  store %struct.sge_rspq* %1, %struct.sge_rspq** %4, align 8
  %5 = load %struct.rsp_ctrl*, %struct.rsp_ctrl** %3, align 8
  %6 = getelementptr inbounds %struct.rsp_ctrl, %struct.rsp_ctrl* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @RSPD_GEN_S, align 4
  %9 = ashr i32 %7, %8
  %10 = and i32 %9, 1
  %11 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %12 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %10, %13
  %15 = zext i1 %14 to i32
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
