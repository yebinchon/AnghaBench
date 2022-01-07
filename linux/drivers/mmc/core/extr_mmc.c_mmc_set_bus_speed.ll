; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_set_bus_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_set_bus_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_card*)* @mmc_set_bus_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_set_bus_speed(%struct.mmc_card* %0) #0 {
  %2 = alloca %struct.mmc_card*, align 8
  %3 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %2, align 8
  store i32 -1, i32* %3, align 4
  %4 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %5 = call i64 @mmc_card_hs200(%struct.mmc_card* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %9 = call i64 @mmc_card_hs400(%struct.mmc_card* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %7, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %14 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ugt i32 %12, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %20 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  br label %53

23:                                               ; preds = %11, %7
  %24 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %25 = call i64 @mmc_card_hs(%struct.mmc_card* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %30 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ugt i32 %28, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %36 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %3, align 4
  br label %52

39:                                               ; preds = %27, %23
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %42 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ugt i32 %40, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %48 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %39
  br label %52

52:                                               ; preds = %51, %34
  br label %53

53:                                               ; preds = %52, %18
  %54 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %55 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @mmc_set_clock(i32 %56, i32 %57)
  ret void
}

declare dso_local i64 @mmc_card_hs200(%struct.mmc_card*) #1

declare dso_local i64 @mmc_card_hs400(%struct.mmc_card*) #1

declare dso_local i64 @mmc_card_hs(%struct.mmc_card*) #1

declare dso_local i32 @mmc_set_clock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
