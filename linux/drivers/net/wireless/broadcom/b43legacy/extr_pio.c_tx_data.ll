; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_pio.c_tx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_pio.c_tx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_pioqueue = type { i64 }

@B43legacy_PIO_TXDATA = common dso_local global i32 0, align 4
@B43legacy_PIO_TXCTL = common dso_local global i32 0, align 4
@B43legacy_PIO_TXCTL_WRITELO = common dso_local global i32 0, align 4
@B43legacy_PIO_TXCTL_WRITEHI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_pioqueue*, i32*, i32*, i32)* @tx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_data(%struct.b43legacy_pioqueue* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.b43legacy_pioqueue*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.b43legacy_pioqueue* %0, %struct.b43legacy_pioqueue** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %12 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @tx_get_next_word(i32* %16, i32* %17, i32 4, i32* %10)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %20 = load i32, i32* @B43legacy_PIO_TXDATA, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @b43legacy_pio_write(%struct.b43legacy_pioqueue* %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %15, %4
  %24 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %25 = load i32, i32* @B43legacy_PIO_TXCTL, align 4
  %26 = load i32, i32* @B43legacy_PIO_TXCTL_WRITELO, align 4
  %27 = load i32, i32* @B43legacy_PIO_TXCTL_WRITEHI, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @b43legacy_pio_write(%struct.b43legacy_pioqueue* %24, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %35, %23
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sub i32 %32, 1
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @tx_get_next_word(i32* %36, i32* %37, i32 4, i32* %10)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %40 = load i32, i32* @B43legacy_PIO_TXDATA, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @b43legacy_pio_write(%struct.b43legacy_pioqueue* %39, i32 %40, i32 %41)
  br label %30

43:                                               ; preds = %30
  %44 = load i32, i32* %8, align 4
  %45 = urem i32 %44, 2
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = sub i64 %51, 4
  %53 = sub i64 %52, 1
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @tx_octet(%struct.b43legacy_pioqueue* %48, i32 %55)
  br label %57

57:                                               ; preds = %47, %43
  ret void
}

declare dso_local i32 @tx_get_next_word(i32*, i32*, i32, i32*) #1

declare dso_local i32 @b43legacy_pio_write(%struct.b43legacy_pioqueue*, i32, i32) #1

declare dso_local i32 @tx_octet(%struct.b43legacy_pioqueue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
