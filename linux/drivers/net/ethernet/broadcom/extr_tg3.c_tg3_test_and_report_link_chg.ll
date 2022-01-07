; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_test_and_report_link_chg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_test_and_report_link_chg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32, i32 }

@TG3_PHYFLG_MII_SERDES = common dso_local global i32 0, align 4
@TG3_PHYFLG_PARALLEL_DETECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32)* @tg3_test_and_report_link_chg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_test_and_report_link_chg(%struct.tg3* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.tg3*, %struct.tg3** %4, align 8
  %8 = getelementptr inbounds %struct.tg3, %struct.tg3* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %6, %9
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.tg3*, %struct.tg3** %4, align 8
  %16 = getelementptr inbounds %struct.tg3, %struct.tg3* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @netif_carrier_on(i32 %17)
  br label %38

19:                                               ; preds = %11
  %20 = load %struct.tg3*, %struct.tg3** %4, align 8
  %21 = getelementptr inbounds %struct.tg3, %struct.tg3* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @netif_carrier_off(i32 %22)
  %24 = load %struct.tg3*, %struct.tg3** %4, align 8
  %25 = getelementptr inbounds %struct.tg3, %struct.tg3* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TG3_PHYFLG_MII_SERDES, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = load i32, i32* @TG3_PHYFLG_PARALLEL_DETECT, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.tg3*, %struct.tg3** %4, align 8
  %34 = getelementptr inbounds %struct.tg3, %struct.tg3* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %30, %19
  br label %38

38:                                               ; preds = %37, %14
  %39 = load %struct.tg3*, %struct.tg3** %4, align 8
  %40 = call i32 @tg3_link_report(%struct.tg3* %39)
  store i32 1, i32* %3, align 4
  br label %42

41:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @tg3_link_report(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
