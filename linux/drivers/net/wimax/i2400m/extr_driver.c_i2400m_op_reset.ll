; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_driver.c_i2400m_op_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_driver.c_i2400m_op_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wimax_dev = type { i32 }
%struct.i2400m = type { i32, %struct.i2400m_reset_ctx* }
%struct.i2400m_reset_ctx = type { i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"(wimax_dev %p)\0A\00", align 1
@I2400M_RT_WARM = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"(wimax_dev %p) = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wimax_dev*)* @i2400m_op_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400m_op_reset(%struct.wimax_dev* %0) #0 {
  %2 = alloca %struct.wimax_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.i2400m_reset_ctx, align 4
  store %struct.wimax_dev* %0, %struct.wimax_dev** %2, align 8
  %7 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %8 = call %struct.i2400m* @wimax_dev_to_i2400m(%struct.wimax_dev* %7)
  store %struct.i2400m* %8, %struct.i2400m** %4, align 8
  %9 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %10 = call %struct.device* @i2400m_dev(%struct.i2400m* %9)
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = getelementptr inbounds %struct.i2400m_reset_ctx, %struct.i2400m_reset_ctx* %6, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.i2400m_reset_ctx, %struct.i2400m_reset_ctx* %6, i32 0, i32 1
  %13 = getelementptr inbounds %struct.i2400m_reset_ctx, %struct.i2400m_reset_ctx* %6, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @COMPLETION_INITIALIZER_ONSTACK(i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %18 = call i32 @d_fnstart(i32 4, %struct.device* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.wimax_dev* %17)
  %19 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %20 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %23 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %22, i32 0, i32 1
  store %struct.i2400m_reset_ctx* %6, %struct.i2400m_reset_ctx** %23, align 8
  %24 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %25 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %28 = load i32, i32* @I2400M_RT_WARM, align 4
  %29 = call i32 @i2400m_reset(%struct.i2400m* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %59

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.i2400m_reset_ctx, %struct.i2400m_reset_ctx* %6, i32 0, i32 1
  %35 = load i32, i32* @HZ, align 4
  %36 = mul nsw i32 4, %35
  %37 = call i32 @wait_for_completion_timeout(i32* %34, i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @ETIMEDOUT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %50

43:                                               ; preds = %33
  %44 = load i32, i32* %3, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.i2400m_reset_ctx, %struct.i2400m_reset_ctx* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %40
  %51 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %52 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %51, i32 0, i32 0
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %55 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %54, i32 0, i32 1
  store %struct.i2400m_reset_ctx* null, %struct.i2400m_reset_ctx** %55, align 8
  %56 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %57 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  br label %59

59:                                               ; preds = %50, %32
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @d_fnend(i32 4, %struct.device* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.wimax_dev* %61, i32 %62)
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.i2400m* @wimax_dev_to_i2400m(%struct.wimax_dev*) #1

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @COMPLETION_INITIALIZER_ONSTACK(i32) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.wimax_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i2400m_reset(%struct.i2400m*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.wimax_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
