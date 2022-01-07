; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_sst25l.c_sst25l_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_sst25l.c_sst25l_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.erase_info = type { i32, i32 }
%struct.sst25l_flash = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Erase failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.erase_info*)* @sst25l_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst25l_erase(%struct.mtd_info* %0, %struct.erase_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.erase_info*, align 8
  %6 = alloca %struct.sst25l_flash*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.erase_info* %1, %struct.erase_info** %5, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %11 = call %struct.sst25l_flash* @to_sst25l_flash(%struct.mtd_info* %10)
  store %struct.sst25l_flash* %11, %struct.sst25l_flash** %6, align 8
  %12 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %13 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %16 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = srem i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %87

23:                                               ; preds = %2
  %24 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %25 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %28 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = srem i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %87

35:                                               ; preds = %23
  %36 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %37 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %41 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  store i32 %43, i32* %8, align 4
  %44 = load %struct.sst25l_flash*, %struct.sst25l_flash** %6, align 8
  %45 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.sst25l_flash*, %struct.sst25l_flash** %6, align 8
  %48 = call i32 @sst25l_wait_till_ready(%struct.sst25l_flash* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %35
  %52 = load %struct.sst25l_flash*, %struct.sst25l_flash** %6, align 8
  %53 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  br label %87

56:                                               ; preds = %35
  br label %57

57:                                               ; preds = %77, %56
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %83

61:                                               ; preds = %57
  %62 = load %struct.sst25l_flash*, %struct.sst25l_flash** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @sst25l_erase_sector(%struct.sst25l_flash* %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load %struct.sst25l_flash*, %struct.sst25l_flash** %6, align 8
  %69 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load %struct.sst25l_flash*, %struct.sst25l_flash** %6, align 8
  %72 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %87

77:                                               ; preds = %61
  %78 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %79 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %7, align 4
  br label %57

83:                                               ; preds = %57
  %84 = load %struct.sst25l_flash*, %struct.sst25l_flash** %6, align 8
  %85 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %67, %51, %32, %20
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.sst25l_flash* @to_sst25l_flash(%struct.mtd_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sst25l_wait_till_ready(%struct.sst25l_flash*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sst25l_erase_sector(%struct.sst25l_flash*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
