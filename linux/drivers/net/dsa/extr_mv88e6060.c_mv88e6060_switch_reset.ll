; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mv88e6060.c_mv88e6060_switch_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mv88e6060.c_mv88e6060_switch_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6060_priv = type { i32 }

@MV88E6060_PORTS = common dso_local global i32 0, align 4
@PORT_CONTROL = common dso_local global i32 0, align 4
@PORT_CONTROL_STATE_MASK = common dso_local global i32 0, align 4
@REG_GLOBAL = common dso_local global i32 0, align 4
@GLOBAL_ATU_CONTROL = common dso_local global i32 0, align 4
@GLOBAL_ATU_CONTROL_SWRESET = common dso_local global i32 0, align 4
@GLOBAL_ATU_CONTROL_LEARNDIS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@GLOBAL_STATUS = common dso_local global i32 0, align 4
@GLOBAL_STATUS_INIT_READY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6060_priv*)* @mv88e6060_switch_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6060_switch_reset(%struct.mv88e6060_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mv88e6060_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.mv88e6060_priv* %0, %struct.mv88e6060_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %36, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MV88E6060_PORTS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  %12 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @REG_PORT(i32 %13)
  %15 = load i32, i32* @PORT_CONTROL, align 4
  %16 = call i32 @reg_read(%struct.mv88e6060_priv* %12, i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %89

21:                                               ; preds = %11
  %22 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @REG_PORT(i32 %23)
  %25 = load i32, i32* @PORT_CONTROL, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @PORT_CONTROL_STATE_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = call i32 @reg_write(%struct.mv88e6060_priv* %22, i32 %24, i32 %25, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %89

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %7

39:                                               ; preds = %7
  %40 = call i32 @usleep_range(i32 2000, i32 4000)
  %41 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %3, align 8
  %42 = load i32, i32* @REG_GLOBAL, align 4
  %43 = load i32, i32* @GLOBAL_ATU_CONTROL, align 4
  %44 = load i32, i32* @GLOBAL_ATU_CONTROL_SWRESET, align 4
  %45 = load i32, i32* @GLOBAL_ATU_CONTROL_LEARNDIS, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @reg_write(%struct.mv88e6060_priv* %41, i32 %42, i32 %43, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %89

52:                                               ; preds = %39
  %53 = load i32, i32* @jiffies, align 4
  %54 = load i32, i32* @HZ, align 4
  %55 = mul nsw i32 1, %54
  %56 = add nsw i32 %53, %55
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %78, %52
  %59 = load i32, i32* @jiffies, align 4
  %60 = load i64, i64* %6, align 8
  %61 = call i64 @time_before(i32 %59, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %58
  %64 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %3, align 8
  %65 = load i32, i32* @REG_GLOBAL, align 4
  %66 = load i32, i32* @GLOBAL_STATUS, align 4
  %67 = call i32 @reg_read(%struct.mv88e6060_priv* %64, i32 %65, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %89

72:                                               ; preds = %63
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @GLOBAL_STATUS_INIT_READY, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %80

78:                                               ; preds = %72
  %79 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %58

80:                                               ; preds = %77, %58
  %81 = load i32, i32* @jiffies, align 4
  %82 = load i64, i64* %6, align 8
  %83 = call i64 @time_after(i32 %81, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @ETIMEDOUT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %89

88:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %85, %70, %50, %33, %19
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @reg_read(%struct.mv88e6060_priv*, i32, i32) #1

declare dso_local i32 @REG_PORT(i32) #1

declare dso_local i32 @reg_write(%struct.mv88e6060_priv*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i64 @time_after(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
