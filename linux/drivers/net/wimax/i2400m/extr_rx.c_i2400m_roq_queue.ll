; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_rx.c_i2400m_roq_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_rx.c_i2400m_roq_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.i2400m_roq = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"(i2400m %p roq %p skb %p lbn %u) = void\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"SW BUG? queue nsn %d (lbn %u ws %u)\0A\00", align 1
@I2400M_RT_WARM = common dso_local global i32 0, align 4
@I2400M_RO_TYPE_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400m*, %struct.i2400m_roq*, %struct.sk_buff*, i32)* @i2400m_roq_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400m_roq_queue(%struct.i2400m* %0, %struct.i2400m_roq* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.i2400m*, align 8
  %6 = alloca %struct.i2400m_roq*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %5, align 8
  store %struct.i2400m_roq* %1, %struct.i2400m_roq** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %13 = call %struct.device* @i2400m_dev(%struct.i2400m* %12)
  store %struct.device* %13, %struct.device** %9, align 8
  %14 = load %struct.device*, %struct.device** %9, align 8
  %15 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %16 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @d_fnstart(i32 2, %struct.device* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %15, %struct.i2400m_roq* %16, %struct.sk_buff* %17, i32 %18)
  %20 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %21 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %20, i32 0, i32 1
  %22 = call i32 @skb_queue_len(i32* %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @__i2400m_roq_nsn(%struct.i2400m_roq* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp uge i32 %26, 1024
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %4
  %32 = load %struct.device*, %struct.device** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %36 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34, i32 %37)
  %39 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %40 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %41 = call i32 @i2400m_roq_log_dump(%struct.i2400m* %39, %struct.i2400m_roq* %40)
  %42 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %43 = load i32, i32* @I2400M_RT_WARM, align 4
  %44 = call i32 @i2400m_reset(%struct.i2400m* %42, i32 %43)
  br label %62

45:                                               ; preds = %4
  %46 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %47 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @__i2400m_roq_queue(%struct.i2400m* %46, %struct.i2400m_roq* %47, %struct.sk_buff* %48, i32 %49, i32 %50)
  %52 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %53 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %54 = load i32, i32* @I2400M_RO_TYPE_PACKET, align 4
  %55 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %56 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @i2400m_roq_log_add(%struct.i2400m* %52, %struct.i2400m_roq* %53, i32 %54, i32 %57, i32 %58, i32 %59, i32 %60, i32 -1)
  br label %62

62:                                               ; preds = %45, %31
  %63 = load %struct.device*, %struct.device** %9, align 8
  %64 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %65 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @d_fnend(i32 2, %struct.device* %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %64, %struct.i2400m_roq* %65, %struct.sk_buff* %66, i32 %67)
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_roq*, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @__i2400m_roq_nsn(%struct.i2400m_roq*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @i2400m_roq_log_dump(%struct.i2400m*, %struct.i2400m_roq*) #1

declare dso_local i32 @i2400m_reset(%struct.i2400m*, i32) #1

declare dso_local i32 @__i2400m_roq_queue(%struct.i2400m*, %struct.i2400m_roq*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @i2400m_roq_log_add(%struct.i2400m*, %struct.i2400m_roq*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_roq*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
