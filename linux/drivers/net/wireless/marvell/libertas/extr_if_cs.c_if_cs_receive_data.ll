; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_cs.c_if_cs_receive_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_cs.c_if_cs_receive_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32* }
%struct.lbs_private = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IF_CS_READ_LEN = common dso_local global i32 0, align 4
@MRVDRV_ETH_RX_PACKET_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"card data buffer has invalid # of bytes (%d)\0A\00", align 1
@IF_CS_READ = common dso_local global i32 0, align 4
@IF_CS_HOST_STATUS = common dso_local global i32 0, align 4
@IF_CS_BIT_RX = common dso_local global i32 0, align 4
@IF_CS_HOST_INT_CAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.lbs_private*)* @if_cs_receive_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @if_cs_receive_data(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  %6 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %7 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @IF_CS_READ_LEN, align 4
  %10 = call i32 @if_cs_read16(i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @MRVDRV_ETH_RX_PACKET_BUFFER_SIZE, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13, %1
  %18 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %19 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @netdev_err(%struct.TYPE_4__* %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %24 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %71

30:                                               ; preds = %13
  %31 = load i32, i32* @MRVDRV_ETH_RX_PACKET_BUFFER_SIZE, align 4
  %32 = add nsw i32 %31, 2
  %33 = call %struct.sk_buff* @dev_alloc_skb(i32 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %3, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %84

37:                                               ; preds = %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @skb_put(%struct.sk_buff* %38, i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = call i32 @skb_reserve(%struct.sk_buff* %41, i32 2)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %5, align 8
  %46 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %47 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IF_CS_READ, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = udiv i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i32 @if_cs_read16_rep(i32 %48, i32 %49, i32* %50, i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, 1
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %37
  %60 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %61 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @IF_CS_READ, align 4
  %64 = call i32 @if_cs_read8(i32 %62, i32 %63)
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %64, i32* %69, align 4
  br label %70

70:                                               ; preds = %59, %37
  br label %71

71:                                               ; preds = %70, %17
  %72 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %73 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @IF_CS_HOST_STATUS, align 4
  %76 = load i32, i32* @IF_CS_BIT_RX, align 4
  %77 = call i32 @if_cs_write16(i32 %74, i32 %75, i32 %76)
  %78 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %79 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @IF_CS_HOST_INT_CAUSE, align 4
  %82 = load i32, i32* @IF_CS_BIT_RX, align 4
  %83 = call i32 @if_cs_write16(i32 %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %71, %36
  %85 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %85
}

declare dso_local i32 @if_cs_read16(i32, i32) #1

declare dso_local i32 @netdev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @if_cs_read16_rep(i32, i32, i32*, i32) #1

declare dso_local i32 @if_cs_read8(i32, i32) #1

declare dso_local i32 @if_cs_write16(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
