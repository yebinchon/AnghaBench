; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_insert_vlan_in_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_insert_vlan_in_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i64, i64 }
%struct.sk_buff = type { i32 }
%struct.be_wrb_params = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@VLAN_SKIP_HW = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.be_adapter*, %struct.sk_buff*, %struct.be_wrb_params*)* @be_insert_vlan_in_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @be_insert_vlan_in_pkt(%struct.be_adapter* %0, %struct.sk_buff* %1, %struct.be_wrb_params* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.be_wrb_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.be_wrb_params* %2, %struct.be_wrb_params** %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %10, i32 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %20, %struct.sk_buff** %4, align 8
  br label %101

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call i64 @be_get_tx_vlan_tag(%struct.be_adapter* %26, %struct.sk_buff* %27)
  store i64 %28, i64* %9, align 8
  store i32 1, i32* %8, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %31 = call i64 @qnq_async_evt_rcvd(%struct.be_adapter* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %9, align 8
  store i32 1, i32* %8, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = load %struct.be_wrb_params*, %struct.be_wrb_params** %7, align 8
  %47 = getelementptr inbounds %struct.be_wrb_params, %struct.be_wrb_params* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @VLAN_SKIP_HW, align 4
  %50 = call i32 @BE_WRB_F_SET(i32 %48, i32 %49, i32 1)
  br label %51

51:                                               ; preds = %45, %33, %29
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = load i32, i32* @ETH_P_8021Q, align 4
  %57 = call i32 @htons(i32 %56)
  %58 = load i64, i64* %9, align 8
  %59 = call %struct.sk_buff* @vlan_insert_tag_set_proto(%struct.sk_buff* %55, i32 %57, i64 %58)
  store %struct.sk_buff* %59, %struct.sk_buff** %6, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = icmp ne %struct.sk_buff* %60, null
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %67, %struct.sk_buff** %4, align 8
  br label %101

68:                                               ; preds = %54
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = call i32 @__vlan_hwaccel_clear_tag(%struct.sk_buff* %69)
  br label %71

71:                                               ; preds = %68, %51
  %72 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %73 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %71
  %77 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %78 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %9, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = load i32, i32* @ETH_P_8021Q, align 4
  %82 = call i32 @htons(i32 %81)
  %83 = load i64, i64* %9, align 8
  %84 = call %struct.sk_buff* @vlan_insert_tag_set_proto(%struct.sk_buff* %80, i32 %82, i64 %83)
  store %struct.sk_buff* %84, %struct.sk_buff** %6, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = icmp ne %struct.sk_buff* %85, null
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %76
  %92 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %92, %struct.sk_buff** %4, align 8
  br label %101

93:                                               ; preds = %76
  %94 = load %struct.be_wrb_params*, %struct.be_wrb_params** %7, align 8
  %95 = getelementptr inbounds %struct.be_wrb_params, %struct.be_wrb_params* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @VLAN_SKIP_HW, align 4
  %98 = call i32 @BE_WRB_F_SET(i32 %96, i32 %97, i32 1)
  br label %99

99:                                               ; preds = %93, %71
  %100 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %100, %struct.sk_buff** %4, align 8
  br label %101

101:                                              ; preds = %99, %91, %66, %19
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %102
}

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i64 @be_get_tx_vlan_tag(%struct.be_adapter*, %struct.sk_buff*) #1

declare dso_local i64 @qnq_async_evt_rcvd(%struct.be_adapter*) #1

declare dso_local i32 @BE_WRB_F_SET(i32, i32, i32) #1

declare dso_local %struct.sk_buff* @vlan_insert_tag_set_proto(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @__vlan_hwaccel_clear_tag(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
