; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_pio.c_pio_rx_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_pio.c_pio_rx_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_pioqueue = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"PIO RX error: %s\0A\00", align 1
@B43legacy_PIO_RXCTL = common dso_local global i32 0, align 4
@B43legacy_PIO_RXCTL_READY = common dso_local global i32 0, align 4
@B43legacy_MMIO_PIO1_BASE = common dso_local global i64 0, align 8
@B43legacy_PIO_RXDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_pioqueue*, i32, i8*)* @pio_rx_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pio_rx_error(%struct.b43legacy_pioqueue* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.b43legacy_pioqueue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.b43legacy_pioqueue* %0, %struct.b43legacy_pioqueue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %4, align 8
  %9 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @b43legacyerr(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %4, align 8
  %16 = load i32, i32* @B43legacy_PIO_RXCTL, align 4
  %17 = load i32, i32* @B43legacy_PIO_RXCTL_READY, align 4
  %18 = call i32 @b43legacy_pio_write(%struct.b43legacy_pioqueue* %15, i32 %16, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %3
  %22 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %4, align 8
  %23 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @B43legacy_MMIO_PIO1_BASE, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @B43legacy_WARN_ON(i32 %27)
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %36, %21
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 15
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %4, align 8
  %34 = load i32, i32* @B43legacy_PIO_RXDATA, align 4
  %35 = call i32 @b43legacy_pio_read(%struct.b43legacy_pioqueue* %33, i32 %34)
  br label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %29

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %3
  ret void
}

declare dso_local i32 @b43legacyerr(i32, i8*, i8*) #1

declare dso_local i32 @b43legacy_pio_write(%struct.b43legacy_pioqueue*, i32, i32) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @b43legacy_pio_read(%struct.b43legacy_pioqueue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
