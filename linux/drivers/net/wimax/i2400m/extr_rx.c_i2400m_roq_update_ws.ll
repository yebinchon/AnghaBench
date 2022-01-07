; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_rx.c_i2400m_roq_update_ws.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_rx.c_i2400m_roq_update_ws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.i2400m_roq = type { i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"(i2400m %p roq %p sn %u)\0A\00", align 1
@I2400M_RO_TYPE_WS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"(i2400m %p roq %p sn %u) = void\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400m*, %struct.i2400m_roq*, i32)* @i2400m_roq_update_ws to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400m_roq_update_ws(%struct.i2400m* %0, %struct.i2400m_roq* %1, i32 %2) #0 {
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca %struct.i2400m_roq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %4, align 8
  store %struct.i2400m_roq* %1, %struct.i2400m_roq** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %12 = call %struct.device* @i2400m_dev(%struct.i2400m* %11)
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %15 = load %struct.i2400m_roq*, %struct.i2400m_roq** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @d_fnstart(i32 2, %struct.device* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %14, %struct.i2400m_roq* %15, i32 %16)
  %18 = load %struct.i2400m_roq*, %struct.i2400m_roq** %5, align 8
  %19 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.i2400m_roq*, %struct.i2400m_roq** %5, align 8
  %22 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %21, i32 0, i32 1
  %23 = call i32 @skb_queue_len(i32* %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %25 = load %struct.i2400m_roq*, %struct.i2400m_roq** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @__i2400m_roq_update_ws(%struct.i2400m* %24, %struct.i2400m_roq* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %29 = load %struct.i2400m_roq*, %struct.i2400m_roq** %5, align 8
  %30 = load i32, i32* @I2400M_RO_TYPE_WS, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.i2400m_roq*, %struct.i2400m_roq** %5, align 8
  %36 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @i2400m_roq_log_add(%struct.i2400m* %28, %struct.i2400m_roq* %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %37)
  %39 = load %struct.device*, %struct.device** %7, align 8
  %40 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %41 = load %struct.i2400m_roq*, %struct.i2400m_roq** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @d_fnstart(i32 2, %struct.device* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.i2400m* %40, %struct.i2400m_roq* %41, i32 %42)
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_roq*, i32) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @__i2400m_roq_update_ws(%struct.i2400m*, %struct.i2400m_roq*, i32) #1

declare dso_local i32 @i2400m_roq_log_add(%struct.i2400m*, %struct.i2400m_roq*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
