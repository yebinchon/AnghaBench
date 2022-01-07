; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c___put_mtd_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c___put_mtd_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, i32, i32 (%struct.mtd_info*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__put_mtd_device(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %3 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %4 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %5, -1
  store i64 %6, i64* %4, align 8
  %7 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %8 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %14 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 2
  %15 = load i32 (%struct.mtd_info*)*, i32 (%struct.mtd_info*)** %14, align 8
  %16 = icmp ne i32 (%struct.mtd_info*)* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %19 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %18, i32 0, i32 2
  %20 = load i32 (%struct.mtd_info*)*, i32 (%struct.mtd_info*)** %19, align 8
  %21 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %22 = call i32 %20(%struct.mtd_info* %21)
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %25 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @module_put(i32 %26)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
