; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_get_wrb_params_from_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_get_wrb_params_from_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.be_wrb_params = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@LSO = common dso_local global i32 0, align 4
@LSO6 = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@IPCS = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@TCPCS = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@UDPCS = common dso_local global i32 0, align 4
@VLAN = common dso_local global i32 0, align 4
@CRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*, %struct.sk_buff*, %struct.be_wrb_params*)* @be_get_wrb_params_from_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_get_wrb_params_from_skb(%struct.be_adapter* %0, %struct.sk_buff* %1, %struct.be_wrb_params* %2) #0 {
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.be_wrb_params*, align 8
  %7 = alloca i64, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.be_wrb_params* %2, %struct.be_wrb_params** %6, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = call i64 @skb_is_gso(%struct.sk_buff* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %3
  %12 = load %struct.be_wrb_params*, %struct.be_wrb_params** %6, align 8
  %13 = getelementptr inbounds %struct.be_wrb_params, %struct.be_wrb_params* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @LSO, align 4
  %16 = call i32 @BE_WRB_F_SET(i32 %14, i32 %15, i32 1)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.be_wrb_params*, %struct.be_wrb_params** %6, align 8
  %22 = getelementptr inbounds %struct.be_wrb_params, %struct.be_wrb_params* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i64 @skb_is_gso_v6(%struct.sk_buff* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %11
  %27 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %28 = call i32 @lancer_chip(%struct.be_adapter* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = load %struct.be_wrb_params*, %struct.be_wrb_params** %6, align 8
  %32 = getelementptr inbounds %struct.be_wrb_params, %struct.be_wrb_params* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @LSO6, align 4
  %35 = call i32 @BE_WRB_F_SET(i32 %33, i32 %34, i32 1)
  br label %36

36:                                               ; preds = %30, %26, %11
  br label %82

37:                                               ; preds = %3
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %81

43:                                               ; preds = %37
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.be_wrb_params*, %struct.be_wrb_params** %6, align 8
  %50 = getelementptr inbounds %struct.be_wrb_params, %struct.be_wrb_params* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IPCS, align 4
  %53 = call i32 @BE_WRB_F_SET(i32 %51, i32 %52, i32 1)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = call i64 @skb_inner_ip_proto(%struct.sk_buff* %54)
  store i64 %55, i64* %7, align 8
  br label %59

56:                                               ; preds = %43
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = call i64 @skb_ip_proto(%struct.sk_buff* %57)
  store i64 %58, i64* %7, align 8
  br label %59

59:                                               ; preds = %56, %48
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @IPPROTO_TCP, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load %struct.be_wrb_params*, %struct.be_wrb_params** %6, align 8
  %65 = getelementptr inbounds %struct.be_wrb_params, %struct.be_wrb_params* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @TCPCS, align 4
  %68 = call i32 @BE_WRB_F_SET(i32 %66, i32 %67, i32 1)
  br label %80

69:                                               ; preds = %59
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* @IPPROTO_UDP, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load %struct.be_wrb_params*, %struct.be_wrb_params** %6, align 8
  %75 = getelementptr inbounds %struct.be_wrb_params, %struct.be_wrb_params* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @UDPCS, align 4
  %78 = call i32 @BE_WRB_F_SET(i32 %76, i32 %77, i32 1)
  br label %79

79:                                               ; preds = %73, %69
  br label %80

80:                                               ; preds = %79, %63
  br label %81

81:                                               ; preds = %80, %37
  br label %82

82:                                               ; preds = %81, %36
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = load %struct.be_wrb_params*, %struct.be_wrb_params** %6, align 8
  %88 = getelementptr inbounds %struct.be_wrb_params, %struct.be_wrb_params* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @VLAN, align 4
  %91 = call i32 @BE_WRB_F_SET(i32 %89, i32 %90, i32 1)
  %92 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = call i32 @be_get_tx_vlan_tag(%struct.be_adapter* %92, %struct.sk_buff* %93)
  %95 = load %struct.be_wrb_params*, %struct.be_wrb_params** %6, align 8
  %96 = getelementptr inbounds %struct.be_wrb_params, %struct.be_wrb_params* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %86, %82
  %98 = load %struct.be_wrb_params*, %struct.be_wrb_params** %6, align 8
  %99 = getelementptr inbounds %struct.be_wrb_params, %struct.be_wrb_params* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @CRC, align 4
  %102 = call i32 @BE_WRB_F_SET(i32 %100, i32 %101, i32 1)
  ret void
}

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @BE_WRB_F_SET(i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso_v6(%struct.sk_buff*) #1

declare dso_local i32 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i64 @skb_inner_ip_proto(%struct.sk_buff*) #1

declare dso_local i64 @skb_ip_proto(%struct.sk_buff*) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @be_get_tx_vlan_tag(%struct.be_adapter*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
