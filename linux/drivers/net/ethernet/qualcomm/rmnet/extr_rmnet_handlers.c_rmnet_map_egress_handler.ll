; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_handlers.c_rmnet_map_egress_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_handlers.c_rmnet_map_egress_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rmnet_port = type { i32 }
%struct.net_device = type { i32 }
%struct.rmnet_map_header = type { i32 }

@RMNET_FLAGS_EGRESS_MAP_CKSUMV4 = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_P_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.rmnet_port*, i32, %struct.net_device*)* @rmnet_map_egress_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmnet_map_egress_handler(%struct.sk_buff* %0, %struct.rmnet_port* %1, i32 %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rmnet_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rmnet_map_header*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.rmnet_port* %1, %struct.rmnet_port** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 4, i32* %10, align 4
  %13 = load %struct.rmnet_port*, %struct.rmnet_port** %7, align 8
  %14 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RMNET_FLAGS_EGRESS_MAP_CKSUMV4, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  store i32 4, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %19, %4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i32 @skb_headroom(%struct.sk_buff* %24)
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call i64 @pskb_expand_head(%struct.sk_buff* %29, i32 %30, i32 0, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %66

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %23
  %39 = load %struct.rmnet_port*, %struct.rmnet_port** %7, align 8
  %40 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RMNET_FLAGS_EGRESS_MAP_CKSUMV4, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = load %struct.net_device*, %struct.net_device** %9, align 8
  %48 = call i32 @rmnet_map_checksum_uplink_packet(%struct.sk_buff* %46, %struct.net_device* %47)
  br label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call %struct.rmnet_map_header* @rmnet_map_add_map_header(%struct.sk_buff* %50, i32 %51, i32 0)
  store %struct.rmnet_map_header* %52, %struct.rmnet_map_header** %12, align 8
  %53 = load %struct.rmnet_map_header*, %struct.rmnet_map_header** %12, align 8
  %54 = icmp ne %struct.rmnet_map_header* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %66

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.rmnet_map_header*, %struct.rmnet_map_header** %12, align 8
  %61 = getelementptr inbounds %struct.rmnet_map_header, %struct.rmnet_map_header* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @ETH_P_MAP, align 4
  %63 = call i32 @htons(i32 %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %58, %55, %34
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @rmnet_map_checksum_uplink_packet(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local %struct.rmnet_map_header* @rmnet_map_add_map_header(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
