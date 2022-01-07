; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_new_config_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_new_config_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@REG_G_ACTIVE_PREV_CFG = common dso_local global i32 0, align 4
@REG_G_PREV_CFG_CHG = common dso_local global i32 0, align 4
@REG_G_NEW_CFG_SYNC = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @s5k6aa_new_config_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6aa_new_config_sync(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @msecs_to_jiffies(i32 %12)
  %14 = add i64 %11, %13
  store i64 %14, i64* %8, align 8
  store i32 1, i32* %9, align 4
  %15 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %16 = load i32, i32* @REG_G_ACTIVE_PREV_CFG, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @s5k6aa_write(%struct.i2c_client* %15, i32 %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %23 = load i32, i32* @REG_G_PREV_CFG_CHG, align 4
  %24 = call i32 @s5k6aa_write(%struct.i2c_client* %22, i32 %23, i32 1)
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %21, %3
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %30 = load i32, i32* @REG_G_NEW_CFG_SYNC, align 4
  %31 = call i32 @s5k6aa_write(%struct.i2c_client* %29, i32 %30, i32 1)
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %66

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %54, %37
  %39 = load i32, i32* %10, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i64, i64* %8, align 8
  %43 = call i64 @time_is_after_jiffies(i64 %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i1 [ false, %38 ], [ %44, %41 ]
  br i1 %46, label %47, label %56

47:                                               ; preds = %45
  %48 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %49 = load i32, i32* @REG_G_NEW_CFG_SYNC, align 4
  %50 = call i32 @s5k6aa_read(%struct.i2c_client* %48, i32 %49, i32* %9)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %66

54:                                               ; preds = %47
  %55 = call i32 @usleep_range(i32 1000, i32 5000)
  br label %38

56:                                               ; preds = %45
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  br label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @ETIMEDOUT, align 4
  %63 = sub nsw i32 0, %62
  br label %64

64:                                               ; preds = %61, %59
  %65 = phi i32 [ %60, %59 ], [ %63, %61 ]
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %53, %35
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @s5k6aa_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i32 @s5k6aa_read(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
