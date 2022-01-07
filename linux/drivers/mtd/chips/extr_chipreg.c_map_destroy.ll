; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_chipreg.c_map_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_chipreg.c_map_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.map_info* }
%struct.map_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (%struct.mtd_info*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @map_destroy(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.map_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %4 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %5 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %4, i32 0, i32 0
  %6 = load %struct.map_info*, %struct.map_info** %5, align 8
  store %struct.map_info* %6, %struct.map_info** %3, align 8
  %7 = load %struct.map_info*, %struct.map_info** %3, align 8
  %8 = getelementptr inbounds %struct.map_info, %struct.map_info* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32 (%struct.mtd_info*)*, i32 (%struct.mtd_info*)** %10, align 8
  %12 = icmp ne i32 (%struct.mtd_info*)* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.map_info*, %struct.map_info** %3, align 8
  %15 = getelementptr inbounds %struct.map_info, %struct.map_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32 (%struct.mtd_info*)*, i32 (%struct.mtd_info*)** %17, align 8
  %19 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %20 = call i32 %18(%struct.mtd_info* %19)
  br label %21

21:                                               ; preds = %13, %1
  %22 = load %struct.map_info*, %struct.map_info** %3, align 8
  %23 = getelementptr inbounds %struct.map_info, %struct.map_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @module_put(i32 %26)
  %28 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %29 = call i32 @kfree(%struct.mtd_info* %28)
  ret void
}

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
