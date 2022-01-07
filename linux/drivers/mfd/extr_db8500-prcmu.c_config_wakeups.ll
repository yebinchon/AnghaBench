; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_config_wakeups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_config_wakeups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@MB0H_CONFIG_WAKEUPS_EXE = common dso_local global i32 0, align 4
@MB0H_CONFIG_WAKEUPS_SLEEP = common dso_local global i32 0, align 4
@config_wakeups.last_dbb_events = internal global i32 0, align 4
@config_wakeups.last_abb_events = internal global i32 0, align 4
@mb0_transfer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@WAKEUP_BIT_AC_WAKE_ACK = common dso_local global i32 0, align 4
@WAKEUP_BIT_AC_SLEEP_ACK = common dso_local global i32 0, align 4
@PRCM_MBOX_CPU_VAL = common dso_local global i32 0, align 4
@tcdm_base = common dso_local global i64 0, align 8
@PRCM_REQ_MB0_WAKEUP_8500 = common dso_local global i64 0, align 8
@PRCM_REQ_MB0_WAKEUP_4500 = common dso_local global i64 0, align 8
@PRCM_MBOX_HEADER_REQ_MB0 = common dso_local global i64 0, align 8
@PRCM_MBOX_CPU_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @config_wakeups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_wakeups() #0 {
  %1 = alloca [2 x i32], align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %6 = load i32, i32* @MB0H_CONFIG_WAKEUPS_EXE, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds i32, i32* %5, i64 1
  %8 = load i32, i32* @MB0H_CONFIG_WAKEUPS_SLEEP, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb0_transfer, i32 0, i32 0, i32 0), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb0_transfer, i32 0, i32 0, i32 1), align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* @WAKEUP_BIT_AC_WAKE_ACK, align 4
  %13 = load i32, i32* @WAKEUP_BIT_AC_SLEEP_ACK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %2, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb0_transfer, i32 0, i32 0, i32 2), align 4
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @config_wakeups.last_dbb_events, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %0
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @config_wakeups.last_abb_events, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %67

26:                                               ; preds = %21, %0
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %61, %26
  %28 = load i32, i32* %4, align 4
  %29 = icmp ult i32 %28, 2
  br i1 %29, label %30, label %64

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %37, %30
  %32 = load i32, i32* @PRCM_MBOX_CPU_VAL, align 4
  %33 = call i32 @readl(i32 %32)
  %34 = call i32 @MBOX_BIT(i32 0)
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 (...) @cpu_relax()
  br label %31

39:                                               ; preds = %31
  %40 = load i32, i32* %2, align 4
  %41 = load i64, i64* @tcdm_base, align 8
  %42 = load i64, i64* @PRCM_REQ_MB0_WAKEUP_8500, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %40, i64 %43)
  %45 = load i32, i32* %3, align 4
  %46 = load i64, i64* @tcdm_base, align 8
  %47 = load i64, i64* @PRCM_REQ_MB0_WAKEUP_4500, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %45, i64 %48)
  %50 = load i32, i32* %4, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* @tcdm_base, align 8
  %55 = load i64, i64* @PRCM_MBOX_HEADER_REQ_MB0, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writeb(i32 %53, i64 %56)
  %58 = call i32 @MBOX_BIT(i32 0)
  %59 = load i64, i64* @PRCM_MBOX_CPU_SET, align 8
  %60 = call i32 @writel(i32 %58, i64 %59)
  br label %61

61:                                               ; preds = %39
  %62 = load i32, i32* %4, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %27

64:                                               ; preds = %27
  %65 = load i32, i32* %2, align 4
  store i32 %65, i32* @config_wakeups.last_dbb_events, align 4
  %66 = load i32, i32* %3, align 4
  store i32 %66, i32* @config_wakeups.last_abb_events, align 4
  br label %67

67:                                               ; preds = %64, %25
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @MBOX_BIT(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
