; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_..mt76x02.h_is_mt76x2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_..mt76x02.h_is_mt76x2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*)* @is_mt76x2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_mt76x2(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %3 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %4 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %3, i32 0, i32 0
  %5 = call i32 @mt76_chip(i32* %4)
  %6 = icmp eq i32 %5, 30226
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %9 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %8, i32 0, i32 0
  %10 = call i32 @mt76_chip(i32* %9)
  %11 = icmp eq i32 %10, 30306
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %14 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %13, i32 0, i32 0
  %15 = call i32 @mt76_chip(i32* %14)
  %16 = icmp eq i32 %15, 30210
  br label %17

17:                                               ; preds = %12, %7, %1
  %18 = phi i1 [ true, %7 ], [ true, %1 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local i32 @mt76_chip(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
