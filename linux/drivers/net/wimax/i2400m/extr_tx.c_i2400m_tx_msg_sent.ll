; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_tx.c_i2400m_tx_msg_sent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_tx.c_i2400m_tx_msg_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32, i32, i32, i64, i32* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"(i2400m %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"TX: sent %zu b\0A\00", align 1
@I2400M_TX_BUF_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"(i2400m %p) = void\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2400m_tx_msg_sent(%struct.i2400m* %0) #0 {
  %2 = alloca %struct.i2400m*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %2, align 8
  %6 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %7 = call %struct.device* @i2400m_dev(%struct.i2400m* %6)
  store %struct.device* %7, %struct.device** %5, align 8
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %10 = call i32 @d_fnstart(i32 3, %struct.device* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %9)
  %11 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %12 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %11, i32 0, i32 2
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %16 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %63

20:                                               ; preds = %1
  %21 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %22 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %25 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %27, %23
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 8
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %32 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @d_printf(i32 2, %struct.device* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %36 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %38 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %41 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ugt i32 %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %47 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @I2400M_TX_BUF_SIZE, align 4
  %50 = udiv i32 %48, %49
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* @I2400M_TX_BUF_SIZE, align 4
  %52 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %53 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = urem i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @I2400M_TX_BUF_SIZE, align 4
  %58 = mul i32 %56, %57
  %59 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %60 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sub i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %20, %19
  %64 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %65 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %64, i32 0, i32 2
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %70 = call i32 @d_fnend(i32 3, %struct.device* %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %struct.i2400m* %69)
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
