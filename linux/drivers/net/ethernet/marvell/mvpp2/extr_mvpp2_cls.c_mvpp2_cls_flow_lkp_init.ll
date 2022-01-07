; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_flow_lkp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_flow_lkp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }
%struct.mvpp2_cls_flow = type { i32 }
%struct.mvpp2_cls_lookup_entry = type { i32, i32, i64 }

@MVPP2_CLS_LKP_TBL_LOOKUP_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2*, %struct.mvpp2_cls_flow*)* @mvpp2_cls_flow_lkp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_cls_flow_lkp_init(%struct.mvpp2* %0, %struct.mvpp2_cls_flow* %1) #0 {
  %3 = alloca %struct.mvpp2*, align 8
  %4 = alloca %struct.mvpp2_cls_flow*, align 8
  %5 = alloca %struct.mvpp2_cls_lookup_entry, align 8
  store %struct.mvpp2* %0, %struct.mvpp2** %3, align 8
  store %struct.mvpp2_cls_flow* %1, %struct.mvpp2_cls_flow** %4, align 8
  %6 = getelementptr inbounds %struct.mvpp2_cls_lookup_entry, %struct.mvpp2_cls_lookup_entry* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = load %struct.mvpp2_cls_flow*, %struct.mvpp2_cls_flow** %4, align 8
  %8 = getelementptr inbounds %struct.mvpp2_cls_flow, %struct.mvpp2_cls_flow* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.mvpp2_cls_lookup_entry, %struct.mvpp2_cls_lookup_entry* %5, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.mvpp2_cls_lookup_entry, %struct.mvpp2_cls_lookup_entry* %5, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.mvpp2_cls_flow*, %struct.mvpp2_cls_flow** %4, align 8
  %13 = getelementptr inbounds %struct.mvpp2_cls_flow, %struct.mvpp2_cls_flow* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @MVPP2_CLS_FLT_FIRST(i32 %14)
  %16 = call i32 @MVPP2_CLS_LKP_FLOW_PTR(i32 %15)
  %17 = getelementptr inbounds %struct.mvpp2_cls_lookup_entry, %struct.mvpp2_cls_lookup_entry* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %16
  store i32 %19, i32* %17, align 8
  %20 = load i32, i32* @MVPP2_CLS_LKP_TBL_LOOKUP_EN_MASK, align 4
  %21 = getelementptr inbounds %struct.mvpp2_cls_lookup_entry, %struct.mvpp2_cls_lookup_entry* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 8
  %24 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %25 = call i32 @mvpp2_cls_lookup_write(%struct.mvpp2* %24, %struct.mvpp2_cls_lookup_entry* %5)
  ret void
}

declare dso_local i32 @MVPP2_CLS_LKP_FLOW_PTR(i32) #1

declare dso_local i32 @MVPP2_CLS_FLT_FIRST(i32) #1

declare dso_local i32 @mvpp2_cls_lookup_write(%struct.mvpp2*, %struct.mvpp2_cls_lookup_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
