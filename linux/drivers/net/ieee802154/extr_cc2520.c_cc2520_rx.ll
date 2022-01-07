; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc2520_private = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32* }

@.str = private unnamed_addr constant [26 x i8] c"corrupted frame received\0A\00", align 1
@IEEE802154_MTU = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"frame reception failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"CRC check failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"RXFIFO: %x %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc2520_private*)* @cc2520_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc2520_rx(%struct.cc2520_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cc2520_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.cc2520_private* %0, %struct.cc2520_private** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %9 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @cc2520_read_rxfifo(%struct.cc2520_private* %9, i32* %4, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ieee802154_is_valid_psdu_len(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %17 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @dev_dbg(i32* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @IEEE802154_MTU, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %15, %1
  %23 = load i32, i32* %4, align 4
  %24 = call %struct.sk_buff* @dev_alloc_skb(i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %7, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %112

30:                                               ; preds = %22
  %31 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32* @skb_put(%struct.sk_buff* %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @cc2520_read_rxfifo(%struct.cc2520_private* %31, i32* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %40 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @dev_dbg(i32* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = call i32 @kfree_skb(%struct.sk_buff* %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %112

48:                                               ; preds = %30
  %49 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %50 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %98, label %53

53:                                               ; preds = %48
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @BIT(i32 7)
  %63 = and i32 %61, %62
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %53
  %67 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %68 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @dev_dbg(i32* %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %73 = call i32 @kfree_skb(%struct.sk_buff* %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %112

76:                                               ; preds = %53
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 127
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp slt i32 %86, 50
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  store i32 50, i32* %5, align 4
  br label %94

89:                                               ; preds = %76
  %90 = load i32, i32* %5, align 4
  %91 = icmp sgt i32 %90, 113
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 113, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %89
  br label %94

94:                                               ; preds = %93, %88
  %95 = load i32, i32* %5, align 4
  %96 = sub nsw i32 %95, 50
  %97 = mul nsw i32 %96, 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %94, %48
  %99 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %100 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @ieee802154_rx_irqsafe(i32 %101, %struct.sk_buff* %102, i32 %103)
  %105 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %106 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @dev_vdbg(i32* %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %110)
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %98, %66, %38, %27
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i64 @cc2520_read_rxfifo(%struct.cc2520_private*, i32*, i32) #1

declare dso_local i32 @ieee802154_is_valid_psdu_len(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ieee802154_rx_irqsafe(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @dev_vdbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
