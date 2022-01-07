; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_serial.c_handle_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_serial.c_handle_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ser_device = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_11__, %struct.tty_struct* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*, i32)* }
%struct.TYPE_11__ = type { i64 }
%struct.tty_struct = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.tty_struct*, i32, i32)* }
%struct.sk_buff = type { i32, i32 }

@CAIF_SENDING = common dso_local global i32 0, align 4
@ser_write_chunk = common dso_local global i32 0, align 4
@ser_loop = common dso_local global i32 0, align 4
@SEND_QUEUE_LOW = common dso_local global i64 0, align 8
@CAIF_FLOW_OFF_SENT = common dso_local global i32 0, align 4
@ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ser_device*)* @handle_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_tx(%struct.ser_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ser_device*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.ser_device* %0, %struct.ser_device** %3, align 8
  %10 = load %struct.ser_device*, %struct.ser_device** %3, align 8
  %11 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %10, i32 0, i32 5
  %12 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  store %struct.tty_struct* %12, %struct.tty_struct** %4, align 8
  %13 = load %struct.ser_device*, %struct.ser_device** %3, align 8
  %14 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load i32, i32* @CAIF_SENDING, align 4
  %16 = load %struct.ser_device*, %struct.ser_device** %3, align 8
  %17 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %16, i32 0, i32 1
  %18 = call i64 @test_and_set_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %152

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %111, %21
  %23 = load %struct.ser_device*, %struct.ser_device** %3, align 8
  %24 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %23, i32 0, i32 4
  %25 = call %struct.sk_buff* @skb_peek(%struct.TYPE_11__* %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %5, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %27, label %112

27:                                               ; preds = %22
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %32 = call i32 @tty_write_room(%struct.tty_struct* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  br label %112

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @ser_write_chunk, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @ser_write_chunk, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i32, i32* @ser_loop, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %48
  %52 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %53 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, i32, i32)** %55, align 8
  %57 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 %56(%struct.tty_struct* %57, i32 %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load %struct.ser_device*, %struct.ser_device** %3, align 8
  %64 = call i32 @update_tty_status(%struct.ser_device* %63)
  br label %73

65:                                               ; preds = %48
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %6, align 4
  %67 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @ldisc_receive(%struct.tty_struct* %67, i32 %70, i32* null, i32 %71)
  br label %73

73:                                               ; preds = %65, %51
  %74 = load %struct.ser_device*, %struct.ser_device** %3, align 8
  %75 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %74, i32 0, i32 2
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.ser_device*, %struct.ser_device** %3, align 8
  %83 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %82, i32 0, i32 2
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, %81
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %73
  br label %146

92:                                               ; preds = %73
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @skb_pull(%struct.sk_buff* %93, i32 %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %92
  %101 = load %struct.ser_device*, %struct.ser_device** %3, align 8
  %102 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %101, i32 0, i32 4
  %103 = call %struct.sk_buff* @skb_dequeue(%struct.TYPE_11__* %102)
  store %struct.sk_buff* %103, %struct.sk_buff** %9, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = icmp ne %struct.sk_buff* %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @WARN_ON(i32 %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = call i32 @dev_consume_skb_any(%struct.sk_buff* %109)
  br label %111

111:                                              ; preds = %100, %92
  br label %22

112:                                              ; preds = %35, %22
  %113 = load %struct.ser_device*, %struct.ser_device** %3, align 8
  %114 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @SEND_QUEUE_LOW, align 8
  %118 = icmp sle i64 %116, %117
  br i1 %118, label %119, label %141

119:                                              ; preds = %112
  %120 = load i32, i32* @CAIF_FLOW_OFF_SENT, align 4
  %121 = load %struct.ser_device*, %struct.ser_device** %3, align 8
  %122 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %121, i32 0, i32 1
  %123 = call i64 @test_and_clear_bit(i32 %120, i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %119
  %126 = load %struct.ser_device*, %struct.ser_device** %3, align 8
  %127 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %128, align 8
  %130 = icmp ne i32 (%struct.TYPE_10__*, i32)* %129, null
  br i1 %130, label %131, label %141

131:                                              ; preds = %125
  %132 = load %struct.ser_device*, %struct.ser_device** %3, align 8
  %133 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %134, align 8
  %136 = load %struct.ser_device*, %struct.ser_device** %3, align 8
  %137 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %136, i32 0, i32 2
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = load i32, i32* @ON, align 4
  %140 = call i32 %135(%struct.TYPE_10__* %138, i32 %139)
  br label %141

141:                                              ; preds = %131, %125, %119, %112
  %142 = load i32, i32* @CAIF_SENDING, align 4
  %143 = load %struct.ser_device*, %struct.ser_device** %3, align 8
  %144 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %143, i32 0, i32 1
  %145 = call i32 @clear_bit(i32 %142, i32* %144)
  store i32 0, i32* %2, align 4
  br label %152

146:                                              ; preds = %91
  %147 = load i32, i32* @CAIF_SENDING, align 4
  %148 = load %struct.ser_device*, %struct.ser_device** %3, align 8
  %149 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %148, i32 0, i32 1
  %150 = call i32 @clear_bit(i32 %147, i32* %149)
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %146, %141, %20
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(%struct.TYPE_11__*) #1

declare dso_local i32 @tty_write_room(%struct.tty_struct*) #1

declare dso_local i32 @update_tty_status(%struct.ser_device*) #1

declare dso_local i32 @ldisc_receive(%struct.tty_struct*, i32, i32*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(%struct.TYPE_11__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
