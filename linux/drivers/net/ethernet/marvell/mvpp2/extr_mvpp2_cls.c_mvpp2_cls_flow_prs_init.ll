; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_flow_prs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_flow_prs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }
%struct.mvpp2_cls_flow = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2*, %struct.mvpp2_cls_flow*)* @mvpp2_cls_flow_prs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_cls_flow_prs_init(%struct.mvpp2* %0, %struct.mvpp2_cls_flow* %1) #0 {
  %3 = alloca %struct.mvpp2*, align 8
  %4 = alloca %struct.mvpp2_cls_flow*, align 8
  store %struct.mvpp2* %0, %struct.mvpp2** %3, align 8
  store %struct.mvpp2_cls_flow* %1, %struct.mvpp2_cls_flow** %4, align 8
  %5 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %6 = load %struct.mvpp2_cls_flow*, %struct.mvpp2_cls_flow** %4, align 8
  %7 = getelementptr inbounds %struct.mvpp2_cls_flow, %struct.mvpp2_cls_flow* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.mvpp2_cls_flow*, %struct.mvpp2_cls_flow** %4, align 8
  %10 = getelementptr inbounds %struct.mvpp2_cls_flow, %struct.mvpp2_cls_flow* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mvpp2_cls_flow*, %struct.mvpp2_cls_flow** %4, align 8
  %14 = getelementptr inbounds %struct.mvpp2_cls_flow, %struct.mvpp2_cls_flow* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mvpp2_prs_add_flow(%struct.mvpp2* %5, i32 %8, i32 %12, i32 %16)
  ret void
}

declare dso_local i32 @mvpp2_prs_add_flow(%struct.mvpp2*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
