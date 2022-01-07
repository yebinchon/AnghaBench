; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_rlb_update_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_rlb_update_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlb_client_info = type { i64, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { %struct.TYPE_7__* }

@RLB_ARP_BURST_SIZE = common dso_local global i32 0, align 4
@ARPOP_REPLY = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to create an ARP packet\0A\00", align 1
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rlb_client_info*)* @rlb_update_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rlb_update_client(%struct.rlb_client_info* %0) #0 {
  %2 = alloca %struct.rlb_client_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.rlb_client_info* %0, %struct.rlb_client_info** %2, align 8
  %5 = load %struct.rlb_client_info*, %struct.rlb_client_info** %2, align 8
  %6 = getelementptr inbounds %struct.rlb_client_info, %struct.rlb_client_info* %5, i32 0, i32 1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.rlb_client_info*, %struct.rlb_client_info** %2, align 8
  %11 = getelementptr inbounds %struct.rlb_client_info, %struct.rlb_client_info* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @is_valid_ether_addr(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9, %1
  br label %91

16:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %88, %16
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @RLB_ARP_BURST_SIZE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %91

21:                                               ; preds = %17
  %22 = load i32, i32* @ARPOP_REPLY, align 4
  %23 = load i32, i32* @ETH_P_ARP, align 4
  %24 = load %struct.rlb_client_info*, %struct.rlb_client_info** %2, align 8
  %25 = getelementptr inbounds %struct.rlb_client_info, %struct.rlb_client_info* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rlb_client_info*, %struct.rlb_client_info** %2, align 8
  %28 = getelementptr inbounds %struct.rlb_client_info, %struct.rlb_client_info* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = load %struct.rlb_client_info*, %struct.rlb_client_info** %2, align 8
  %33 = getelementptr inbounds %struct.rlb_client_info, %struct.rlb_client_info* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rlb_client_info*, %struct.rlb_client_info** %2, align 8
  %36 = getelementptr inbounds %struct.rlb_client_info, %struct.rlb_client_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.rlb_client_info*, %struct.rlb_client_info** %2, align 8
  %39 = getelementptr inbounds %struct.rlb_client_info, %struct.rlb_client_info* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rlb_client_info*, %struct.rlb_client_info** %2, align 8
  %46 = getelementptr inbounds %struct.rlb_client_info, %struct.rlb_client_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.sk_buff* @arp_create(i32 %22, i32 %23, i32 %26, %struct.TYPE_7__* %31, i32 %34, i32 %37, i32 %44, i32 %47)
  store %struct.sk_buff* %48, %struct.sk_buff** %4, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = icmp ne %struct.sk_buff* %49, null
  br i1 %50, label %65, label %51

51:                                               ; preds = %21
  %52 = load %struct.rlb_client_info*, %struct.rlb_client_info** %2, align 8
  %53 = getelementptr inbounds %struct.rlb_client_info, %struct.rlb_client_info* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rlb_client_info*, %struct.rlb_client_info** %2, align 8
  %60 = getelementptr inbounds %struct.rlb_client_info, %struct.rlb_client_info* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = call i32 @slave_err(i32 %58, %struct.TYPE_7__* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %88

65:                                               ; preds = %21
  %66 = load %struct.rlb_client_info*, %struct.rlb_client_info** %2, align 8
  %67 = getelementptr inbounds %struct.rlb_client_info, %struct.rlb_client_info* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %72, align 8
  %73 = load %struct.rlb_client_info*, %struct.rlb_client_info** %2, align 8
  %74 = getelementptr inbounds %struct.rlb_client_info, %struct.rlb_client_info* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %65
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = load i32, i32* @ETH_P_8021Q, align 4
  %80 = call i32 @htons(i32 %79)
  %81 = load %struct.rlb_client_info*, %struct.rlb_client_info** %2, align 8
  %82 = getelementptr inbounds %struct.rlb_client_info, %struct.rlb_client_info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %78, i32 %80, i64 %83)
  br label %85

85:                                               ; preds = %77, %65
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = call i32 @arp_xmit(%struct.sk_buff* %86)
  br label %88

88:                                               ; preds = %85, %51
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %17

91:                                               ; preds = %15, %17
  ret void
}

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local %struct.sk_buff* @arp_create(i32, i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @slave_err(i32, %struct.TYPE_7__*, i8*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @arp_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
