; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_map_command.c_rmnet_map_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_map_command.c_rmnet_map_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rmnet_port = type { i32 }
%struct.rmnet_map_control_command = type { i8 }

@RMNET_MAP_COMMAND_UNSUPPORTED = common dso_local global i8 0, align 1
@RMNET_MAP_COMMAND_ACK = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rmnet_map_command(%struct.sk_buff* %0, %struct.rmnet_port* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.rmnet_port*, align 8
  %5 = alloca %struct.rmnet_map_control_command*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.rmnet_port* %1, %struct.rmnet_port** %4, align 8
  store i8 0, i8* %7, align 1
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call %struct.rmnet_map_control_command* @RMNET_MAP_GET_CMD_START(%struct.sk_buff* %8)
  store %struct.rmnet_map_control_command* %9, %struct.rmnet_map_control_command** %5, align 8
  %10 = load %struct.rmnet_map_control_command*, %struct.rmnet_map_control_command** %5, align 8
  %11 = getelementptr inbounds %struct.rmnet_map_control_command, %struct.rmnet_map_control_command* %10, i32 0, i32 0
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %6, align 1
  %13 = load i8, i8* %6, align 1
  %14 = zext i8 %13 to i32
  switch i32 %14, label %23 [
    i32 128, label %15
    i32 129, label %19
  ]

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = load %struct.rmnet_port*, %struct.rmnet_port** %4, align 8
  %18 = call zeroext i8 @rmnet_map_do_flow_control(%struct.sk_buff* %16, %struct.rmnet_port* %17, i32 1)
  store i8 %18, i8* %7, align 1
  br label %27

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = load %struct.rmnet_port*, %struct.rmnet_port** %4, align 8
  %22 = call zeroext i8 @rmnet_map_do_flow_control(%struct.sk_buff* %20, %struct.rmnet_port* %21, i32 0)
  store i8 %22, i8* %7, align 1
  br label %27

23:                                               ; preds = %2
  %24 = load i8, i8* @RMNET_MAP_COMMAND_UNSUPPORTED, align 1
  store i8 %24, i8* %7, align 1
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = call i32 @kfree_skb(%struct.sk_buff* %25)
  br label %27

27:                                               ; preds = %23, %19, %15
  %28 = load i8, i8* %7, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @RMNET_MAP_COMMAND_ACK, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = load i8, i8* %7, align 1
  %36 = load %struct.rmnet_port*, %struct.rmnet_port** %4, align 8
  %37 = call i32 @rmnet_map_send_ack(%struct.sk_buff* %34, i8 zeroext %35, %struct.rmnet_port* %36)
  br label %38

38:                                               ; preds = %33, %27
  ret void
}

declare dso_local %struct.rmnet_map_control_command* @RMNET_MAP_GET_CMD_START(%struct.sk_buff*) #1

declare dso_local zeroext i8 @rmnet_map_do_flow_control(%struct.sk_buff*, %struct.rmnet_port*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rmnet_map_send_ack(%struct.sk_buff*, i8 zeroext, %struct.rmnet_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
