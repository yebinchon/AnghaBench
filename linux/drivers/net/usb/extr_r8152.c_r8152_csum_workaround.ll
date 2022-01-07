; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8152_csum_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8152_csum_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.net_device_stats }
%struct.net_device_stats = type { i32 }
%struct.sk_buff = type { i64, %struct.sk_buff* }
%struct.sk_buff_head = type { i32 }
%struct.TYPE_4__ = type { i64 }

@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*, %struct.sk_buff*, %struct.sk_buff_head*)* @r8152_csum_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8152_csum_workaround(%struct.r8152* %0, %struct.sk_buff* %1, %struct.sk_buff_head* %2) #0 {
  %4 = alloca %struct.r8152*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff_head, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.net_device_stats*, align 8
  store %struct.r8152* %0, %struct.r8152** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %60

17:                                               ; preds = %3
  %18 = load %struct.r8152*, %struct.r8152** %4, align 8
  %19 = getelementptr inbounds %struct.r8152, %struct.r8152* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @NETIF_F_SG, align 4
  %24 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @NETIF_F_TSO6, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.sk_buff* @skb_gso_segment(%struct.sk_buff* %31, i32 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %9, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %35 = call i64 @IS_ERR(%struct.sk_buff* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %17
  %38 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37, %17
  br label %76

41:                                               ; preds = %37
  %42 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %8)
  br label %43

43:                                               ; preds = %52, %41
  %44 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %44, %struct.sk_buff** %10, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load %struct.sk_buff*, %struct.sk_buff** %46, align 8
  store %struct.sk_buff* %47, %struct.sk_buff** %9, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %49, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %51 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %8, %struct.sk_buff* %50)
  br label %52

52:                                               ; preds = %43
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %54 = icmp ne %struct.sk_buff* %53, null
  br i1 %54, label %43, label %55

55:                                               ; preds = %52
  %56 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %57 = call i32 @skb_queue_splice(%struct.sk_buff_head* %8, %struct.sk_buff_head* %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = call i32 @dev_kfree_skb(%struct.sk_buff* %58)
  br label %88

60:                                               ; preds = %3
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call i64 @skb_checksum_help(%struct.sk_buff* %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %76

71:                                               ; preds = %66
  %72 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = call i32 @__skb_queue_head(%struct.sk_buff_head* %72, %struct.sk_buff* %73)
  br label %87

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75, %70, %40
  %77 = load %struct.r8152*, %struct.r8152** %4, align 8
  %78 = getelementptr inbounds %struct.r8152, %struct.r8152* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store %struct.net_device_stats* %80, %struct.net_device_stats** %11, align 8
  %81 = load %struct.net_device_stats*, %struct.net_device_stats** %11, align 8
  %82 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = call i32 @dev_kfree_skb(%struct.sk_buff* %85)
  br label %87

87:                                               ; preds = %76, %71
  br label %88

88:                                               ; preds = %87, %55
  ret void
}

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_gso_segment(%struct.sk_buff*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_splice(%struct.sk_buff_head*, %struct.sk_buff_head*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @skb_checksum_help(%struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_head(%struct.sk_buff_head*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
