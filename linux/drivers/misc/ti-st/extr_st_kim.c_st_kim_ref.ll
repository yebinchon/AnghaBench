; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_kim.c_st_kim_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_kim.c_st_kim_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_data_s = type { i32 }
%struct.platform_device = type { i32 }
%struct.kim_data_s = type { %struct.st_data_s* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @st_kim_ref(%struct.st_data_s** %0, i32 %1) #0 {
  %3 = alloca %struct.st_data_s**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.kim_data_s*, align 8
  store %struct.st_data_s** %0, %struct.st_data_s*** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.platform_device* @st_get_plat_device(i32 %7)
  store %struct.platform_device* %8, %struct.platform_device** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %10 = icmp ne %struct.platform_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %23

12:                                               ; preds = %2
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = call %struct.kim_data_s* @platform_get_drvdata(%struct.platform_device* %13)
  store %struct.kim_data_s* %14, %struct.kim_data_s** %6, align 8
  %15 = load %struct.kim_data_s*, %struct.kim_data_s** %6, align 8
  %16 = icmp ne %struct.kim_data_s* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %23

18:                                               ; preds = %12
  %19 = load %struct.kim_data_s*, %struct.kim_data_s** %6, align 8
  %20 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %19, i32 0, i32 0
  %21 = load %struct.st_data_s*, %struct.st_data_s** %20, align 8
  %22 = load %struct.st_data_s**, %struct.st_data_s*** %3, align 8
  store %struct.st_data_s* %21, %struct.st_data_s** %22, align 8
  br label %25

23:                                               ; preds = %17, %11
  %24 = load %struct.st_data_s**, %struct.st_data_s*** %3, align 8
  store %struct.st_data_s* null, %struct.st_data_s** %24, align 8
  br label %25

25:                                               ; preds = %23, %18
  ret void
}

declare dso_local %struct.platform_device* @st_get_plat_device(i32) #1

declare dso_local %struct.kim_data_s* @platform_get_drvdata(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
