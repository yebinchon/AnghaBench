; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-gemtek.c_gemtek_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-gemtek.c_gemtek_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radio_isa_card = type { i32 }

@SHORT_DELAY = common dso_local global i32 0, align 4
@GEMTEK_NS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radio_isa_card*, i32)* @gemtek_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gemtek_probe(%struct.radio_isa_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radio_isa_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radio_isa_card* %0, %struct.radio_isa_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @inb_p(i32 %8)
  store i32 %9, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %32, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 1, %14
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @outb_p(i32 %15, i32 %16)
  %18 = load i32, i32* @SHORT_DELAY, align 4
  %19 = call i32 @udelay(i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @inb_p(i32 %20)
  %22 = load i32, i32* @GEMTEK_NS, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 5
  %27 = shl i32 1, %26
  %28 = or i32 23, %27
  %29 = icmp ne i32 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %42

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %10

35:                                               ; preds = %10
  %36 = load i32, i32* %7, align 4
  %37 = ashr i32 %36, 5
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @outb_p(i32 %37, i32 %38)
  %40 = load i32, i32* @SHORT_DELAY, align 4
  %41 = call i32 @udelay(i32 %40)
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %35, %30
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
