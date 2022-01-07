; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-terratec.c_terratec_s_mute_volume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-terratec.c_terratec_s_mute_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radio_isa_card = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radio_isa_card*, i32, i32)* @terratec_s_mute_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @terratec_s_mute_volume(%struct.radio_isa_card* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.radio_isa_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radio_isa_card* %0, %struct.radio_isa_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %10, %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = mul nsw i32 %13, 32
  %15 = add nsw i32 %12, %14
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %38, %11
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = ashr i32 128, %21
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.radio_isa_card*, %struct.radio_isa_card** %4, align 8
  %27 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  %30 = call i32 @outb(i32 128, i64 %29)
  br label %37

31:                                               ; preds = %19
  %32 = load %struct.radio_isa_card*, %struct.radio_isa_card** %4, align 8
  %33 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = call i32 @outb(i32 0, i64 %35)
  br label %37

37:                                               ; preds = %31, %25
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %16

41:                                               ; preds = %16
  ret i32 0
}

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
