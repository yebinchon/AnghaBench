; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_wl3501_cs.c_wl3501_get_tx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_wl3501_cs.c_wl3501_get_tx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl3501_card = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl3501_card*, i32)* @wl3501_get_tx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl3501_get_tx_buffer(%struct.wl3501_card* %0, i32 %1) #0 {
  %3 = alloca %struct.wl3501_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wl3501_card* %0, %struct.wl3501_card** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 4, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %16 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %17, 254
  %19 = icmp sgt i32 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %71

21:                                               ; preds = %2
  %22 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %23 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %64, %21
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %65

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 254
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, 254
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %32, %31
  %36 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %37 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %38 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @wl3501_get_from_wla(%struct.wl3501_card* %36, i32 %39, i32* %5, i32 4)
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %45 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %46 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @wl3501_set_to_wla(%struct.wl3501_card* %44, i32 %47, i32* %7, i32 4)
  br label %49

49:                                               ; preds = %43, %35
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %52 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %63 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  store i32 0, i32* %9, align 4
  br label %71

64:                                               ; preds = %57, %49
  br label %25

65:                                               ; preds = %25
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %68 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %60, %20
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

declare dso_local i32 @wl3501_get_from_wla(%struct.wl3501_card*, i32, i32*, i32) #1

declare dso_local i32 @wl3501_set_to_wla(%struct.wl3501_card*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
