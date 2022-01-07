; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_mii.c_mii_check_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_mii.c_mii_check_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_if_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mii_check_link(%struct.mii_if_info* %0) #0 {
  %2 = alloca %struct.mii_if_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mii_if_info* %0, %struct.mii_if_info** %2, align 8
  %5 = load %struct.mii_if_info*, %struct.mii_if_info** %2, align 8
  %6 = call i32 @mii_link_ok(%struct.mii_if_info* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.mii_if_info*, %struct.mii_if_info** %2, align 8
  %8 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @netif_carrier_ok(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load %struct.mii_if_info*, %struct.mii_if_info** %2, align 8
  %18 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @netif_carrier_on(i32 %19)
  br label %33

21:                                               ; preds = %13, %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load %struct.mii_if_info*, %struct.mii_if_info** %2, align 8
  %29 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @netif_carrier_off(i32 %30)
  br label %32

32:                                               ; preds = %27, %24, %21
  br label %33

33:                                               ; preds = %32, %16
  ret void
}

declare dso_local i32 @mii_link_ok(%struct.mii_if_info*) #1

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
