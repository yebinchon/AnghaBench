; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_proto.h_brcmf_proto_del_if.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_proto.h_brcmf_proto_del_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pub = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.brcmf_if*)* }
%struct.brcmf_if = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_pub*, %struct.brcmf_if*)* @brcmf_proto_del_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_proto_del_if(%struct.brcmf_pub* %0, %struct.brcmf_if* %1) #0 {
  %3 = alloca %struct.brcmf_pub*, align 8
  %4 = alloca %struct.brcmf_if*, align 8
  store %struct.brcmf_pub* %0, %struct.brcmf_pub** %3, align 8
  store %struct.brcmf_if* %1, %struct.brcmf_if** %4, align 8
  %5 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %6 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.brcmf_if*)*, i32 (%struct.brcmf_if*)** %8, align 8
  %10 = icmp ne i32 (%struct.brcmf_if*)* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %20

12:                                               ; preds = %2
  %13 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %14 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.brcmf_if*)*, i32 (%struct.brcmf_if*)** %16, align 8
  %18 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %19 = call i32 %17(%struct.brcmf_if* %18)
  br label %20

20:                                               ; preds = %12, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
