; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_flow_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_flow_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_cls_flow = type { i32 }

@MVPP2_N_PRS_FLOWS = common dso_local global i32 0, align 4
@cls_flows = common dso_local global %struct.mvpp2_cls_flow* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mvpp2_cls_flow* @mvpp2_cls_flow_get(i32 %0) #0 {
  %2 = alloca %struct.mvpp2_cls_flow*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @MVPP2_N_PRS_FLOWS, align 4
  %6 = icmp sge i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.mvpp2_cls_flow* null, %struct.mvpp2_cls_flow** %2, align 8
  br label %13

8:                                                ; preds = %1
  %9 = load %struct.mvpp2_cls_flow*, %struct.mvpp2_cls_flow** @cls_flows, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.mvpp2_cls_flow, %struct.mvpp2_cls_flow* %9, i64 %11
  store %struct.mvpp2_cls_flow* %12, %struct.mvpp2_cls_flow** %2, align 8
  br label %13

13:                                               ; preds = %8, %7
  %14 = load %struct.mvpp2_cls_flow*, %struct.mvpp2_cls_flow** %2, align 8
  ret %struct.mvpp2_cls_flow* %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
