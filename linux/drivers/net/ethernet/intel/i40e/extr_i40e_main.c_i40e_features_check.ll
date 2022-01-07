; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_features_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_features_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i64 }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@NETIF_F_GSO_MASK = common dso_local global i32 0, align 4
@NETIF_F_CSUM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i32)* @i40e_features_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_features_check(%struct.sk_buff* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %4, align 4
  br label %87

16:                                               ; preds = %3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call i64 @skb_is_gso(%struct.sk_buff* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 64
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i32, i32* @NETIF_F_GSO_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %26, %20, %16
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i64 @skb_network_header(%struct.sk_buff* %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %33, %36
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = and i64 %38, -127
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %80

42:                                               ; preds = %31
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call i64 @skb_transport_header(%struct.sk_buff* %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = call i64 @skb_network_header(%struct.sk_buff* %45)
  %47 = sub i64 %44, %46
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = and i64 %48, -509
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %80

52:                                               ; preds = %42
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %52
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = call i64 @skb_inner_network_header(%struct.sk_buff* %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = call i64 @skb_transport_header(%struct.sk_buff* %60)
  %62 = sub i64 %59, %61
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %8, align 8
  %64 = and i64 %63, -255
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %80

67:                                               ; preds = %57
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = call i64 @skb_inner_transport_header(%struct.sk_buff* %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = call i64 @skb_inner_network_header(%struct.sk_buff* %70)
  %72 = sub i64 %69, %71
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = and i64 %73, -509
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %80

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %52
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %4, align 4
  br label %87

80:                                               ; preds = %76, %66, %51, %41
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @NETIF_F_CSUM_MASK, align 4
  %83 = load i32, i32* @NETIF_F_GSO_MASK, align 4
  %84 = or i32 %82, %83
  %85 = xor i32 %84, -1
  %86 = and i32 %81, %85
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %80, %78, %14
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_inner_network_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_inner_transport_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
