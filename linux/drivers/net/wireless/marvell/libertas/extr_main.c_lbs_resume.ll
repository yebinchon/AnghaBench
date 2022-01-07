; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_main.c_lbs_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_main.c_lbs_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [34 x i8] c"deep sleep activation failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_resume(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  %4 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %5 = call i32 @lbs_set_host_sleep(%struct.lbs_private* %4, i32 0)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %7 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @netif_device_attach(i64 %8)
  %10 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %11 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %16 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @netif_device_attach(i64 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %21 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %26 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %28 = call i32 @lbs_set_deep_sleep(%struct.lbs_private* %27, i32 1)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %33 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @netdev_err(i64 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %31, %24
  br label %38

38:                                               ; preds = %37, %19
  %39 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %40 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %45 = call i32 @lbs_setup_firmware(%struct.lbs_private* %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @lbs_set_host_sleep(%struct.lbs_private*, i32) #1

declare dso_local i32 @netif_device_attach(i64) #1

declare dso_local i32 @lbs_set_deep_sleep(%struct.lbs_private*, i32) #1

declare dso_local i32 @netdev_err(i64, i8*, i32) #1

declare dso_local i32 @lbs_setup_firmware(%struct.lbs_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
