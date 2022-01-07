; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_is_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_is_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32*, i32 }

@PTP_CLASS_VLAN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i64 0, align 8
@PTP_CLASS_PMASK = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@UDP_HLEN = common dso_local global i32 0, align 4
@IP6_HLEN = common dso_local global i32 0, align 4
@PTP_CLASS_V1 = common dso_local global i32 0, align 4
@OFF_PTP_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @is_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_sync(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @PTP_CLASS_VLAN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i64, i64* @VLAN_HLEN, align 8
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %16, %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @PTP_CLASS_PMASK, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %50 [
    i32 130, label %26
    i32 129, label %38
    i32 128, label %46
  ]

26:                                               ; preds = %22
  %27 = load i32, i32* @ETH_HLEN, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i32 @IPV4_HLEN(i32* %31)
  %33 = add i32 %27, %32
  %34 = load i32, i32* @UDP_HLEN, align 4
  %35 = add i32 %33, %34
  %36 = load i32, i32* %8, align 4
  %37 = add i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %51

38:                                               ; preds = %22
  %39 = load i32, i32* @ETH_HLEN, align 4
  %40 = load i32, i32* @IP6_HLEN, align 4
  %41 = add i32 %39, %40
  %42 = load i32, i32* @UDP_HLEN, align 4
  %43 = add i32 %41, %42
  %44 = load i32, i32* %8, align 4
  %45 = add i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %51

46:                                               ; preds = %22
  %47 = load i32, i32* @ETH_HLEN, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %51

50:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %80

51:                                               ; preds = %46, %38, %26
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @PTP_CLASS_V1, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i64, i64* @OFF_PTP_CONTROL, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %56, %51
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = add i32 %66, 1
  %68 = icmp ult i32 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %80

70:                                               ; preds = %62
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32* %74, i32** %7, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 15
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %70, %69, %50
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @IPV4_HLEN(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
