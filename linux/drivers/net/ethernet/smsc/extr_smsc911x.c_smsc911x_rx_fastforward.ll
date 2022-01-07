; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_rx_fastforward.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_rx_fastforward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { i32 }

@RX_DP_CTRL = common dso_local global i32 0, align 4
@RX_DP_CTRL_RX_FFWD_ = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Timed out waiting for RX FFWD to finish, RX_DP_CTRL: 0x%08X\00", align 1
@RX_DATA_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsc911x_data*, i32)* @smsc911x_rx_fastforward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc911x_rx_fastforward(%struct.smsc911x_data* %0, i32 %1) #0 {
  %3 = alloca %struct.smsc911x_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.smsc911x_data* %0, %struct.smsc911x_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp uge i32 %8, 4
  %10 = zext i1 %9 to i32
  %11 = call i64 @likely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %2
  store i32 500, i32* %5, align 4
  %14 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %15 = load i32, i32* @RX_DP_CTRL, align 4
  %16 = load i32, i32* @RX_DP_CTRL_RX_FFWD_, align 4
  %17 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %14, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %32, %13
  %19 = call i32 @udelay(i32 1)
  %20 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %21 = load i32, i32* @RX_DP_CTRL, align 4
  %22 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @RX_DP_CTRL_RX_FFWD_, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, -1
  store i32 %30, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %28, %23
  %33 = phi i1 [ false, %23 ], [ %31, %28 ]
  br i1 %33, label %18, label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %42 = load i32, i32* @hw, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @SMSC_WARN(%struct.smsc911x_data* %41, i32 %42, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %40, %34
  br label %56

46:                                               ; preds = %2
  br label %47

47:                                               ; preds = %51, %46
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %48, -1
  store i32 %49, i32* %4, align 4
  %50 = icmp ne i32 %48, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %53 = load i32, i32* @RX_DATA_FIFO, align 4
  %54 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %52, i32 %53)
  store i32 %54, i32* %7, align 4
  br label %47

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %45
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @smsc911x_reg_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @smsc911x_reg_read(%struct.smsc911x_data*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @SMSC_WARN(%struct.smsc911x_data*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
