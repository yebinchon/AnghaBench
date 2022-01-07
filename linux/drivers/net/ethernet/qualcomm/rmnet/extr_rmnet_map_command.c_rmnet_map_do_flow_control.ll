; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_map_command.c_rmnet_map_do_flow_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_map_command.c_rmnet_map_do_flow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rmnet_port = type { i32 }
%struct.rmnet_endpoint = type { %struct.net_device* }
%struct.net_device = type { i32 }

@RMNET_MAX_LOGICAL_EP = common dso_local global i64 0, align 8
@RX_HANDLER_CONSUMED = common dso_local global i64 0, align 8
@RMNET_MAP_COMMAND_UNSUPPORTED = common dso_local global i64 0, align 8
@RMNET_MAP_COMMAND_ACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sk_buff*, %struct.rmnet_port*, i32)* @rmnet_map_do_flow_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rmnet_map_do_flow_control(%struct.sk_buff* %0, %struct.rmnet_port* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rmnet_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rmnet_endpoint*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.rmnet_port* %1, %struct.rmnet_port** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call i64 @RMNET_MAP_GET_MUX_ID(%struct.sk_buff* %12)
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* @RMNET_MAX_LOGICAL_EP, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call i32 @kfree_skb(%struct.sk_buff* %18)
  %20 = load i64, i64* @RX_HANDLER_CONSUMED, align 8
  store i64 %20, i64* %4, align 8
  br label %46

21:                                               ; preds = %3
  %22 = load %struct.rmnet_port*, %struct.rmnet_port** %6, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call %struct.rmnet_endpoint* @rmnet_get_endpoint(%struct.rmnet_port* %22, i64 %23)
  store %struct.rmnet_endpoint* %24, %struct.rmnet_endpoint** %8, align 8
  %25 = load %struct.rmnet_endpoint*, %struct.rmnet_endpoint** %8, align 8
  %26 = icmp ne %struct.rmnet_endpoint* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @kfree_skb(%struct.sk_buff* %28)
  %30 = load i64, i64* @RX_HANDLER_CONSUMED, align 8
  store i64 %30, i64* %4, align 8
  br label %46

31:                                               ; preds = %21
  %32 = load %struct.rmnet_endpoint*, %struct.rmnet_endpoint** %8, align 8
  %33 = getelementptr inbounds %struct.rmnet_endpoint, %struct.rmnet_endpoint* %32, i32 0, i32 0
  %34 = load %struct.net_device*, %struct.net_device** %33, align 8
  store %struct.net_device* %34, %struct.net_device** %9, align 8
  %35 = load %struct.net_device*, %struct.net_device** %9, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @rmnet_vnd_do_flow_control(%struct.net_device* %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @kfree_skb(%struct.sk_buff* %41)
  %43 = load i64, i64* @RMNET_MAP_COMMAND_UNSUPPORTED, align 8
  store i64 %43, i64* %4, align 8
  br label %46

44:                                               ; preds = %31
  %45 = load i64, i64* @RMNET_MAP_COMMAND_ACK, align 8
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %44, %40, %27, %17
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

declare dso_local i64 @RMNET_MAP_GET_MUX_ID(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.rmnet_endpoint* @rmnet_get_endpoint(%struct.rmnet_port*, i64) #1

declare dso_local i32 @rmnet_vnd_do_flow_control(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
