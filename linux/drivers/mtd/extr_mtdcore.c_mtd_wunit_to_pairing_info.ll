; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_wunit_to_pairing_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_wunit_to_pairing_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.mtd_pairing_info = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_wunit_to_pairing_info(%struct.mtd_info* %0, i32 %1, %struct.mtd_pairing_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_pairing_info*, align 8
  %8 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_pairing_info* %2, %struct.mtd_pairing_info** %7, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %10 = call i32 @mtd_wunit_per_eb(%struct.mtd_info* %9)
  %11 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %12 = call i32 @mtd_pairing_groups(%struct.mtd_info* %11)
  %13 = sdiv i32 %10, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %53

23:                                               ; preds = %16
  %24 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %25 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %30 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = bitcast {}** %32 to i32 (%struct.mtd_info*, i32, %struct.mtd_pairing_info*)**
  %34 = load i32 (%struct.mtd_info*, i32, %struct.mtd_pairing_info*)*, i32 (%struct.mtd_info*, i32, %struct.mtd_pairing_info*)** %33, align 8
  %35 = icmp ne i32 (%struct.mtd_info*, i32, %struct.mtd_pairing_info*)* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %28
  %37 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %38 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = bitcast {}** %40 to i32 (%struct.mtd_info*, i32, %struct.mtd_pairing_info*)**
  %42 = load i32 (%struct.mtd_info*, i32, %struct.mtd_pairing_info*)*, i32 (%struct.mtd_info*, i32, %struct.mtd_pairing_info*)** %41, align 8
  %43 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.mtd_pairing_info*, %struct.mtd_pairing_info** %7, align 8
  %46 = call i32 %42(%struct.mtd_info* %43, i32 %44, %struct.mtd_pairing_info* %45)
  store i32 %46, i32* %4, align 4
  br label %53

47:                                               ; preds = %28, %23
  %48 = load %struct.mtd_pairing_info*, %struct.mtd_pairing_info** %7, align 8
  %49 = getelementptr inbounds %struct.mtd_pairing_info, %struct.mtd_pairing_info* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.mtd_pairing_info*, %struct.mtd_pairing_info** %7, align 8
  %52 = getelementptr inbounds %struct.mtd_pairing_info, %struct.mtd_pairing_info* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %47, %36, %20
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @mtd_wunit_per_eb(%struct.mtd_info*) #1

declare dso_local i32 @mtd_pairing_groups(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
