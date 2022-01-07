; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_tx_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_tx_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.TYPE_2__ = type { i32 }

@TX_OVERHEAD = common dso_local global i32 0, align 4
@TX_CMD_A_LEN_MASK_ = common dso_local global i32 0, align 4
@TX_CMD_A_FCS_ = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@TX_CMD_A_IPE_ = common dso_local global i32 0, align 4
@TX_CMD_A_TPE_ = common dso_local global i32 0, align 4
@TX_CMD_B_MSS_MIN_ = common dso_local global i32 0, align 4
@TX_CMD_B_MSS_SHIFT_ = common dso_local global i32 0, align 4
@TX_CMD_B_MSS_MASK_ = common dso_local global i32 0, align 4
@TX_CMD_A_LSO_ = common dso_local global i32 0, align 4
@TX_CMD_A_IVTG_ = common dso_local global i32 0, align 4
@TX_CMD_B_VTAG_MASK_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.lan78xx_net*, %struct.sk_buff*, i32)* @lan78xx_tx_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @lan78xx_tx_prep(%struct.lan78xx_net* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.lan78xx_net*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = load i32, i32* @TX_OVERHEAD, align 4
  %14 = call i64 @skb_cow_head(%struct.sk_buff* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %17)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %87

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call i64 @lan78xx_linearize(%struct.sk_buff* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %87

24:                                               ; preds = %19
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TX_CMD_A_LEN_MASK_, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @TX_CMD_A_FCS_, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %24
  %38 = load i32, i32* @TX_CMD_A_IPE_, align 4
  %39 = load i32, i32* @TX_CMD_A_TPE_, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %37, %24
  store i32 0, i32* %9, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call i64 @skb_is_gso(%struct.sk_buff* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TX_CMD_B_MSS_MIN_, align 4
  %53 = call i32 @max(i32 %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @TX_CMD_B_MSS_SHIFT_, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* @TX_CMD_B_MSS_MASK_, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @TX_CMD_A_LSO_, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %47, %43
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load i32, i32* @TX_CMD_A_IVTG_, align 4
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %70)
  %72 = load i32, i32* @TX_CMD_B_VTAG_MASK_, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %66, %62
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = call i8* @skb_push(%struct.sk_buff* %77, i32 8)
  store i8* %78, i8** %10, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @put_unaligned_le32(i32 %79, i8* %80)
  %82 = load i32, i32* %9, align 4
  %83 = load i8*, i8** %10, align 8
  %84 = getelementptr i8, i8* %83, i64 4
  %85 = call i32 @put_unaligned_le32(i32 %82, i8* %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %86, %struct.sk_buff** %4, align 8
  br label %87

87:                                               ; preds = %76, %23, %16
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %88
}

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @lan78xx_linearize(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
