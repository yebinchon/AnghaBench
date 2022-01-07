; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_read_mailbox_0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_read_mailbox_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@tcdm_base = common dso_local global i64 0, align 8
@PRCM_MBOX_HEADER_ACK_MB0 = common dso_local global i64 0, align 8
@PRCM_ACK_MB0_READ_POINTER = common dso_local global i64 0, align 8
@PRCM_ACK_MB0_WAKEUP_1_8500 = common dso_local global i64 0, align 8
@PRCM_ACK_MB0_WAKEUP_0_8500 = common dso_local global i64 0, align 8
@WAKEUP_BIT_AC_WAKE_ACK = common dso_local global i32 0, align 4
@WAKEUP_BIT_AC_SLEEP_ACK = common dso_local global i32 0, align 4
@mb0_transfer = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@WAKEUP_BIT_SYSCLK_OK = common dso_local global i32 0, align 4
@mb3_transfer = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@NUM_PRCMU_WAKEUPS = common dso_local global i32 0, align 4
@prcmu_irq_bit = common dso_local global i32* null, align 8
@db8500_irq_domain = common dso_local global i32 0, align 4
@PRCM_ARM_IT1_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_mailbox_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_mailbox_0() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i64, i64* @tcdm_base, align 8
  %6 = load i64, i64* @PRCM_MBOX_HEADER_ACK_MB0, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @readb(i64 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %70 [
    i32 129, label %10
    i32 128, label %10
  ]

10:                                               ; preds = %0, %0
  %11 = load i64, i64* @tcdm_base, align 8
  %12 = load i64, i64* @PRCM_ACK_MB0_READ_POINTER, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readb(i64 %13)
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load i64, i64* @tcdm_base, align 8
  %19 = load i64, i64* @PRCM_ACK_MB0_WAKEUP_1_8500, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %2, align 4
  br label %27

22:                                               ; preds = %10
  %23 = load i64, i64* @tcdm_base, align 8
  %24 = load i64, i64* @PRCM_ACK_MB0_WAKEUP_0_8500, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @WAKEUP_BIT_AC_WAKE_ACK, align 4
  %30 = load i32, i32* @WAKEUP_BIT_AC_SLEEP_ACK, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 @complete(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mb0_transfer, i32 0, i32 1))
  br label %36

36:                                               ; preds = %34, %27
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @WAKEUP_BIT_SYSCLK_OK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 @complete(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mb3_transfer, i32 0, i32 0))
  br label %43

43:                                               ; preds = %41, %36
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mb0_transfer, i32 0, i32 0, i32 0), align 4
  %45 = load i32, i32* %2, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %66, %43
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @NUM_PRCMU_WAKEUPS, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %47
  %52 = load i32, i32* %2, align 4
  %53 = load i32*, i32** @prcmu_irq_bit, align 8
  %54 = load i32, i32* %3, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %52, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = load i32, i32* @db8500_irq_domain, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @irq_find_mapping(i32 %61, i32 %62)
  %64 = call i32 @generic_handle_irq(i32 %63)
  br label %65

65:                                               ; preds = %60, %51
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %3, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %47

69:                                               ; preds = %47
  store i32 1, i32* %1, align 4
  br label %73

70:                                               ; preds = %0
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @print_unknown_header_warning(i32 0, i32 %71)
  store i32 0, i32* %1, align 4
  br label %73

73:                                               ; preds = %70, %69
  %74 = call i32 @MBOX_BIT(i32 0)
  %75 = load i32, i32* @PRCM_ARM_IT1_CLR, align 4
  %76 = call i32 @writel(i32 %74, i32 %75)
  %77 = load i32, i32* %1, align 4
  ret i32 %77
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @print_unknown_header_warning(i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @MBOX_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
