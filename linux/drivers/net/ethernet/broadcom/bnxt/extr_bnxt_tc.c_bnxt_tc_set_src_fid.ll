; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_set_src_fid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_set_src_fid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bnxt_tc_flow = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BNXT_TC_ACTION_FLAG_TUNNEL_DECAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, %struct.bnxt_tc_flow*, i32)* @bnxt_tc_set_src_fid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_tc_set_src_fid(%struct.bnxt* %0, %struct.bnxt_tc_flow* %1, i32 %2) #0 {
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca %struct.bnxt_tc_flow*, align 8
  %6 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store %struct.bnxt_tc_flow* %1, %struct.bnxt_tc_flow** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %5, align 8
  %8 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BNXT_TC_ACTION_FLAG_TUNNEL_DECAP, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %16 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %5, align 8
  %20 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %25

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %5, align 8
  %24 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
