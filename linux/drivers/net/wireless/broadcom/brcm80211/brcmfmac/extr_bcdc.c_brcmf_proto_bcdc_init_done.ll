; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcdc.c_brcmf_proto_bcdc_init_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcdc.c_brcmf_proto_bcdc_init_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pub = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.brcmf_bcdc* }
%struct.brcmf_bcdc = type { %struct.brcmf_fws_info* }
%struct.brcmf_fws_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_pub*)* @brcmf_proto_bcdc_init_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_proto_bcdc_init_done(%struct.brcmf_pub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_pub*, align 8
  %4 = alloca %struct.brcmf_bcdc*, align 8
  %5 = alloca %struct.brcmf_fws_info*, align 8
  store %struct.brcmf_pub* %0, %struct.brcmf_pub** %3, align 8
  %6 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %7 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %9, align 8
  store %struct.brcmf_bcdc* %10, %struct.brcmf_bcdc** %4, align 8
  %11 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %12 = call %struct.brcmf_fws_info* @brcmf_fws_attach(%struct.brcmf_pub* %11)
  store %struct.brcmf_fws_info* %12, %struct.brcmf_fws_info** %5, align 8
  %13 = load %struct.brcmf_fws_info*, %struct.brcmf_fws_info** %5, align 8
  %14 = call i64 @IS_ERR(%struct.brcmf_fws_info* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.brcmf_fws_info*, %struct.brcmf_fws_info** %5, align 8
  %18 = call i32 @PTR_ERR(%struct.brcmf_fws_info* %17)
  store i32 %18, i32* %2, align 4
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.brcmf_fws_info*, %struct.brcmf_fws_info** %5, align 8
  %21 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %4, align 8
  %22 = getelementptr inbounds %struct.brcmf_bcdc, %struct.brcmf_bcdc* %21, i32 0, i32 0
  store %struct.brcmf_fws_info* %20, %struct.brcmf_fws_info** %22, align 8
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.brcmf_fws_info* @brcmf_fws_attach(%struct.brcmf_pub*) #1

declare dso_local i64 @IS_ERR(%struct.brcmf_fws_info*) #1

declare dso_local i32 @PTR_ERR(%struct.brcmf_fws_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
