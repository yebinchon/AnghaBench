; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c509.c_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c509.c_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@el3_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"   Updating the statistics.\0A\00", align 1
@StatsDisable = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@StatsEnable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @el3_debug, align 4
  %8 = icmp sgt i32 %7, 5
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load i32, i32* @StatsDisable, align 4
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* @EL3_CMD, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @outw(i32 %12, i64 %16)
  %18 = call i32 @EL3WINDOW(i32 6)
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 0
  %21 = call i64 @inb(i32 %20)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %21
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 4
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i64 @inb(i32 %30)
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %31
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 4
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 2
  %41 = call i64 @inb(i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 3
  %44 = call i64 @inb(i32 %43)
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %44
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 4
  %54 = call i64 @inb(i32 %53)
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %54
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 5
  %64 = call i64 @inb(i32 %63)
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %64
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 4
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 6
  %74 = call i64 @inb(i32 %73)
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %74
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 4
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 7
  %84 = call i64 @inb(i32 %83)
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %85, 8
  %87 = call i64 @inb(i32 %86)
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 10
  %90 = call i32 @inw(i32 %89)
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 12
  %93 = call i32 @inw(i32 %92)
  %94 = call i32 @EL3WINDOW(i32 1)
  %95 = load i32, i32* @StatsEnable, align 4
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* @EL3_CMD, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @outw(i32 %95, i64 %99)
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @EL3WINDOW(i32) #1

declare dso_local i64 @inb(i32) #1

declare dso_local i32 @inw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
