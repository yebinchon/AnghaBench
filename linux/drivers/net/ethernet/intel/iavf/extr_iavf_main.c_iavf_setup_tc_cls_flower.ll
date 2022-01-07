; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_setup_tc_cls_flower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_setup_tc_cls_flower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32 }
%struct.flow_cls_offload = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_adapter*, %struct.flow_cls_offload*)* @iavf_setup_tc_cls_flower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_setup_tc_cls_flower(%struct.iavf_adapter* %0, %struct.flow_cls_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iavf_adapter*, align 8
  %5 = alloca %struct.flow_cls_offload*, align 8
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %4, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %5, align 8
  %6 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %7 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %32

14:                                               ; preds = %2
  %15 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %16 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %29 [
    i32 129, label %18
    i32 130, label %22
    i32 128, label %26
  ]

18:                                               ; preds = %14
  %19 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %20 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %21 = call i32 @iavf_configure_clsflower(%struct.iavf_adapter* %19, %struct.flow_cls_offload* %20)
  store i32 %21, i32* %3, align 4
  br label %32

22:                                               ; preds = %14
  %23 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %24 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %25 = call i32 @iavf_delete_clsflower(%struct.iavf_adapter* %23, %struct.flow_cls_offload* %24)
  store i32 %25, i32* %3, align 4
  br label %32

26:                                               ; preds = %14
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %32

29:                                               ; preds = %14
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %26, %22, %18, %11
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @iavf_configure_clsflower(%struct.iavf_adapter*, %struct.flow_cls_offload*) #1

declare dso_local i32 @iavf_delete_clsflower(%struct.iavf_adapter*, %struct.flow_cls_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
