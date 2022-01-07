; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_rfc1051.c_build_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_rfc1051.c_build_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.archdr = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_4__ = type { %struct.arc_rfc1051 }
%struct.arc_rfc1051 = type { i32 }

@ARC_HDR_SIZE = common dso_local global i32 0, align 4
@RFC1051_HDR_SIZE = common dso_local global i32 0, align 4
@ARC_P_IP_RFC1051 = common dso_local global i32 0, align 4
@ARC_P_ARP_RFC1051 = common dso_local global i32 0, align 4
@D_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"RFC1051: I don't understand protocol %d (%Xh)\0A\00", align 1
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
  %10 = alloca i32, align 4
  %11 = alloca %struct.archdr*, align 8
  %12 = alloca %struct.arc_rfc1051*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i16 %2, i16* %8, align 2
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* @ARC_HDR_SIZE, align 4
  %14 = load i32, i32* @RFC1051_HDR_SIZE, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %10, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call %struct.archdr* @skb_push(%struct.sk_buff* %16, i32 %17)
  store %struct.archdr* %18, %struct.archdr** %11, align 8
  %19 = load %struct.archdr*, %struct.archdr** %11, align 8
  %20 = getelementptr inbounds %struct.archdr, %struct.archdr* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.arc_rfc1051* %21, %struct.arc_rfc1051** %12, align 8
  %22 = load i16, i16* %8, align 2
  %23 = zext i16 %22 to i32
  switch i32 %23, label %32 [
    i32 128, label %24
    i32 129, label %28
  ]

24:                                               ; preds = %4
  %25 = load i32, i32* @ARC_P_IP_RFC1051, align 4
  %26 = load %struct.arc_rfc1051*, %struct.arc_rfc1051** %12, align 8
  %27 = getelementptr inbounds %struct.arc_rfc1051, %struct.arc_rfc1051* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %48

28:                                               ; preds = %4
  %29 = load i32, i32* @ARC_P_ARP_RFC1051, align 4
  %30 = load %struct.arc_rfc1051*, %struct.arc_rfc1051** %12, align 8
  %31 = getelementptr inbounds %struct.arc_rfc1051, %struct.arc_rfc1051* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %48

32:                                               ; preds = %4
  %33 = load i32, i32* @D_NORMAL, align 4
  %34 = load %struct.net_device*, %struct.net_device** %7, align 8
  %35 = load i16, i16* %8, align 2
  %36 = load i16, i16* %8, align 2
  %37 = call i32 @arc_printk(i32 %33, %struct.net_device* %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i16 zeroext %35, i16 zeroext %36)
  %38 = load %struct.net_device*, %struct.net_device** %7, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.net_device*, %struct.net_device** %7, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  store i32 0, i32* %5, align 4
  br label %75

48:                                               ; preds = %28, %24
  %49 = load %struct.net_device*, %struct.net_device** %7, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.archdr*, %struct.archdr** %11, align 8
  %54 = getelementptr inbounds %struct.archdr, %struct.archdr* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 8
  %56 = load %struct.net_device*, %struct.net_device** %7, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IFF_LOOPBACK, align 4
  %60 = load i32, i32* @IFF_NOARP, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %48
  %65 = load %struct.archdr*, %struct.archdr** %11, align 8
  %66 = getelementptr inbounds %struct.archdr, %struct.archdr* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %5, align 4
  br label %75

69:                                               ; preds = %48
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.archdr*, %struct.archdr** %11, align 8
  %72 = getelementptr inbounds %struct.archdr, %struct.archdr* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %69, %64, %32
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.archdr* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @arc_printk(i32, %struct.net_device*, i8*, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
