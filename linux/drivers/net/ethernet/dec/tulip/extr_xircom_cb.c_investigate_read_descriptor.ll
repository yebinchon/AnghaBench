; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_xircom_cb.c_investigate_read_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_xircom_cb.c_investigate_read_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i16, i32, i32 }
%struct.xircom_private = type { i32* }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Packet length %i is bogus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.xircom_private*, i32, i32)* @investigate_read_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @investigate_read_descriptor(%struct.net_device* %0, %struct.xircom_private* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.xircom_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.xircom_private* %1, %struct.xircom_private** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.xircom_private*, %struct.xircom_private** %6, align 8
  %13 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = mul nsw i32 4, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %99

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = ashr i32 %24, 16
  %26 = and i32 %25, 2047
  %27 = sub nsw i32 %26, 4
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %10, align 2
  %29 = load i16, i16* %10, align 2
  %30 = sext i16 %29 to i32
  %31 = icmp sgt i32 %30, 1518
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = load i16, i16* %10, align 2
  %35 = call i32 @netdev_err(%struct.net_device* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i16 signext %34)
  store i16 1518, i16* %10, align 2
  br label %36

36:                                               ; preds = %32, %23
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = load i16, i16* %10, align 2
  %39 = sext i16 %38 to i32
  %40 = add nsw i32 %39, 2
  %41 = trunc i32 %40 to i16
  %42 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %37, i16 signext %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %11, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %44 = icmp eq %struct.sk_buff* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %88

51:                                               ; preds = %36
  %52 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %53 = call i32 @skb_reserve(%struct.sk_buff* %52, i32 2)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %55 = load %struct.xircom_private*, %struct.xircom_private** %6, align 8
  %56 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = udiv i32 %58, 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i16, i16* %10, align 2
  %63 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %54, i32* %61, i16 signext %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %65 = load i16, i16* %10, align 2
  %66 = call i32 @skb_put(%struct.sk_buff* %64, i16 signext %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = call i32 @eth_type_trans(%struct.sk_buff* %67, %struct.net_device* %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %73 = call i32 @netif_rx(%struct.sk_buff* %72)
  %74 = load %struct.net_device*, %struct.net_device** %5, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load i16, i16* %10, align 2
  %80 = sext i16 %79 to i32
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i16, i16* %83, align 4
  %85 = sext i16 %84 to i32
  %86 = add nsw i32 %85, %80
  %87 = trunc i32 %86 to i16
  store i16 %87, i16* %83, align 4
  br label %88

88:                                               ; preds = %51, %45
  %89 = call i32 @cpu_to_le32(i32 -2147483648)
  %90 = load %struct.xircom_private*, %struct.xircom_private** %6, align 8
  %91 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = mul nsw i32 4, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  store i32 %89, i32* %96, align 4
  %97 = load %struct.xircom_private*, %struct.xircom_private** %6, align 8
  %98 = call i32 @trigger_receive(%struct.xircom_private* %97)
  br label %99

99:                                               ; preds = %88, %4
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i16 signext) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i16 signext) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i32*, i16 signext) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i16 signext) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @trigger_receive(%struct.xircom_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
