; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_handlers.c___rmnet_map_ingress_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_handlers.c___rmnet_map_ingress_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.rmnet_port = type { i32 }
%struct.rmnet_endpoint = type { i32 }

@RMNET_FLAGS_INGRESS_MAP_COMMANDS = common dso_local global i32 0, align 4
@RMNET_MAX_LOGICAL_EP = common dso_local global i64 0, align 8
@RMNET_FLAGS_INGRESS_MAP_CKSUMV4 = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.rmnet_port*)* @__rmnet_map_ingress_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rmnet_map_ingress_handler(%struct.sk_buff* %0, %struct.rmnet_port* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.rmnet_port*, align 8
  %5 = alloca %struct.rmnet_endpoint*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.rmnet_port* %1, %struct.rmnet_port** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call i64 @RMNET_MAP_GET_CD_BIT(%struct.sk_buff* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.rmnet_port*, %struct.rmnet_port** %4, align 8
  %14 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RMNET_FLAGS_INGRESS_MAP_COMMANDS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = load %struct.rmnet_port*, %struct.rmnet_port** %4, align 8
  call void @rmnet_map_command(%struct.sk_buff* %20, %struct.rmnet_port* %21)
  br label %80

22:                                               ; preds = %12
  br label %77

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = call i64 @RMNET_MAP_GET_MUX_ID(%struct.sk_buff* %24)
  store i64 %25, i64* %8, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = call i64 @RMNET_MAP_GET_PAD(%struct.sk_buff* %26)
  store i64 %27, i64* %7, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call i64 @RMNET_MAP_GET_LENGTH(%struct.sk_buff* %28)
  %30 = load i64, i64* %7, align 8
  %31 = sub nsw i64 %29, %30
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @RMNET_MAX_LOGICAL_EP, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %77

36:                                               ; preds = %23
  %37 = load %struct.rmnet_port*, %struct.rmnet_port** %4, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call %struct.rmnet_endpoint* @rmnet_get_endpoint(%struct.rmnet_port* %37, i64 %38)
  store %struct.rmnet_endpoint* %39, %struct.rmnet_endpoint** %5, align 8
  %40 = load %struct.rmnet_endpoint*, %struct.rmnet_endpoint** %5, align 8
  %41 = icmp ne %struct.rmnet_endpoint* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %77

43:                                               ; preds = %36
  %44 = load %struct.rmnet_endpoint*, %struct.rmnet_endpoint** %5, align 8
  %45 = getelementptr inbounds %struct.rmnet_endpoint, %struct.rmnet_endpoint* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = call i32 @skb_pull(%struct.sk_buff* %49, i32 4)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = call i32 @rmnet_set_skb_proto(%struct.sk_buff* %51)
  %53 = load %struct.rmnet_port*, %struct.rmnet_port** %4, align 8
  %54 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @RMNET_FLAGS_INGRESS_MAP_CKSUMV4, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %43
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @rmnet_map_checksum_downlink_packet(%struct.sk_buff* %60, i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %59
  br label %71

71:                                               ; preds = %70, %43
  %72 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @skb_trim(%struct.sk_buff* %72, i64 %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %76 = call i32 @rmnet_deliver_skb(%struct.sk_buff* %75)
  br label %80

77:                                               ; preds = %42, %35, %22
  %78 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %79 = call i32 @kfree_skb(%struct.sk_buff* %78)
  br label %80

80:                                               ; preds = %77, %71, %19
  ret void
}

declare dso_local i64 @RMNET_MAP_GET_CD_BIT(%struct.sk_buff*) #1

declare dso_local void @rmnet_map_command(%struct.sk_buff*, %struct.rmnet_port*) #1

declare dso_local i64 @RMNET_MAP_GET_MUX_ID(%struct.sk_buff*) #1

declare dso_local i64 @RMNET_MAP_GET_PAD(%struct.sk_buff*) #1

declare dso_local i64 @RMNET_MAP_GET_LENGTH(%struct.sk_buff*) #1

declare dso_local %struct.rmnet_endpoint* @rmnet_get_endpoint(%struct.rmnet_port*, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @rmnet_set_skb_proto(%struct.sk_buff*) #1

declare dso_local i32 @rmnet_map_checksum_downlink_packet(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @rmnet_deliver_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
