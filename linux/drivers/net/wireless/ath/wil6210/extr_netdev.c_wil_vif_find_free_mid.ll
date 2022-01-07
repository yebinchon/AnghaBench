; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_vif_find_free_mid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_vif_find_free_mid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32* }

@U8_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.wil6210_priv*)* @wil_vif_find_free_mid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wil_vif_find_free_mid(%struct.wil6210_priv* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %8 = call i64 @GET_MAX_VIFS(%struct.wil6210_priv* %7)
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %5
  %11 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %12 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %10
  %19 = load i64, i64* %4, align 8
  store i64 %19, i64* %2, align 8
  br label %26

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %20
  %22 = load i64, i64* %4, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %4, align 8
  br label %5

24:                                               ; preds = %5
  %25 = load i64, i64* @U8_MAX, align 8
  store i64 %25, i64* %2, align 8
  br label %26

26:                                               ; preds = %24, %18
  %27 = load i64, i64* %2, align 8
  ret i64 %27
}

declare dso_local i64 @GET_MAX_VIFS(%struct.wil6210_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
