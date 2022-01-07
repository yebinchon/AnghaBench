; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-typhoon.c_typhoon_s_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-typhoon.c_typhoon_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radio_isa_card = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radio_isa_card*, i32)* @typhoon_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typhoon_s_frequency(%struct.radio_isa_card* %0, i32 %1) #0 {
  %3 = alloca %struct.radio_isa_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.radio_isa_card* %0, %struct.radio_isa_card** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sdiv i32 %7, 160
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = mul i64 %10, %11
  %13 = add i64 %12, 2500
  %14 = udiv i64 %13, 5000
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = mul i64 %15, %16
  %18 = add i64 %17, 5000
  %19 = udiv i64 %18, 10000
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = mul i64 10, %20
  %22 = load i64, i64* %6, align 8
  %23 = mul i64 %21, %22
  %24 = add i64 %23, 10433
  %25 = udiv i64 %24, 20866
  %26 = load i64, i64* %5, align 8
  %27 = sub i64 %26, %25
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = mul i64 4, %28
  %30 = sub i64 %29, 11505
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = lshr i64 %33, 8
  %35 = and i64 %34, 1
  %36 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %37 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 4
  %40 = call i32 @outb_p(i64 %35, i64 %39)
  %41 = load i64, i64* %5, align 8
  %42 = lshr i64 %41, 9
  %43 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %44 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 6
  %47 = call i32 @outb_p(i64 %42, i64 %46)
  %48 = load i64, i64* %5, align 8
  %49 = and i64 %48, 255
  %50 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %51 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 8
  %54 = call i32 @outb_p(i64 %49, i64 %53)
  ret i32 0
}

declare dso_local i32 @outb_p(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
