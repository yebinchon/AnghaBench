; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_tx.c_i2400m_tx_skip_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_tx.c_i2400m_tx_skip_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i64, %struct.i2400m_msg_hdr* }
%struct.i2400m_msg_hdr = type { i64 }
%struct.device = type { i32 }

@I2400M_TX_BUF_SIZE = common dso_local global i64 0, align 8
@I2400M_TX_SKIP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"skip tail: skipping %zu bytes @%zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400m*)* @i2400m_tx_skip_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400m_tx_skip_tail(%struct.i2400m* %0) #0 {
  %2 = alloca %struct.i2400m*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i2400m_msg_hdr*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %2, align 8
  %7 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %8 = call %struct.device* @i2400m_dev(%struct.i2400m* %7)
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %10 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @I2400M_TX_BUF_SIZE, align 8
  %13 = urem i64 %11, %12
  store i64 %13, i64* %4, align 8
  %14 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %15 = call i64 @__i2400m_tx_tail_room(%struct.i2400m* %14)
  store i64 %15, i64* %5, align 8
  %16 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %17 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %16, i32 0, i32 1
  %18 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %18, i64 %19
  store %struct.i2400m_msg_hdr* %20, %struct.i2400m_msg_hdr** %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %46

27:                                               ; preds = %1
  %28 = load i64, i64* %5, align 8
  %29 = icmp ult i64 %28, 8
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @I2400M_TX_SKIP, align 8
  %34 = or i64 %32, %33
  %35 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %6, align 8
  %36 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @d_printf(i32 2, %struct.device* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %38, i64 %39)
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %43 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, %41
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %27, %26
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i64 @__i2400m_tx_tail_room(%struct.i2400m*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
