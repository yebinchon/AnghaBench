; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_pairing_info_to_wunit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_pairing_info_to_wunit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.mtd_pairing_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_pairing_info_to_wunit(%struct.mtd_info* %0, %struct.mtd_pairing_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.mtd_pairing_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.mtd_pairing_info* %1, %struct.mtd_pairing_info** %5, align 8
  %8 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %9 = call i32 @mtd_pairing_groups(%struct.mtd_info* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %11 = call i32 @mtd_wunit_per_eb(%struct.mtd_info* %10)
  %12 = load i32, i32* %6, align 4
  %13 = sdiv i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.mtd_pairing_info*, %struct.mtd_pairing_info** %5, align 8
  %15 = icmp ne %struct.mtd_pairing_info* %14, null
  br i1 %15, label %16, label %38

16:                                               ; preds = %2
  %17 = load %struct.mtd_pairing_info*, %struct.mtd_pairing_info** %5, align 8
  %18 = getelementptr inbounds %struct.mtd_pairing_info, %struct.mtd_pairing_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %16
  %22 = load %struct.mtd_pairing_info*, %struct.mtd_pairing_info** %5, align 8
  %23 = getelementptr inbounds %struct.mtd_pairing_info, %struct.mtd_pairing_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %38, label %27

27:                                               ; preds = %21
  %28 = load %struct.mtd_pairing_info*, %struct.mtd_pairing_info** %5, align 8
  %29 = getelementptr inbounds %struct.mtd_pairing_info, %struct.mtd_pairing_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load %struct.mtd_pairing_info*, %struct.mtd_pairing_info** %5, align 8
  %34 = getelementptr inbounds %struct.mtd_pairing_info, %struct.mtd_pairing_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32, %27, %21, %16, %2
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %68

41:                                               ; preds = %32
  %42 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %43 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = icmp ne %struct.TYPE_2__* %44, null
  br i1 %45, label %46, label %64

46:                                               ; preds = %41
  %47 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %48 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = bitcast {}** %50 to i32 (%struct.mtd_info*, %struct.mtd_pairing_info*)**
  %52 = load i32 (%struct.mtd_info*, %struct.mtd_pairing_info*)*, i32 (%struct.mtd_info*, %struct.mtd_pairing_info*)** %51, align 8
  %53 = icmp ne i32 (%struct.mtd_info*, %struct.mtd_pairing_info*)* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %46
  %55 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %56 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = bitcast {}** %58 to i32 (%struct.mtd_info*, %struct.mtd_pairing_info*)**
  %60 = load i32 (%struct.mtd_info*, %struct.mtd_pairing_info*)*, i32 (%struct.mtd_info*, %struct.mtd_pairing_info*)** %59, align 8
  %61 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %62 = load %struct.mtd_pairing_info*, %struct.mtd_pairing_info** %5, align 8
  %63 = call i32 %60(%struct.mtd_info* %61, %struct.mtd_pairing_info* %62)
  store i32 %63, i32* %3, align 4
  br label %68

64:                                               ; preds = %46, %41
  %65 = load %struct.mtd_pairing_info*, %struct.mtd_pairing_info** %5, align 8
  %66 = getelementptr inbounds %struct.mtd_pairing_info, %struct.mtd_pairing_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %54, %38
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @mtd_pairing_groups(%struct.mtd_info*) #1

declare dso_local i32 @mtd_wunit_per_eb(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
