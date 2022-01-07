; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, i32*, %struct.bnx2_irq* }
%struct.bnx2_irq = type { i32, i32, i32, i32 }

@BNX2_FLAG_USING_MSI_OR_MSIX = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_request_irq(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.bnx2_irq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %8 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @BNX2_FLAG_USING_MSI_OR_MSIX, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @IRQF_SHARED, align 8
  store i64 %15, i64* %3, align 8
  br label %16

16:                                               ; preds = %14, %13
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %53, %16
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %20 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %17
  %24 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %25 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %24, i32 0, i32 3
  %26 = load %struct.bnx2_irq*, %struct.bnx2_irq** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.bnx2_irq, %struct.bnx2_irq* %26, i64 %28
  store %struct.bnx2_irq* %29, %struct.bnx2_irq** %4, align 8
  %30 = load %struct.bnx2_irq*, %struct.bnx2_irq** %4, align 8
  %31 = getelementptr inbounds %struct.bnx2_irq, %struct.bnx2_irq* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bnx2_irq*, %struct.bnx2_irq** %4, align 8
  %34 = getelementptr inbounds %struct.bnx2_irq, %struct.bnx2_irq* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %3, align 8
  %37 = load %struct.bnx2_irq*, %struct.bnx2_irq** %4, align 8
  %38 = getelementptr inbounds %struct.bnx2_irq, %struct.bnx2_irq* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %41 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i32 @request_irq(i32 %32, i32 %35, i64 %36, i32 %39, i32* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %23
  br label %56

50:                                               ; preds = %23
  %51 = load %struct.bnx2_irq*, %struct.bnx2_irq** %4, align 8
  %52 = getelementptr inbounds %struct.bnx2_irq, %struct.bnx2_irq* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %17

56:                                               ; preds = %49, %17
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @request_irq(i32, i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
