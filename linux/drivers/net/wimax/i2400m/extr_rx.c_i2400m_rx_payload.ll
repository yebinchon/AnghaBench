; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx_payload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.sk_buff = type { i32 }
%struct.i2400m_pld = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"RX: received payload type %u, %zu bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"RX: data payload %zu bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"ERX: data payload %zu bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"RX: HW BUG? unexpected payload type %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400m*, %struct.sk_buff*, i32, %struct.i2400m_pld*, i8*)* @i2400m_rx_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400m_rx_payload(%struct.i2400m* %0, %struct.sk_buff* %1, i32 %2, %struct.i2400m_pld* %3, i8* %4) #0 {
  %6 = alloca %struct.i2400m*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2400m_pld*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.i2400m_pld* %3, %struct.i2400m_pld** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %15 = call %struct.device* @i2400m_dev(%struct.i2400m* %14)
  store %struct.device* %15, %struct.device** %11, align 8
  %16 = load %struct.i2400m_pld*, %struct.i2400m_pld** %9, align 8
  %17 = call i64 @i2400m_pld_size(%struct.i2400m_pld* %16)
  store i64 %17, i64* %12, align 8
  %18 = load %struct.i2400m_pld*, %struct.i2400m_pld** %9, align 8
  %19 = call i32 @i2400m_pld_type(%struct.i2400m_pld* %18)
  store i32 %19, i32* %13, align 4
  %20 = load %struct.device*, %struct.device** %11, align 8
  %21 = load i32, i32* %13, align 4
  %22 = zext i32 %21 to i64
  %23 = load i64, i64* %12, align 8
  %24 = call i32 (i32, %struct.device*, i8*, i64, ...) @d_printf(i32 7, %struct.device* %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %23)
  %25 = load %struct.device*, %struct.device** %11, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @d_dump(i32 8, %struct.device* %25, i8* %26, i64 %27)
  %29 = load i32, i32* %13, align 4
  switch i32 %29, label %61 [
    i32 130, label %30
    i32 131, label %40
    i32 128, label %46
    i32 129, label %51
  ]

30:                                               ; preds = %5
  %31 = load %struct.device*, %struct.device** %11, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i32 (i32, %struct.device*, i8*, i64, ...) @d_printf(i32 3, %struct.device* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @i2400m_net_rx(%struct.i2400m* %34, %struct.sk_buff* %35, i32 %36, i8* %37, i64 %38)
  br label %69

40:                                               ; preds = %5
  %41 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @i2400m_rx_ctl(%struct.i2400m* %41, %struct.sk_buff* %42, i8* %43, i64 %44)
  br label %69

46:                                               ; preds = %5
  %47 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @i2400m_rx_trace(%struct.i2400m* %47, i8* %48, i64 %49)
  br label %69

51:                                               ; preds = %5
  %52 = load %struct.device*, %struct.device** %11, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i32 (i32, %struct.device*, i8*, i64, ...) @d_printf(i32 3, %struct.device* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  %55 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @i2400m_rx_edata(%struct.i2400m* %55, %struct.sk_buff* %56, i32 %57, i8* %58, i64 %59)
  br label %69

61:                                               ; preds = %5
  %62 = call i32 (...) @printk_ratelimit()
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.device*, %struct.device** %11, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %61
  br label %69

69:                                               ; preds = %68, %51, %46, %40, %30
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i64 @i2400m_pld_size(%struct.i2400m_pld*) #1

declare dso_local i32 @i2400m_pld_type(%struct.i2400m_pld*) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, i64, ...) #1

declare dso_local i32 @d_dump(i32, %struct.device*, i8*, i64) #1

declare dso_local i32 @i2400m_net_rx(%struct.i2400m*, %struct.sk_buff*, i32, i8*, i64) #1

declare dso_local i32 @i2400m_rx_ctl(%struct.i2400m*, %struct.sk_buff*, i8*, i64) #1

declare dso_local i32 @i2400m_rx_trace(%struct.i2400m*, i8*, i64) #1

declare dso_local i32 @i2400m_rx_edata(%struct.i2400m*, %struct.sk_buff*, i32, i8*, i64) #1

declare dso_local i32 @printk_ratelimit(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
