; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_set_flower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_set_flower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32 }
%struct.flow_cls_offload = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, %struct.flow_cls_offload*, i32)* @qede_set_flower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_set_flower(%struct.qede_dev* %0, %struct.flow_cls_offload* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qede_dev*, align 8
  %6 = alloca %struct.flow_cls_offload*, align 8
  %7 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %5, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %9 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %22 [
    i32 128, label %11
    i32 129, label %16
  ]

11:                                               ; preds = %3
  %12 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %15 = call i32 @qede_add_tc_flower_fltr(%struct.qede_dev* %12, i32 %13, %struct.flow_cls_offload* %14)
  store i32 %15, i32* %4, align 4
  br label %25

16:                                               ; preds = %3
  %17 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %18 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %19 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @qede_delete_flow_filter(%struct.qede_dev* %17, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %16, %11
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @qede_add_tc_flower_fltr(%struct.qede_dev*, i32, %struct.flow_cls_offload*) #1

declare dso_local i32 @qede_delete_flow_filter(%struct.qede_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
