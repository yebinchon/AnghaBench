; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_rx_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_rx_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i64, %struct.page** }
%struct.page = type { i32 }

@NUM_RX_DESC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8169_private*)* @rtl8169_rx_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8169_rx_fill(%struct.rtl8169_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl8169_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %37, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @NUM_RX_DESC, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %40

10:                                               ; preds = %6
  %11 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %12 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %13 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = call %struct.page* @rtl8169_alloc_rx_data(%struct.rtl8169_private* %11, i64 %17)
  store %struct.page* %18, %struct.page** %5, align 8
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = icmp ne %struct.page* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %10
  %22 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %23 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = call i32 @rtl8169_make_unusable_by_asic(i64 %27)
  br label %49

29:                                               ; preds = %10
  %30 = load %struct.page*, %struct.page** %5, align 8
  %31 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %32 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %31, i32 0, i32 1
  %33 = load %struct.page**, %struct.page*** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.page*, %struct.page** %33, i64 %35
  store %struct.page* %30, %struct.page** %36, align 8
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %6

40:                                               ; preds = %6
  %41 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %42 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @NUM_RX_DESC, align 4
  %45 = zext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = sub nsw i64 %46, 1
  %48 = call i32 @rtl8169_mark_as_last_descriptor(i64 %47)
  store i32 0, i32* %2, align 4
  br label %54

49:                                               ; preds = %21
  %50 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %51 = call i32 @rtl8169_rx_clear(%struct.rtl8169_private* %50)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %49, %40
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.page* @rtl8169_alloc_rx_data(%struct.rtl8169_private*, i64) #1

declare dso_local i32 @rtl8169_make_unusable_by_asic(i64) #1

declare dso_local i32 @rtl8169_mark_as_last_descriptor(i64) #1

declare dso_local i32 @rtl8169_rx_clear(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
