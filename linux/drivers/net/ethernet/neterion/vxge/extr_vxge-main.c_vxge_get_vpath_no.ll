; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_get_vpath_no.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_get_vpath_no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { i32, i32* }
%struct.sk_buff = type { i64 }
%struct.iphdr = type { i32 }
%struct.tcphdr = type { i32, i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxgedev*, %struct.sk_buff*)* @vxge_get_vpath_no to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxge_get_vpath_no(%struct.vxgedev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.vxgedev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca %struct.tcphdr*, align 8
  store %struct.vxgedev* %0, %struct.vxgedev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @ETH_P_IP, align 4
  %13 = call i64 @htons(i32 %12)
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %60

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %16)
  store %struct.iphdr* %17, %struct.iphdr** %7, align 8
  %18 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %19 = call i32 @ip_is_fragment(%struct.iphdr* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %59, label %21

21:                                               ; preds = %15
  %22 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %23 = bitcast %struct.iphdr* %22 to i8*
  %24 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %25 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %23, i64 %28
  %30 = bitcast i8* %29 to %struct.tcphdr*
  store %struct.tcphdr* %30, %struct.tcphdr** %8, align 8
  %31 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %32 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %5, align 4
  %34 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %35 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ntohs(i32 %36)
  %38 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %39 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ntohs(i32 %40)
  %42 = add nsw i32 %37, %41
  %43 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %44 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %42, %50
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %21
  %56 = load i32, i32* %5, align 4
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %55, %21
  br label %59

59:                                               ; preds = %58, %15
  br label %60

60:                                               ; preds = %59, %2
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip_is_fragment(%struct.iphdr*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
