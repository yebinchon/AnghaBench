; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/appletalk/extr_ltpc.c_ltpc_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/appletalk/extr_ltpc.c_ltpc_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32* }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.lt_sendlap = type { i32, i32, i32, i32 }

@LT_SENDLAP = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_UPPER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"command \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"sent %d ddp bytes\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ltpc_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltpc_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lt_sendlap, align 4
  %7 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = load i32, i32* @LT_SENDLAP, align 4
  %9 = getelementptr inbounds %struct.lt_sendlap, %struct.lt_sendlap* %6, i32 0, i32 3
  store i32 %8, i32* %9, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.lt_sendlap, %struct.lt_sendlap* %6, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.lt_sendlap, %struct.lt_sendlap* %6, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = call i32 @skb_pull(%struct.sk_buff* %22, i32 3)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.lt_sendlap, %struct.lt_sendlap* %6, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call i32 @skb_reset_transport_header(%struct.sk_buff* %28)
  %30 = load i32, i32* @debug, align 4
  %31 = load i32, i32* @DEBUG_UPPER, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %2
  %35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %47, %34
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 6
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = bitcast %struct.lt_sendlap* %6 to i8*
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %36

50:                                               ; preds = %36
  %51 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %2
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = call i8* @skb_transport_header(%struct.sk_buff* %53)
  store i8* %54, i8** %7, align 8
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @do_write(%struct.net_device* %55, %struct.lt_sendlap* %6, i32 16, i8* %56, i32 %59)
  %61 = load i32, i32* @debug, align 4
  %62 = load i32, i32* @DEBUG_UPPER, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %89

65:                                               ; preds = %52
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %84, %65
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %70
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %70

87:                                               ; preds = %70
  %88 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %52
  %90 = load %struct.net_device*, %struct.net_device** %4, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.net_device*, %struct.net_device** %4, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, %97
  store i32 %102, i32* %100, align 4
  %103 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %104 = call i32 @dev_kfree_skb(%struct.sk_buff* %103)
  %105 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %105
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i8* @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @do_write(%struct.net_device*, %struct.lt_sendlap*, i32, i8*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
