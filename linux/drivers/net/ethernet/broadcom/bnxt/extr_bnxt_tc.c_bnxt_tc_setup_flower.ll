; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_setup_flower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_setup_flower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.flow_cls_offload = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_tc_setup_flower(%struct.bnxt* %0, i32 %1, %struct.flow_cls_offload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.flow_cls_offload*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %7, align 8
  %8 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %9 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %24 [
    i32 129, label %11
    i32 130, label %16
    i32 128, label %20
  ]

11:                                               ; preds = %3
  %12 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %15 = call i32 @bnxt_tc_add_flow(%struct.bnxt* %12, i32 %13, %struct.flow_cls_offload* %14)
  store i32 %15, i32* %4, align 4
  br label %27

16:                                               ; preds = %3
  %17 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %18 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %19 = call i32 @bnxt_tc_del_flow(%struct.bnxt* %17, %struct.flow_cls_offload* %18)
  store i32 %19, i32* %4, align 4
  br label %27

20:                                               ; preds = %3
  %21 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %22 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %23 = call i32 @bnxt_tc_get_flow_stats(%struct.bnxt* %21, %struct.flow_cls_offload* %22)
  store i32 %23, i32* %4, align 4
  br label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %20, %16, %11
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @bnxt_tc_add_flow(%struct.bnxt*, i32, %struct.flow_cls_offload*) #1

declare dso_local i32 @bnxt_tc_del_flow(%struct.bnxt*, %struct.flow_cls_offload*) #1

declare dso_local i32 @bnxt_tc_get_flow_stats(%struct.bnxt*, %struct.flow_cls_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
