; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_is_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_is_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cqhci_host = type { i32, i32, i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cqhci_host*, i32*)* @cqhci_is_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cqhci_is_idle(%struct.cqhci_host* %0, i32* %1) #0 {
  %3 = alloca %struct.cqhci_host*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.cqhci_host* %0, %struct.cqhci_host** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %8 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %12 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %17 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %2
  %21 = phi i1 [ true, %2 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %24 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  br label %31

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i32 [ %29, %27 ], [ 0, %30 ]
  %33 = load i32*, i32** %4, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %39 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %41 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %40, i32 0, i32 1
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
