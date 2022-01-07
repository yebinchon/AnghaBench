; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_mbox_irq_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_mbox_irq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@BNAD_CF_MSIX = common dso_local global i32 0, align 4
@bnad_msix_mbox_handler = common dso_local global i64 0, align 8
@BNAD_MAILBOX_MSIX_INDEX = common dso_local global i64 0, align 8
@bnad_isr = common dso_local global i64 0, align 8
@IRQF_SHARED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@BNAD_NAME = common dso_local global i8* null, align 8
@BNAD_RF_MBOX_IRQ_DISABLED = common dso_local global i32 0, align 4
@mbox_intr_disabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnad*)* @bnad_mbox_irq_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_mbox_irq_alloc(%struct.bnad* %0) #0 {
  %2 = alloca %struct.bnad*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.bnad* %0, %struct.bnad** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.bnad*, %struct.bnad** %2, align 8
  %9 = getelementptr inbounds %struct.bnad, %struct.bnad* %8, i32 0, i32 3
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.bnad*, %struct.bnad** %2, align 8
  %13 = getelementptr inbounds %struct.bnad, %struct.bnad* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @BNAD_CF_MSIX, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load i64, i64* @bnad_msix_mbox_handler, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.bnad*, %struct.bnad** %2, align 8
  %21 = getelementptr inbounds %struct.bnad, %struct.bnad* %20, i32 0, i32 5
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i64, i64* @BNAD_MAILBOX_MSIX_INDEX, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  store i64 0, i64* %4, align 8
  br label %35

27:                                               ; preds = %1
  %28 = load i64, i64* @bnad_isr, align 8
  store i64 %28, i64* %7, align 8
  %29 = load %struct.bnad*, %struct.bnad** %2, align 8
  %30 = getelementptr inbounds %struct.bnad, %struct.bnad* %29, i32 0, i32 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load i64, i64* @IRQF_SHARED, align 8
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %27, %18
  %36 = load %struct.bnad*, %struct.bnad** %2, align 8
  %37 = getelementptr inbounds %struct.bnad, %struct.bnad* %36, i32 0, i32 3
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.bnad*, %struct.bnad** %2, align 8
  %41 = getelementptr inbounds %struct.bnad, %struct.bnad* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** @BNAD_NAME, align 8
  %44 = call i32 @sprintf(i32 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @BNAD_RF_MBOX_IRQ_DISABLED, align 4
  %46 = load %struct.bnad*, %struct.bnad** %2, align 8
  %47 = getelementptr inbounds %struct.bnad, %struct.bnad* %46, i32 0, i32 2
  %48 = call i32 @set_bit(i32 %45, i32* %47)
  %49 = load %struct.bnad*, %struct.bnad** %2, align 8
  %50 = load i32, i32* @mbox_intr_disabled, align 4
  %51 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %4, align 8
  %55 = load %struct.bnad*, %struct.bnad** %2, align 8
  %56 = getelementptr inbounds %struct.bnad, %struct.bnad* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.bnad*, %struct.bnad** %2, align 8
  %59 = call i32 @request_irq(i32 %52, i64 %53, i64 %54, i32 %57, %struct.bnad* %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @BNAD_UPDATE_CTR(%struct.bnad*, i32) #1

declare dso_local i32 @request_irq(i32, i64, i64, i32, %struct.bnad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
