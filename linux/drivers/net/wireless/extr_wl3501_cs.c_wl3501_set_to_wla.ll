; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_wl3501_cs.c_wl3501_set_to_wla.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_wl3501_cs.c_wl3501_set_to_wla.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl3501_card = type { i64 }

@WL3501_BSS_SPAGE1 = common dso_local global i32 0, align 4
@WL3501_BSS_SPAGE0 = common dso_local global i32 0, align 4
@WL3501_NIC_LMAL = common dso_local global i64 0, align 8
@WL3501_NIC_LMAH = common dso_local global i64 0, align 8
@WL3501_NIC_IODPA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl3501_card*, i32, i8*, i32)* @wl3501_set_to_wla to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl3501_set_to_wla(%struct.wl3501_card* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.wl3501_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.wl3501_card* %0, %struct.wl3501_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, 32768
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @WL3501_BSS_SPAGE1, align 4
  br label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @WL3501_BSS_SPAGE0, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = call i32 @wl3501_switch_page(%struct.wl3501_card* %9, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 255
  %22 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %23 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WL3501_NIC_LMAL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @wl3501_outb(i32 %21, i64 %26)
  %28 = load i32, i32* %6, align 4
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 127
  %31 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %32 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @WL3501_NIC_LMAH, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @wl3501_outb(i32 %30, i64 %35)
  %37 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %38 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @WL3501_NIC_IODPA, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @wl3501_outsb(i64 %41, i8* %42, i32 %43)
  ret void
}

declare dso_local i32 @wl3501_switch_page(%struct.wl3501_card*, i32) #1

declare dso_local i32 @wl3501_outb(i32, i64) #1

declare dso_local i32 @wl3501_outsb(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
