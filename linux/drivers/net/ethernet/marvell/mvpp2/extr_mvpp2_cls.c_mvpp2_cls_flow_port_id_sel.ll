; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_flow_port_id_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_flow_port_id_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_cls_flow_entry = type { i32* }

@MVPP2_CLS_FLOW_TBL0_PORT_ID_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_cls_flow_entry*, i32)* @mvpp2_cls_flow_port_id_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_cls_flow_port_id_sel(%struct.mvpp2_cls_flow_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.mvpp2_cls_flow_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.mvpp2_cls_flow_entry* %0, %struct.mvpp2_cls_flow_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load i32, i32* @MVPP2_CLS_FLOW_TBL0_PORT_ID_SEL, align 4
  %9 = load %struct.mvpp2_cls_flow_entry*, %struct.mvpp2_cls_flow_entry** %3, align 8
  %10 = getelementptr inbounds %struct.mvpp2_cls_flow_entry, %struct.mvpp2_cls_flow_entry* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %8
  store i32 %14, i32* %12, align 4
  br label %24

15:                                               ; preds = %2
  %16 = load i32, i32* @MVPP2_CLS_FLOW_TBL0_PORT_ID_SEL, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.mvpp2_cls_flow_entry*, %struct.mvpp2_cls_flow_entry** %3, align 8
  %19 = getelementptr inbounds %struct.mvpp2_cls_flow_entry, %struct.mvpp2_cls_flow_entry* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %17
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %15, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
