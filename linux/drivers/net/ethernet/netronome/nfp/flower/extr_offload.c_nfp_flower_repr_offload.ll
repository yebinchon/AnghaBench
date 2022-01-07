; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_repr_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_repr_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.net_device = type { i32 }
%struct.flow_cls_offload = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.net_device*, %struct.flow_cls_offload*)* @nfp_flower_repr_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_repr_offload(%struct.nfp_app* %0, %struct.net_device* %1, %struct.flow_cls_offload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.flow_cls_offload*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %7, align 8
  %8 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %9 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @eth_proto_is_802_3(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %39

17:                                               ; preds = %3
  %18 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %19 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %36 [
    i32 129, label %21
    i32 130, label %26
    i32 128, label %31
  ]

21:                                               ; preds = %17
  %22 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %25 = call i32 @nfp_flower_add_offload(%struct.nfp_app* %22, %struct.net_device* %23, %struct.flow_cls_offload* %24)
  store i32 %25, i32* %4, align 4
  br label %39

26:                                               ; preds = %17
  %27 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %30 = call i32 @nfp_flower_del_offload(%struct.nfp_app* %27, %struct.net_device* %28, %struct.flow_cls_offload* %29)
  store i32 %30, i32* %4, align 4
  br label %39

31:                                               ; preds = %17
  %32 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %35 = call i32 @nfp_flower_get_stats(%struct.nfp_app* %32, %struct.net_device* %33, %struct.flow_cls_offload* %34)
  store i32 %35, i32* %4, align 4
  br label %39

36:                                               ; preds = %17
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %31, %26, %21, %14
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @eth_proto_is_802_3(i32) #1

declare dso_local i32 @nfp_flower_add_offload(%struct.nfp_app*, %struct.net_device*, %struct.flow_cls_offload*) #1

declare dso_local i32 @nfp_flower_del_offload(%struct.nfp_app*, %struct.net_device*, %struct.flow_cls_offload*) #1

declare dso_local i32 @nfp_flower_get_stats(%struct.nfp_app*, %struct.net_device*, %struct.flow_cls_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
