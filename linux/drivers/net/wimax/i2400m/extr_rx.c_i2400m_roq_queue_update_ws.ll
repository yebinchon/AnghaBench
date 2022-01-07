; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_rx.c_i2400m_roq_queue_update_ws.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_rx.c_i2400m_roq_queue_update_ws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.i2400m_roq = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.device = type { i32 }
%struct.i2400m_roq_data = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"(i2400m %p roq %p skb %p sn %u)\0A\00", align 1
@I2400M_RO_TYPE_PACKET_WS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"(i2400m %p roq %p skb %p sn %u) = void\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400m*, %struct.i2400m_roq*, %struct.sk_buff*, i32)* @i2400m_roq_queue_update_ws to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400m_roq_queue_update_ws(%struct.i2400m* %0, %struct.i2400m_roq* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.i2400m*, align 8
  %6 = alloca %struct.i2400m_roq*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.i2400m_roq_data*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %5, align 8
  store %struct.i2400m_roq* %1, %struct.i2400m_roq** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %15 = call %struct.device* @i2400m_dev(%struct.i2400m* %14)
  store %struct.device* %15, %struct.device** %9, align 8
  %16 = load %struct.device*, %struct.device** %9, align 8
  %17 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %18 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @d_fnstart(i32 2, %struct.device* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %17, %struct.i2400m_roq* %18, %struct.sk_buff* %19, i32 %20)
  %22 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %23 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %22, i32 0, i32 1
  %24 = call i32 @skb_queue_len(i32* %23)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @__i2400m_roq_nsn(%struct.i2400m_roq* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %29 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = bitcast i32* %35 to %struct.i2400m_roq_data*
  store %struct.i2400m_roq_data* %36, %struct.i2400m_roq_data** %13, align 8
  %37 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = load %struct.i2400m_roq_data*, %struct.i2400m_roq_data** %13, align 8
  %40 = getelementptr inbounds %struct.i2400m_roq_data, %struct.i2400m_roq_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @i2400m_net_erx(%struct.i2400m* %37, %struct.sk_buff* %38, i32 %41)
  br label %50

43:                                               ; preds = %4
  %44 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %45 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @__i2400m_roq_queue(%struct.i2400m* %44, %struct.i2400m_roq* %45, %struct.sk_buff* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %33
  %51 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %52 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %53, 1
  %55 = call i32 @__i2400m_roq_update_ws(%struct.i2400m* %51, %struct.i2400m_roq* %52, i32 %54)
  %56 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %57 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %58 = load i32, i32* @I2400M_RO_TYPE_PACKET_WS, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %64 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @i2400m_roq_log_add(%struct.i2400m* %56, %struct.i2400m_roq* %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %65)
  %67 = load %struct.device*, %struct.device** %9, align 8
  %68 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %69 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @d_fnend(i32 2, %struct.device* %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), %struct.i2400m* %68, %struct.i2400m_roq* %69, %struct.sk_buff* %70, i32 %71)
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_roq*, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @__i2400m_roq_nsn(%struct.i2400m_roq*, i32) #1

declare dso_local i32 @i2400m_net_erx(%struct.i2400m*, %struct.sk_buff*, i32) #1

declare dso_local i32 @__i2400m_roq_queue(%struct.i2400m*, %struct.i2400m_roq*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @__i2400m_roq_update_ws(%struct.i2400m*, %struct.i2400m_roq*, i32) #1

declare dso_local i32 @i2400m_roq_log_add(%struct.i2400m*, %struct.i2400m_roq*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_roq*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
