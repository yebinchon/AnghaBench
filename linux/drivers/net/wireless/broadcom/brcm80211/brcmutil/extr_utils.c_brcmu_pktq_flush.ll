; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmutil/extr_utils.c_brcmu_pktq_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmutil/extr_utils.c_brcmu_pktq_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktq = type { i32 }
%struct.sk_buff = type opaque
%struct.sk_buff.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmu_pktq_flush(%struct.pktq* %0, i32 %1, i32 (%struct.sk_buff*, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.pktq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (%struct.sk_buff*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.pktq* %0, %struct.pktq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 (%struct.sk_buff*, i8*)* %2, i32 (%struct.sk_buff*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %24, %4
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.pktq*, %struct.pktq** %5, align 8
  %13 = getelementptr inbounds %struct.pktq, %struct.pktq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.pktq*, %struct.pktq** %5, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32 (%struct.sk_buff*, i8*)*, i32 (%struct.sk_buff*, i8*)** %7, align 8
  %21 = bitcast i32 (%struct.sk_buff*, i8*)* %20 to i32 (%struct.sk_buff.0*, i8*)*
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @brcmu_pktq_pflush(%struct.pktq* %17, i32 %18, i32 %19, i32 (%struct.sk_buff.0*, i8*)* %21, i8* %22)
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %9, align 4
  br label %10

27:                                               ; preds = %10
  ret void
}

declare dso_local i32 @brcmu_pktq_pflush(%struct.pktq*, i32, i32, i32 (%struct.sk_buff.0*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
