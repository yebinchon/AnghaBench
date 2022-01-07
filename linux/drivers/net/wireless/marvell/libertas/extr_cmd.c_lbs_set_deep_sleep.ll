; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_set_deep_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_set_deep_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32 (%struct.lbs_private*)*, i32 (%struct.lbs_private*)*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"deep sleep: sleep\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"deep sleep: already enabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"deep sleep: wakeup\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"deep sleep: wakeup failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_set_deep_sleep(%struct.lbs_private* %0, i32 %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %45

8:                                                ; preds = %2
  %9 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %10 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %39

13:                                               ; preds = %8
  %14 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %16 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %15, i32 0, i32 1
  %17 = load i32 (%struct.lbs_private*)*, i32 (%struct.lbs_private*)** %16, align 8
  %18 = icmp ne i32 (%struct.lbs_private*)* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %23 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %22, i32 0, i32 1
  %24 = load i32 (%struct.lbs_private*)*, i32 (%struct.lbs_private*)** %23, align 8
  %25 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %26 = call i32 %24(%struct.lbs_private* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %13
  %30 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %31 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @netif_stop_queue(i32 %32)
  %34 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %35 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @netif_carrier_off(i32 %36)
  br label %38

38:                                               ; preds = %29, %13
  br label %44

39:                                               ; preds = %8
  %40 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %41 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @netdev_err(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %38
  br label %79

45:                                               ; preds = %2
  %46 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %47 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %45
  %51 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %53 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %52, i32 0, i32 2
  %54 = load i32 (%struct.lbs_private*)*, i32 (%struct.lbs_private*)** %53, align 8
  %55 = icmp ne i32 (%struct.lbs_private*)* %54, null
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @BUG_ON(i32 %57)
  %59 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %60 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %59, i32 0, i32 2
  %61 = load i32 (%struct.lbs_private*)*, i32 (%struct.lbs_private*)** %60, align 8
  %62 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %63 = call i32 %61(%struct.lbs_private* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %50
  %67 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %68 = call i32 @lbs_wait_for_ds_awake(%struct.lbs_private* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %73 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @netdev_err(i32 %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %71, %66
  br label %77

77:                                               ; preds = %76, %50
  br label %78

78:                                               ; preds = %77, %45
  br label %79

79:                                               ; preds = %78, %44
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @lbs_deb_cmd(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @lbs_wait_for_ds_awake(%struct.lbs_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
