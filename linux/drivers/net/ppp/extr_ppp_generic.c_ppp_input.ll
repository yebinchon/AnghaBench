; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp_channel = type { %struct.channel* }
%struct.channel = type { i32, %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.sk_buff = type { i32 }

@PPP_CCPFRAG = common dso_local global i32 0, align 4
@PPP_MAX_RQLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ppp_input(%struct.ppp_channel* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ppp_channel*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.channel*, align 8
  %6 = alloca i32, align 4
  store %struct.ppp_channel* %0, %struct.ppp_channel** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.ppp_channel*, %struct.ppp_channel** %3, align 8
  %8 = getelementptr inbounds %struct.ppp_channel, %struct.ppp_channel* %7, i32 0, i32 0
  %9 = load %struct.channel*, %struct.channel** %8, align 8
  store %struct.channel* %9, %struct.channel** %5, align 8
  %10 = load %struct.channel*, %struct.channel** %5, align 8
  %11 = icmp ne %struct.channel* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @kfree_skb(%struct.sk_buff* %13)
  br label %100

15:                                               ; preds = %2
  %16 = load %struct.channel*, %struct.channel** %5, align 8
  %17 = getelementptr inbounds %struct.channel, %struct.channel* %16, i32 0, i32 0
  %18 = call i32 @read_lock_bh(i32* %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i32 @ppp_decompress_proto(%struct.sk_buff* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %15
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call i32 @kfree_skb(%struct.sk_buff* %23)
  %25 = load %struct.channel*, %struct.channel** %5, align 8
  %26 = getelementptr inbounds %struct.channel, %struct.channel* %25, i32 0, i32 1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = icmp ne %struct.TYPE_12__* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load %struct.channel*, %struct.channel** %5, align 8
  %31 = getelementptr inbounds %struct.channel, %struct.channel* %30, i32 0, i32 1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.channel*, %struct.channel** %5, align 8
  %40 = getelementptr inbounds %struct.channel, %struct.channel* %39, i32 0, i32 1
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = call i32 @ppp_receive_error(%struct.TYPE_12__* %41)
  br label %43

43:                                               ; preds = %29, %22
  br label %96

44:                                               ; preds = %15
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = call i32 @PPP_PROTO(%struct.sk_buff* %45)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.channel*, %struct.channel** %5, align 8
  %48 = getelementptr inbounds %struct.channel, %struct.channel* %47, i32 0, i32 1
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = icmp ne %struct.TYPE_12__* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  %53 = icmp sge i32 %52, 49152
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @PPP_CCPFRAG, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %88

58:                                               ; preds = %54, %51, %44
  %59 = load %struct.channel*, %struct.channel** %5, align 8
  %60 = getelementptr inbounds %struct.channel, %struct.channel* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = call i32 @skb_queue_tail(%struct.TYPE_11__* %61, %struct.sk_buff* %62)
  br label %64

64:                                               ; preds = %80, %58
  %65 = load %struct.channel*, %struct.channel** %5, align 8
  %66 = getelementptr inbounds %struct.channel, %struct.channel* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PPP_MAX_RQLEN, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load %struct.channel*, %struct.channel** %5, align 8
  %74 = getelementptr inbounds %struct.channel, %struct.channel* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = call %struct.sk_buff* @skb_dequeue(%struct.TYPE_11__* %75)
  store %struct.sk_buff* %76, %struct.sk_buff** %4, align 8
  %77 = icmp ne %struct.sk_buff* %76, null
  br label %78

78:                                               ; preds = %72, %64
  %79 = phi i1 [ false, %64 ], [ %77, %72 ]
  br i1 %79, label %80, label %83

80:                                               ; preds = %78
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = call i32 @kfree_skb(%struct.sk_buff* %81)
  br label %64

83:                                               ; preds = %78
  %84 = load %struct.channel*, %struct.channel** %5, align 8
  %85 = getelementptr inbounds %struct.channel, %struct.channel* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = call i32 @wake_up_interruptible(i32* %86)
  br label %95

88:                                               ; preds = %54
  %89 = load %struct.channel*, %struct.channel** %5, align 8
  %90 = getelementptr inbounds %struct.channel, %struct.channel* %89, i32 0, i32 1
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = load %struct.channel*, %struct.channel** %5, align 8
  %94 = call i32 @ppp_do_recv(%struct.TYPE_12__* %91, %struct.sk_buff* %92, %struct.channel* %93)
  br label %95

95:                                               ; preds = %88, %83
  br label %96

96:                                               ; preds = %95, %43
  %97 = load %struct.channel*, %struct.channel** %5, align 8
  %98 = getelementptr inbounds %struct.channel, %struct.channel* %97, i32 0, i32 0
  %99 = call i32 @read_unlock_bh(i32* %98)
  br label %100

100:                                              ; preds = %96, %12
  ret void
}

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @ppp_decompress_proto(%struct.sk_buff*) #1

declare dso_local i32 @ppp_receive_error(%struct.TYPE_12__*) #1

declare dso_local i32 @PPP_PROTO(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(%struct.TYPE_11__*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(%struct.TYPE_11__*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @ppp_do_recv(%struct.TYPE_12__*, %struct.sk_buff*, %struct.channel*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
