; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_wl3501_cs.c_wl3501_esbq_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_wl3501_cs.c_wl3501_esbq_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl3501_card = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl3501_card*, i32*)* @wl3501_esbq_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl3501_esbq_req(%struct.wl3501_card* %0, i32* %1) #0 {
  %3 = alloca %struct.wl3501_card*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.wl3501_card* %0, %struct.wl3501_card** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %7 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %8 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @wl3501_set_to_wla(%struct.wl3501_card* %6, i64 %9, i32* %10, i32 2)
  %12 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %13 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %14 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 2
  %17 = call i32 @wl3501_set_to_wla(%struct.wl3501_card* %12, i64 %16, i32* %5, i32 4)
  %18 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %19 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 4
  store i64 %21, i64* %19, align 8
  %22 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %23 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %26 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %31 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %34 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %29, %2
  ret void
}

declare dso_local i32 @wl3501_set_to_wla(%struct.wl3501_card*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
