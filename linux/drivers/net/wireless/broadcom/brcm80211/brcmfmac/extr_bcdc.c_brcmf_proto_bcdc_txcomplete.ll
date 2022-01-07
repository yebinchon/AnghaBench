; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcdc.c_brcmf_proto_bcdc_txcomplete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcdc.c_brcmf_proto_bcdc_txcomplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.brcmf_bus = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.brcmf_bcdc* }
%struct.brcmf_bcdc = type { i32 }
%struct.brcmf_if = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_proto_bcdc_txcomplete(%struct.device* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcmf_bus*, align 8
  %8 = alloca %struct.brcmf_bcdc*, align 8
  %9 = alloca %struct.brcmf_if*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.brcmf_bus* @dev_get_drvdata(%struct.device* %10)
  store %struct.brcmf_bus* %11, %struct.brcmf_bus** %7, align 8
  %12 = load %struct.brcmf_bus*, %struct.brcmf_bus** %7, align 8
  %13 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %17, align 8
  store %struct.brcmf_bcdc* %18, %struct.brcmf_bcdc** %8, align 8
  %19 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %8, align 8
  %20 = getelementptr inbounds %struct.brcmf_bcdc, %struct.brcmf_bcdc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @brcmf_fws_fc_active(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %8, align 8
  %29 = getelementptr inbounds %struct.brcmf_bcdc, %struct.brcmf_bcdc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i32 @brcmf_fws_bustxfail(i32 %30, %struct.sk_buff* %31)
  br label %33

33:                                               ; preds = %27, %24
  br label %50

34:                                               ; preds = %3
  %35 = load %struct.brcmf_bus*, %struct.brcmf_bus** %7, align 8
  %36 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i64 @brcmf_proto_bcdc_hdrpull(%struct.TYPE_4__* %37, i32 0, %struct.sk_buff* %38, %struct.brcmf_if** %9)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call i32 @brcmu_pkt_buf_free_skb(%struct.sk_buff* %42)
  br label %49

44:                                               ; preds = %34
  %45 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @brcmf_txfinalize(%struct.brcmf_if* %45, %struct.sk_buff* %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %41
  br label %50

50:                                               ; preds = %49, %33
  ret void
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @brcmf_fws_fc_active(i32) #1

declare dso_local i32 @brcmf_fws_bustxfail(i32, %struct.sk_buff*) #1

declare dso_local i64 @brcmf_proto_bcdc_hdrpull(%struct.TYPE_4__*, i32, %struct.sk_buff*, %struct.brcmf_if**) #1

declare dso_local i32 @brcmu_pkt_buf_free_skb(%struct.sk_buff*) #1

declare dso_local i32 @brcmf_txfinalize(%struct.brcmf_if*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
