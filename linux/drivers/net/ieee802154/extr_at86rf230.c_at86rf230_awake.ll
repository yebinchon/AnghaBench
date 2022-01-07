; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_awake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_awake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at86rf230_local = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at86rf230_local*)* @at86rf230_awake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at86rf230_awake(%struct.at86rf230_local* %0) #0 {
  %2 = alloca %struct.at86rf230_local*, align 8
  store %struct.at86rf230_local* %0, %struct.at86rf230_local** %2, align 8
  %3 = load %struct.at86rf230_local*, %struct.at86rf230_local** %2, align 8
  %4 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = call i64 @gpio_is_valid(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load %struct.at86rf230_local*, %struct.at86rf230_local** %2, align 8
  %10 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @gpio_set_value(i32 %11, i32 0)
  %13 = load %struct.at86rf230_local*, %struct.at86rf230_local** %2, align 8
  %14 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.at86rf230_local*, %struct.at86rf230_local** %2, align 8
  %19 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 100
  %24 = call i32 @usleep_range(i64 %17, i64 %23)
  %25 = load %struct.at86rf230_local*, %struct.at86rf230_local** %2, align 8
  %26 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  br label %27

27:                                               ; preds = %8, %1
  ret void
}

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @usleep_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
