; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_configure_filter_smac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_configure_filter_smac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.filter_entry = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TF_CCTRL_CWR_S = common dso_local global i32 0, align 4
@TCB_SMAC_SEL_W = common dso_local global i32 0, align 4
@TCB_SMAC_SEL_M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"filter %u smac config failed with error %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.filter_entry*)* @configure_filter_smac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_filter_smac(%struct.adapter* %0, %struct.filter_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.filter_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.filter_entry* %1, %struct.filter_entry** %5, align 8
  %7 = load %struct.adapter*, %struct.adapter** %4, align 8
  %8 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %9 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %10 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TF_CCTRL_CWR_S, align 4
  %13 = call i32 @set_tcb_tflag(%struct.adapter* %7, %struct.filter_entry* %8, i32 %11, i32 %12, i32 1, i32 1)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %37

17:                                               ; preds = %2
  %18 = load %struct.adapter*, %struct.adapter** %4, align 8
  %19 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %20 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %21 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @TCB_SMAC_SEL_W, align 4
  %24 = load i32, i32* @TCB_SMAC_SEL_M, align 4
  %25 = call i32 @TCB_SMAC_SEL_V(i32 %24)
  %26 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %27 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @TCB_SMAC_SEL_V(i32 %30)
  %32 = call i32 @set_tcb_field(%struct.adapter* %18, %struct.filter_entry* %19, i32 %22, i32 %23, i32 %25, i32 %31, i32 1)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %47

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %36, %16
  %38 = load %struct.adapter*, %struct.adapter** %4, align 8
  %39 = getelementptr inbounds %struct.adapter, %struct.adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %42 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %37, %35
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @set_tcb_tflag(%struct.adapter*, %struct.filter_entry*, i32, i32, i32, i32) #1

declare dso_local i32 @set_tcb_field(%struct.adapter*, %struct.filter_entry*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TCB_SMAC_SEL_V(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
