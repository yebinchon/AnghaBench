; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_port_init_flows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_port_init_flows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }
%struct.mvpp2_cls_flow = type { i32 }

@MVPP2_N_PRS_FLOWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2*)* @mvpp2_cls_port_init_flows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_cls_port_init_flows(%struct.mvpp2* %0) #0 {
  %2 = alloca %struct.mvpp2*, align 8
  %3 = alloca %struct.mvpp2_cls_flow*, align 8
  %4 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @MVPP2_N_PRS_FLOWS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.mvpp2_cls_flow* @mvpp2_cls_flow_get(i32 %10)
  store %struct.mvpp2_cls_flow* %11, %struct.mvpp2_cls_flow** %3, align 8
  %12 = load %struct.mvpp2_cls_flow*, %struct.mvpp2_cls_flow** %3, align 8
  %13 = icmp ne %struct.mvpp2_cls_flow* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %28

15:                                               ; preds = %9
  %16 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %17 = load %struct.mvpp2_cls_flow*, %struct.mvpp2_cls_flow** %3, align 8
  %18 = call i32 @mvpp2_cls_flow_prs_init(%struct.mvpp2* %16, %struct.mvpp2_cls_flow* %17)
  %19 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %20 = load %struct.mvpp2_cls_flow*, %struct.mvpp2_cls_flow** %3, align 8
  %21 = call i32 @mvpp2_cls_flow_lkp_init(%struct.mvpp2* %19, %struct.mvpp2_cls_flow* %20)
  %22 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %23 = load %struct.mvpp2_cls_flow*, %struct.mvpp2_cls_flow** %3, align 8
  %24 = call i32 @mvpp2_cls_flow_init(%struct.mvpp2* %22, %struct.mvpp2_cls_flow* %23)
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %5

28:                                               ; preds = %14, %5
  ret void
}

declare dso_local %struct.mvpp2_cls_flow* @mvpp2_cls_flow_get(i32) #1

declare dso_local i32 @mvpp2_cls_flow_prs_init(%struct.mvpp2*, %struct.mvpp2_cls_flow*) #1

declare dso_local i32 @mvpp2_cls_flow_lkp_init(%struct.mvpp2*, %struct.mvpp2_cls_flow*) #1

declare dso_local i32 @mvpp2_cls_flow_init(%struct.mvpp2*, %struct.mvpp2_cls_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
