; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_rfc1201.c_build_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_rfc1201.c_build_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.arcnet_local = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.archdr = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.arc_rfc1201 }
%struct.arc_rfc1201 = type { i64, i32, i32 }

@ARC_HDR_SIZE = common dso_local global i32 0, align 4
@RFC1201_HDR_SIZE = common dso_local global i32 0, align 4
@ARC_P_IP = common dso_local global i32 0, align 4
@ARC_P_IPV6 = common dso_local global i32 0, align 4
@ARC_P_ARP = common dso_local global i32 0, align 4
@ARC_P_RARP = common dso_local global i32 0, align 4
@ARC_P_IPX = common dso_local global i32 0, align 4
@ARC_P_ATALK = common dso_local global i32 0, align 4
@D_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"RFC1201: I don't understand protocol %d (%Xh)\0A\00", align 1
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i16, i64)* @build_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_header(%struct.sk_buff* %0, %struct.net_device* %1, i16 zeroext %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i64, align 8
  %10 = alloca %struct.arcnet_local*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.archdr*, align 8
  %13 = alloca %struct.arc_rfc1201*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i16 %2, i16* %8, align 2
  store i64 %3, i64* %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %14)
  store %struct.arcnet_local* %15, %struct.arcnet_local** %10, align 8
  %16 = load i32, i32* @ARC_HDR_SIZE, align 4
  %17 = load i32, i32* @RFC1201_HDR_SIZE, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %11, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = load i32, i32* %11, align 4
  %21 = call %struct.archdr* @skb_push(%struct.sk_buff* %19, i32 %20)
  store %struct.archdr* %21, %struct.archdr** %12, align 8
  %22 = load %struct.archdr*, %struct.archdr** %12, align 8
  %23 = getelementptr inbounds %struct.archdr, %struct.archdr* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store %struct.arc_rfc1201* %24, %struct.arc_rfc1201** %13, align 8
  %25 = load i16, i16* %8, align 2
  %26 = zext i16 %25 to i32
  switch i32 %26, label %51 [
    i32 131, label %27
    i32 130, label %31
    i32 133, label %35
    i32 128, label %39
    i32 129, label %43
    i32 134, label %43
    i32 135, label %43
    i32 132, label %47
  ]

27:                                               ; preds = %4
  %28 = load i32, i32* @ARC_P_IP, align 4
  %29 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %13, align 8
  %30 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  br label %67

31:                                               ; preds = %4
  %32 = load i32, i32* @ARC_P_IPV6, align 4
  %33 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %13, align 8
  %34 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  br label %67

35:                                               ; preds = %4
  %36 = load i32, i32* @ARC_P_ARP, align 4
  %37 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %13, align 8
  %38 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  br label %67

39:                                               ; preds = %4
  %40 = load i32, i32* @ARC_P_RARP, align 4
  %41 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %13, align 8
  %42 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  br label %67

43:                                               ; preds = %4, %4, %4
  %44 = load i32, i32* @ARC_P_IPX, align 4
  %45 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %13, align 8
  %46 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  br label %67

47:                                               ; preds = %4
  %48 = load i32, i32* @ARC_P_ATALK, align 4
  %49 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %13, align 8
  %50 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  br label %67

51:                                               ; preds = %4
  %52 = load i32, i32* @D_NORMAL, align 4
  %53 = load %struct.net_device*, %struct.net_device** %7, align 8
  %54 = load i16, i16* %8, align 2
  %55 = load i16, i16* %8, align 2
  %56 = call i32 @arc_printk(i32 %52, %struct.net_device* %53, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i16 zeroext %54, i16 zeroext %55)
  %57 = load %struct.net_device*, %struct.net_device** %7, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.net_device*, %struct.net_device** %7, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  store i32 0, i32* %5, align 4
  br label %104

67:                                               ; preds = %47, %43, %39, %35, %31, %27
  %68 = load %struct.net_device*, %struct.net_device** %7, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.archdr*, %struct.archdr** %12, align 8
  %73 = getelementptr inbounds %struct.archdr, %struct.archdr* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 8
  %75 = load %struct.arcnet_local*, %struct.arcnet_local** %10, align 8
  %76 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = call i32 @htons(i32 %78)
  %81 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %13, align 8
  %82 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %13, align 8
  %84 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  %85 = load %struct.net_device*, %struct.net_device** %7, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @IFF_LOOPBACK, align 4
  %89 = load i32, i32* @IFF_NOARP, align 4
  %90 = or i32 %88, %89
  %91 = and i32 %87, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %67
  %94 = load %struct.archdr*, %struct.archdr** %12, align 8
  %95 = getelementptr inbounds %struct.archdr, %struct.archdr* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %5, align 4
  br label %104

98:                                               ; preds = %67
  %99 = load i64, i64* %9, align 8
  %100 = load %struct.archdr*, %struct.archdr** %12, align 8
  %101 = getelementptr inbounds %struct.archdr, %struct.archdr* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  store i64 %99, i64* %102, align 8
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %98, %93, %51
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.archdr* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @arc_printk(i32, %struct.net_device*, i8*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
