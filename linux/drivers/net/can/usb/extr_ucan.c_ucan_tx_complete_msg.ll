; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_tx_complete_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_tx_complete_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucan_priv = type { i32, %struct.TYPE_12__*, %struct.ucan_urb_context*, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.ucan_urb_context = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.ucan_message_in = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32 }

@UCAN_IN_HDR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid tx complete length\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"invalid echo_index %d received\0A\00", align 1
@UCAN_TX_COMPLETE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucan_priv*, %struct.ucan_message_in*)* @ucan_tx_complete_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucan_tx_complete_msg(%struct.ucan_priv* %0, %struct.ucan_message_in* %1) #0 {
  %3 = alloca %struct.ucan_priv*, align 8
  %4 = alloca %struct.ucan_message_in*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ucan_urb_context*, align 8
  store %struct.ucan_priv* %0, %struct.ucan_priv** %3, align 8
  store %struct.ucan_message_in* %1, %struct.ucan_message_in** %4, align 8
  %12 = load %struct.ucan_message_in*, %struct.ucan_message_in** %4, align 8
  %13 = getelementptr inbounds %struct.ucan_message_in, %struct.ucan_message_in* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @le16_to_cpu(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @UCAN_IN_HDR_SIZE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %10, align 4
  %21 = srem i32 %20, 2
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19, %2
  %24 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %25 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = call i32 (%struct.TYPE_12__*, i8*, ...) @netdev_err(%struct.TYPE_12__* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %142

28:                                               ; preds = %19
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @UCAN_IN_HDR_SIZE, align 4
  %31 = sub nsw i32 %29, %30
  %32 = sdiv i32 %31, 2
  store i32 %32, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %139, %28
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %142

37:                                               ; preds = %33
  %38 = load %struct.ucan_message_in*, %struct.ucan_message_in** %4, align 8
  %39 = getelementptr inbounds %struct.ucan_message_in, %struct.ucan_message_in* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %49 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp uge i64 %47, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %37
  %54 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %55 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %54, i32 0, i32 1
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %62 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %61, i32 0, i32 1
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 (%struct.TYPE_12__*, i8*, ...) @netdev_err(%struct.TYPE_12__* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  br label %139

66:                                               ; preds = %37
  %67 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %68 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %67, i32 0, i32 2
  %69 = load %struct.ucan_urb_context*, %struct.ucan_urb_context** %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds %struct.ucan_urb_context, %struct.ucan_urb_context* %69, i64 %70
  store %struct.ucan_urb_context* %71, %struct.ucan_urb_context** %11, align 8
  %72 = load %struct.ucan_urb_context*, %struct.ucan_urb_context** %11, align 8
  %73 = getelementptr inbounds %struct.ucan_urb_context, %struct.ucan_urb_context* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @READ_ONCE(i32 %74)
  store i64 %75, i64* %9, align 8
  %76 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %77 = load %struct.ucan_urb_context*, %struct.ucan_urb_context** %11, align 8
  %78 = call i32 @ucan_release_context(%struct.ucan_priv* %76, %struct.ucan_urb_context* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %66
  br label %139

81:                                               ; preds = %66
  %82 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %83 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %82, i32 0, i32 0
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @spin_lock_irqsave(i32* %83, i64 %84)
  %86 = load %struct.ucan_message_in*, %struct.ucan_message_in** %4, align 8
  %87 = getelementptr inbounds %struct.ucan_message_in, %struct.ucan_message_in* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @UCAN_TX_COMPLETE_SUCCESS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %121

98:                                               ; preds = %81
  %99 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %100 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %99, i32 0, i32 1
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = load i64, i64* %9, align 8
  %107 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %108 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %107, i32 0, i32 1
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = add i64 %113, %106
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %111, align 4
  %116 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %117 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %116, i32 0, i32 1
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = load i64, i64* %8, align 8
  %120 = call i32 @can_get_echo_skb(%struct.TYPE_12__* %118, i64 %119)
  br label %134

121:                                              ; preds = %81
  %122 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %123 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %122, i32 0, i32 1
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %130 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %129, i32 0, i32 1
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = load i64, i64* %8, align 8
  %133 = call i32 @can_free_echo_skb(%struct.TYPE_12__* %131, i64 %132)
  br label %134

134:                                              ; preds = %121, %98
  %135 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %136 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %135, i32 0, i32 0
  %137 = load i64, i64* %5, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %137)
  br label %139

139:                                              ; preds = %134, %80, %53
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  br label %33

142:                                              ; preds = %23, %33
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @netdev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @ucan_release_context(%struct.ucan_priv*, %struct.ucan_urb_context*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @can_get_echo_skb(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @can_free_echo_skb(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
