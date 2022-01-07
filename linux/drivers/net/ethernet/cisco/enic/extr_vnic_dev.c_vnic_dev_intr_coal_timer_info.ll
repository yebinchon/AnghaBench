; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_intr_coal_timer_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_intr_coal_timer_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32 (%struct.vnic_dev*, i32, i32)*, i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8* }

@CMD_INTR_COAL_CONVERT = common dso_local global i32 0, align 4
@ERR_ECMDUNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Using default conversion factor for interrupt coalesce timer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnic_dev_intr_coal_timer_info(%struct.vnic_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnic_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vnic_dev* %0, %struct.vnic_dev** %3, align 8
  store i32 1000, i32* %4, align 4
  %6 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %7 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %6, i32 0, i32 1
  %8 = load i64*, i64** %7, align 8
  %9 = call i32 @memset(i64* %8, i32 0, i32 8)
  %10 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %11 = load i32, i32* @CMD_INTR_COAL_CONVERT, align 4
  %12 = call i64 @vnic_dev_capable(%struct.vnic_dev* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %16 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %15, i32 0, i32 0
  %17 = load i32 (%struct.vnic_dev*, i32, i32)*, i32 (%struct.vnic_dev*, i32, i32)** %16, align 8
  %18 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %19 = load i32, i32* @CMD_INTR_COAL_CONVERT, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 %17(%struct.vnic_dev* %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @ERR_ECMDUNKNOWN, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %22, %14
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @ERR_ECMDUNKNOWN, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %52, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %57, label %31

31:                                               ; preds = %28
  %32 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %33 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %40 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %47 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %45, %38, %31, %24
  %53 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %54 = call i32 @vdev_netwarn(%struct.vnic_dev* %53, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %56 = call i32 @vnic_dev_intr_coal_timer_info_default(%struct.vnic_dev* %55)
  store i32 0, i32* %2, align 4
  br label %90

57:                                               ; preds = %45, %28
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %88, label %60

60:                                               ; preds = %57
  %61 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %62 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %68 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i8* %66, i8** %69, align 8
  %70 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %71 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %77 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i8* %75, i8** %78, align 8
  %79 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %80 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 2
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i8*
  %85 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %86 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i8* %84, i8** %87, align 8
  br label %88

88:                                               ; preds = %60, %57
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %52
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @vnic_dev_capable(%struct.vnic_dev*, i32) #1

declare dso_local i32 @vdev_netwarn(%struct.vnic_dev*, i8*) #1

declare dso_local i32 @vnic_dev_intr_coal_timer_info_default(%struct.vnic_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
