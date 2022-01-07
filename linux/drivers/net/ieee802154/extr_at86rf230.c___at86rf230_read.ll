; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c___at86rf230_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c___at86rf230_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at86rf230_local = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at86rf230_local*, i32, i32*)* @__at86rf230_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__at86rf230_read(%struct.at86rf230_local* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.at86rf230_local*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.at86rf230_local* %0, %struct.at86rf230_local** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %10 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %16 = call i32 @at86rf230_awake(%struct.at86rf230_local* %15)
  br label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %19 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @regmap_read(i32 %20, i32 %21, i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %28 = call i32 @at86rf230_sleep(%struct.at86rf230_local* %27)
  br label %29

29:                                               ; preds = %26, %17
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

declare dso_local i32 @at86rf230_awake(%struct.at86rf230_local*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @at86rf230_sleep(%struct.at86rf230_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
