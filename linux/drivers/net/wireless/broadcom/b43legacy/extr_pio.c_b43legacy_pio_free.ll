; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_pio.c_b43legacy_pio_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_pio.c_b43legacy_pio_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_pio }
%struct.b43legacy_pio = type { i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_pio_free(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_pio*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %4 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %5 = call i32 @b43legacy_using_pio(%struct.b43legacy_wldev* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %35

8:                                                ; preds = %1
  %9 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %10 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %9, i32 0, i32 0
  store %struct.b43legacy_pio* %10, %struct.b43legacy_pio** %3, align 8
  %11 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %12 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @b43legacy_destroy_pioqueue(i32* %13)
  %15 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %16 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %15, i32 0, i32 3
  store i32* null, i32** %16, align 8
  %17 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %18 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @b43legacy_destroy_pioqueue(i32* %19)
  %21 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %22 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %24 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @b43legacy_destroy_pioqueue(i32* %25)
  %27 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %28 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %30 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @b43legacy_destroy_pioqueue(i32* %31)
  %33 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %34 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @b43legacy_using_pio(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_destroy_pioqueue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
