; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_read_mailbox_4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_read_mailbox_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@tcdm_base = common dso_local global i64 0, align 8
@PRCM_MBOX_HEADER_REQ_MB4 = common dso_local global i64 0, align 8
@PRCM_ARM_IT1_CLR = common dso_local global i32 0, align 4
@mb4_transfer = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_mailbox_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_mailbox_4() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  %3 = load i64, i64* @tcdm_base, align 8
  %4 = load i64, i64* @PRCM_MBOX_HEADER_REQ_MB4, align 8
  %5 = add nsw i64 %3, %4
  %6 = call i32 @readb(i64 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  switch i32 %7, label %9 [
    i32 128, label %8
    i32 131, label %8
    i32 130, label %8
    i32 129, label %8
    i32 136, label %8
    i32 134, label %8
    i32 135, label %8
    i32 132, label %8
    i32 133, label %8
  ]

8:                                                ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0
  br label %12

9:                                                ; preds = %0
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @print_unknown_header_warning(i32 4, i32 %10)
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %9, %8
  %13 = call i32 @MBOX_BIT(i32 4)
  %14 = load i32, i32* @PRCM_ARM_IT1_CLR, align 4
  %15 = call i32 @writel(i32 %13, i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 @complete(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mb4_transfer, i32 0, i32 0))
  br label %20

20:                                               ; preds = %18, %12
  ret i32 0
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @print_unknown_header_warning(i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @MBOX_BIT(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
