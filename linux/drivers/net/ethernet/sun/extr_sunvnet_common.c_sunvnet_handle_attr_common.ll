; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_sunvnet_handle_attr_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_sunvnet_handle_attr_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i32 }
%struct.vio_net_attr_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ECONNRESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sunvnet_handle_attr_common(%struct.vio_driver_state* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_driver_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vio_net_attr_info*, align 8
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.vio_net_attr_info*
  store %struct.vio_net_attr_info* %8, %struct.vio_net_attr_info** %6, align 8
  %9 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %6, align 8
  %10 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %25 [
    i32 129, label %13
    i32 130, label %17
    i32 128, label %21
  ]

13:                                               ; preds = %2
  %14 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %15 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %6, align 8
  %16 = call i32 @handle_attr_info(%struct.vio_driver_state* %14, %struct.vio_net_attr_info* %15)
  store i32 %16, i32* %3, align 4
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %19 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %6, align 8
  %20 = call i32 @handle_attr_ack(%struct.vio_driver_state* %18, %struct.vio_net_attr_info* %19)
  store i32 %20, i32* %3, align 4
  br label %28

21:                                               ; preds = %2
  %22 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %23 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %6, align 8
  %24 = call i32 @handle_attr_nack(%struct.vio_driver_state* %22, %struct.vio_net_attr_info* %23)
  store i32 %24, i32* %3, align 4
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @ECONNRESET, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %21, %17, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @handle_attr_info(%struct.vio_driver_state*, %struct.vio_net_attr_info*) #1

declare dso_local i32 @handle_attr_ack(%struct.vio_driver_state*, %struct.vio_net_attr_info*) #1

declare dso_local i32 @handle_attr_nack(%struct.vio_driver_state*, %struct.vio_net_attr_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
