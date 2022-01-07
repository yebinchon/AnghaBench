; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_netdev.c_i2400m_net_wake_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_netdev.c_i2400m_net_wake_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32, %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"(i2400m %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"(i2400m %p) = void\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2400m_net_wake_stop(%struct.i2400m* %0) #0 {
  %2 = alloca %struct.i2400m*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  store %struct.i2400m* %0, %struct.i2400m** %2, align 8
  %6 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %7 = call %struct.device* @i2400m_dev(%struct.i2400m* %6)
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %10 = call i32 @d_fnstart(i32 3, %struct.device* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %9)
  %11 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %12 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %11, i32 0, i32 2
  %13 = call i32 @cancel_work_sync(i32* %12)
  %14 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %15 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %14, i32 0, i32 0
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %19 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %18, i32 0, i32 1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  store %struct.sk_buff* %20, %struct.sk_buff** %4, align 8
  %21 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %22 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %21, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %22, align 8
  %23 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %24 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %23, i32 0, i32 0
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %31 = call i32 @i2400m_put(%struct.i2400m* %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @kfree_skb(%struct.sk_buff* %32)
  br label %34

34:                                               ; preds = %29, %1
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %37 = call i32 @d_fnend(i32 3, %struct.device* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.i2400m* %36)
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @i2400m_put(%struct.i2400m*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
