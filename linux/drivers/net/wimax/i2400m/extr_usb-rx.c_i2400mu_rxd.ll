; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_usb-rx.c_i2400mu_rxd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_usb-rx.c_i2400mu_rxd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400mu = type { i32, %struct.TYPE_4__*, i32*, i32, i32, i32, i32, i32, %struct.i2400m }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.i2400m = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"(i2400mu %p)\0A\00", align 1
@current = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"RX: waiting for messages\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"RX: reading up to %d bytes\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"RX: can't allocate skb [%d bytes]\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EDC_MAX_ERRORS = common dso_local global i32 0, align 4
@EDC_ERROR_TIMEFRAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"(i2400mu %p) = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"RX: maximum errors in received buffer exceeded; resetting device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @i2400mu_rxd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400mu_rxd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2400mu*, align 8
  %5 = alloca %struct.i2400m*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.i2400mu*
  store %struct.i2400mu* %13, %struct.i2400mu** %4, align 8
  %14 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %15 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %14, i32 0, i32 8
  store %struct.i2400m* %15, %struct.i2400m** %5, align 8
  %16 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %17 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %6, align 8
  %20 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %21 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %7, align 8
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %26 = call i32 @d_fnstart(i32 4, %struct.device* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.i2400mu* %25)
  %27 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %28 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %27, i32 0, i32 0
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %32 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load i32*, i32** @current, align 8
  %38 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %39 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %41 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %40, i32 0, i32 0
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  br label %44

44:                                               ; preds = %1, %67, %81, %107, %139
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  %47 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %48 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = call i64 (...) @kthread_should_stop()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %44
  %53 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %54 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %53, i32 0, i32 6
  %55 = call i64 @atomic_read(i32* %54)
  store i64 %55, i64* %8, align 8
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %52, %44
  %58 = phi i1 [ true, %44 ], [ %56, %52 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @wait_event_interruptible(i32 %49, i32 %59)
  %61 = call i64 (...) @kthread_should_stop()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %142

64:                                               ; preds = %57
  %65 = load i64, i64* %8, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %44

68:                                               ; preds = %64
  %69 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %70 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %9, align 4
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load %struct.net_device*, %struct.net_device** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call %struct.sk_buff* @__netdev_alloc_skb(%struct.net_device* %75, i32 %76, i32 %77)
  store %struct.sk_buff* %78, %struct.sk_buff** %10, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %80 = icmp eq %struct.sk_buff* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %68
  %82 = load %struct.device*, %struct.device** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = call i32 @msleep(i32 50)
  br label %44

86:                                               ; preds = %68
  %87 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %89 = call %struct.sk_buff* @i2400mu_rx(%struct.i2400mu* %87, %struct.sk_buff* %88)
  store %struct.sk_buff* %89, %struct.sk_buff** %10, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %91 = call i32 @PTR_ERR(%struct.sk_buff* %90)
  store i32 %91, i32* %3, align 4
  %92 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %93 = call i64 @IS_ERR(%struct.sk_buff* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %143

96:                                               ; preds = %86
  %97 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %98 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %97, i32 0, i32 6
  %99 = call i32 @atomic_dec(i32* %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %101 = icmp eq %struct.sk_buff* %100, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %96
  %103 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102, %96
  %108 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %109 = call i32 @kfree_skb(%struct.sk_buff* %108)
  br label %44

110:                                              ; preds = %102
  %111 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %112 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %119 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %117
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 4
  %124 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %126 = call i32 @i2400m_rx(%struct.i2400m* %124, %struct.sk_buff* %125)
  store i32 %126, i32* %3, align 4
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* @EIO, align 4
  %129 = sub nsw i32 0, %128
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %110
  %132 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %133 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %132, i32 0, i32 3
  %134 = load i32, i32* @EDC_MAX_ERRORS, align 4
  %135 = load i32, i32* @EDC_ERROR_TIMEFRAME, align 4
  %136 = call i64 @edc_inc(i32* %133, i32 %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  br label %159

139:                                              ; preds = %131, %110
  %140 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %141 = call i32 @i2400mu_rx_size_maybe_shrink(%struct.i2400mu* %140)
  br label %44

142:                                              ; preds = %63
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %159, %142, %95
  %144 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %145 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %144, i32 0, i32 0
  %146 = load i64, i64* %11, align 8
  %147 = call i32 @spin_lock_irqsave(i32* %145, i64 %146)
  %148 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %149 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %148, i32 0, i32 2
  store i32* null, i32** %149, align 8
  %150 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %151 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %150, i32 0, i32 0
  %152 = load i64, i64* %11, align 8
  %153 = call i32 @spin_unlock_irqrestore(i32* %151, i64 %152)
  %154 = load %struct.device*, %struct.device** %6, align 8
  %155 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @d_fnend(i32 4, %struct.device* %154, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), %struct.i2400mu* %155, i32 %156)
  %158 = load i32, i32* %3, align 4
  ret i32 %158

159:                                              ; preds = %138
  %160 = load %struct.device*, %struct.device** %6, align 8
  %161 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %160, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0))
  %162 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %163 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %162, i32 0, i32 1
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = call i32 @usb_queue_reset_device(%struct.TYPE_4__* %164)
  br label %143
}

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400mu*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, ...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.sk_buff* @__netdev_alloc_skb(%struct.net_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local %struct.sk_buff* @i2400mu_rx(%struct.i2400mu*, %struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @i2400m_rx(%struct.i2400m*, %struct.sk_buff*) #1

declare dso_local i64 @edc_inc(i32*, i32, i32) #1

declare dso_local i32 @i2400mu_rx_size_maybe_shrink(%struct.i2400mu*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400mu*, i32) #1

declare dso_local i32 @usb_queue_reset_device(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
