; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfp.c_mwifiex_get_active_data_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfp.c_mwifiex_get_active_data_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_get_active_data_rates(%struct.mwifiex_private* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca i32*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %7 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @mwifiex_get_supported_rates(%struct.mwifiex_private* %11, i32* %12)
  store i32 %13, i32* %3, align 4
  br label %25

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %17 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %21 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mwifiex_copy_rates(i32* %15, i32 0, i32 %19, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %14, %10
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @mwifiex_get_supported_rates(%struct.mwifiex_private*, i32*) #1

declare dso_local i32 @mwifiex_copy_rates(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
