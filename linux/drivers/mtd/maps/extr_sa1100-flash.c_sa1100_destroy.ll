; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_sa1100-flash.c_sa1100_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_sa1100-flash.c_sa1100_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_info = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.flash_platform_data = type { i32 (...)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sa_info*, %struct.flash_platform_data*)* @sa1100_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1100_destroy(%struct.sa_info* %0, %struct.flash_platform_data* %1) #0 {
  %3 = alloca %struct.sa_info*, align 8
  %4 = alloca %struct.flash_platform_data*, align 8
  %5 = alloca i32, align 4
  store %struct.sa_info* %0, %struct.sa_info** %3, align 8
  store %struct.flash_platform_data* %1, %struct.flash_platform_data** %4, align 8
  %6 = load %struct.sa_info*, %struct.sa_info** %3, align 8
  %7 = getelementptr inbounds %struct.sa_info, %struct.sa_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load %struct.sa_info*, %struct.sa_info** %3, align 8
  %12 = getelementptr inbounds %struct.sa_info, %struct.sa_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @mtd_device_unregister(i64 %13)
  %15 = load %struct.sa_info*, %struct.sa_info** %3, align 8
  %16 = getelementptr inbounds %struct.sa_info, %struct.sa_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.sa_info*, %struct.sa_info** %3, align 8
  %19 = getelementptr inbounds %struct.sa_info, %struct.sa_info* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %17, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %10
  %26 = load %struct.sa_info*, %struct.sa_info** %3, align 8
  %27 = getelementptr inbounds %struct.sa_info, %struct.sa_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @mtd_concat_destroy(i64 %28)
  br label %30

30:                                               ; preds = %25, %10
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.sa_info*, %struct.sa_info** %3, align 8
  %33 = getelementptr inbounds %struct.sa_info, %struct.sa_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %47, %31
  %37 = load i32, i32* %5, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct.sa_info*, %struct.sa_info** %3, align 8
  %41 = getelementptr inbounds %struct.sa_info, %struct.sa_info* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = call i32 @sa1100_destroy_subdev(%struct.TYPE_2__* %45)
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %5, align 4
  br label %36

50:                                               ; preds = %36
  %51 = load %struct.sa_info*, %struct.sa_info** %3, align 8
  %52 = call i32 @kfree(%struct.sa_info* %51)
  %53 = load %struct.flash_platform_data*, %struct.flash_platform_data** %4, align 8
  %54 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %53, i32 0, i32 0
  %55 = load i32 (...)*, i32 (...)** %54, align 8
  %56 = icmp ne i32 (...)* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.flash_platform_data*, %struct.flash_platform_data** %4, align 8
  %59 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %58, i32 0, i32 0
  %60 = load i32 (...)*, i32 (...)** %59, align 8
  %61 = call i32 (...) %60()
  br label %62

62:                                               ; preds = %57, %50
  ret void
}

declare dso_local i32 @mtd_device_unregister(i64) #1

declare dso_local i32 @mtd_concat_destroy(i64) #1

declare dso_local i32 @sa1100_destroy_subdev(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.sa_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
