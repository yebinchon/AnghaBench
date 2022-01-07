; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nvidia/extr_forcedeth.c_nv_getlen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nvidia/extr_forcedeth.c_nv_getlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vlan_ethhdr = type { i64, i32 }
%struct.ethhdr = type { i32 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@ETH_ZLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*, i32)* @nv_getlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_getlen(%struct.net_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.vlan_ethhdr*
  %12 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @ETH_P_8021Q, align 4
  %15 = call i64 @htons(i32 %14)
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.vlan_ethhdr*
  %20 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ntohs(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @VLAN_HLEN, align 4
  store i32 %23, i32* %8, align 4
  br label %31

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to %struct.ethhdr*
  %27 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ntohs(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @ETH_HLEN, align 4
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %24, %17
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @ETH_DATA_LEN, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %4, align 4
  br label %58

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @ETH_ZLEN, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %58

50:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %58

51:                                               ; preds = %37
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @ETH_ZLEN, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 -1, i32* %4, align 4
  br label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %55, %50, %48, %35
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
