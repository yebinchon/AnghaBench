; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_cmsg.c_nfp_flower_cmsg_mac_repr_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_cmsg.c_nfp_flower_cmsg_mac_repr_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nfp_app = type { i32 }
%struct.nfp_flower_cmsg_mac_repr = type { i32, i32 }

@ports = common dso_local global i32 0, align 4
@NFP_FLOWER_CMSG_TYPE_MAC_REPR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @nfp_flower_cmsg_mac_repr_start(%struct.nfp_app* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_flower_cmsg_mac_repr*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %9 = load %struct.nfp_flower_cmsg_mac_repr*, %struct.nfp_flower_cmsg_mac_repr** %6, align 8
  %10 = load i32, i32* @ports, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @struct_size(%struct.nfp_flower_cmsg_mac_repr* %9, i32 %10, i32 %11)
  %13 = load i32, i32* @NFP_FLOWER_CMSG_TYPE_MAC_REPR, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.sk_buff* @nfp_flower_cmsg_alloc(%struct.nfp_app* %8, i32 %12, i32 %13, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %30

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = call %struct.nfp_flower_cmsg_mac_repr* @nfp_flower_cmsg_get_data(%struct.sk_buff* %20)
  store %struct.nfp_flower_cmsg_mac_repr* %21, %struct.nfp_flower_cmsg_mac_repr** %6, align 8
  %22 = load %struct.nfp_flower_cmsg_mac_repr*, %struct.nfp_flower_cmsg_mac_repr** %6, align 8
  %23 = getelementptr inbounds %struct.nfp_flower_cmsg_mac_repr, %struct.nfp_flower_cmsg_mac_repr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @memset(i32 %24, i32 0, i32 4)
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.nfp_flower_cmsg_mac_repr*, %struct.nfp_flower_cmsg_mac_repr** %6, align 8
  %28 = getelementptr inbounds %struct.nfp_flower_cmsg_mac_repr, %struct.nfp_flower_cmsg_mac_repr* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %29, %struct.sk_buff** %3, align 8
  br label %30

30:                                               ; preds = %19, %18
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %31
}

declare dso_local %struct.sk_buff* @nfp_flower_cmsg_alloc(%struct.nfp_app*, i32, i32, i32) #1

declare dso_local i32 @struct_size(%struct.nfp_flower_cmsg_mac_repr*, i32, i32) #1

declare dso_local %struct.nfp_flower_cmsg_mac_repr* @nfp_flower_cmsg_get_data(%struct.sk_buff*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
