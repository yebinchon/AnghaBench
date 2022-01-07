; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_gpio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@B43_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43_MACCTL_GPOUTSMSK = common dso_local global i32 0, align 4
@B43_MMIO_GPIO_MASK = common dso_local global i32 0, align 4
@B43_BFL_PACTRL = common dso_local global i32 0, align 4
@B43_GPIO_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_gpio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_gpio_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %6 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %7 = load i32, i32* @B43_MACCTL_GPOUTSMSK, align 4
  %8 = xor i32 %7, -1
  %9 = call i32 @b43_maskset32(%struct.b43_wldev* %5, i32 %6, i32 %8, i32 0)
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = load i32, i32* @B43_MMIO_GPIO_MASK, align 4
  %12 = call i32 @b43_maskset16(%struct.b43_wldev* %10, i32 %11, i32 -1, i32 15)
  store i32 31, i32* %3, align 4
  store i32 15, i32* %4, align 4
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %14 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 17153
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, 96
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, 96
  store i32 %23, i32* %4, align 4
  br label %35

24:                                               ; preds = %1
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %26 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 21332
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 2
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %24
  br label %35

35:                                               ; preds = %34, %19
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @B43_BFL_PACTRL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %35
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %48 = load i32, i32* @B43_MMIO_GPIO_MASK, align 4
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %50 = load i32, i32* @B43_MMIO_GPIO_MASK, align 4
  %51 = call i32 @b43_read16(%struct.b43_wldev* %49, i32 %50)
  %52 = or i32 %51, 512
  %53 = call i32 @b43_write16(%struct.b43_wldev* %47, i32 %48, i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, 512
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, 512
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %46, %35
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %60 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %64 [
  ]

64:                                               ; preds = %58
  ret i32 0
}

declare dso_local i32 @b43_maskset32(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_maskset16(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_read16(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
