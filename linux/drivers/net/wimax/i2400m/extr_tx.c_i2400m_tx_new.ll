; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_tx.c_i2400m_tx_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_tx.c_i2400m_tx_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m_msg_hdr = type { i32 }
%struct.i2400m = type { i32, %struct.i2400m_msg_hdr*, i32 }
%struct.device = type { i32 }

@I2400M_TX_PLD_SIZE = common dso_local global i32 0, align 4
@TAIL_FULL = common dso_local global %struct.i2400m_msg_hdr* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"new TX message: tail full, trying head\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"new TX message: %p @%zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400m*)* @i2400m_tx_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400m_tx_new(%struct.i2400m* %0) #0 {
  %2 = alloca %struct.i2400m*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.i2400m_msg_hdr*, align 8
  %5 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %2, align 8
  %6 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %7 = call %struct.device* @i2400m_dev(%struct.i2400m* %6)
  store %struct.device* %7, %struct.device** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %9 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %8, i32 0, i32 1
  %10 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %9, align 8
  %11 = icmp ne %struct.i2400m_msg_hdr* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  br label %14

14:                                               ; preds = %29, %1
  %15 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %16 = load i32, i32* @I2400M_TX_PLD_SIZE, align 4
  %17 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %18 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.i2400m_msg_hdr* @i2400m_tx_fifo_push(%struct.i2400m* %15, i32 %16, i32 %19, i32 %20)
  store %struct.i2400m_msg_hdr* %21, %struct.i2400m_msg_hdr** %4, align 8
  %22 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %23 = icmp eq %struct.i2400m_msg_hdr* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %42

25:                                               ; preds = %14
  %26 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %27 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** @TAIL_FULL, align 8
  %28 = icmp eq %struct.i2400m_msg_hdr* %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %31 = call i32 @i2400m_tx_skip_tail(%struct.i2400m* %30)
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %14

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %37 = load i32, i32* @I2400M_TX_PLD_SIZE, align 4
  %38 = call i32 @memset(%struct.i2400m_msg_hdr* %36, i32 0, i32 %37)
  %39 = load i32, i32* @I2400M_TX_PLD_SIZE, align 4
  %40 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %41 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %24
  %43 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %44 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %45 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %44, i32 0, i32 1
  store %struct.i2400m_msg_hdr* %43, %struct.i2400m_msg_hdr** %45, align 8
  %46 = load %struct.device*, %struct.device** %3, align 8
  %47 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %48 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %49 = bitcast %struct.i2400m_msg_hdr* %48 to i8*
  %50 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %51 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = sub i64 0, %53
  %55 = getelementptr i8, i8* %49, i64 %54
  %56 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.i2400m_msg_hdr* %47, i8* %55)
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.i2400m_msg_hdr* @i2400m_tx_fifo_push(%struct.i2400m*, i32, i32, i32) #1

declare dso_local i32 @i2400m_tx_skip_tail(%struct.i2400m*) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, ...) #1

declare dso_local i32 @memset(%struct.i2400m_msg_hdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
