; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c589_cs.c_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c589_cs.c_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"updating the statistics.\0A\00", align 1
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
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netdev_dbg(%struct.net_device* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @StatsDisable, align 4
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* @EL3_CMD, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @outw(i32 %9, i64 %13)
  %15 = call i32 @EL3WINDOW(i32 6)
  %16 = load i32, i32* %3, align 4
  %17 = add i32 %16, 0
  %18 = call i64 @inb(i32 %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %18
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  %26 = load i32, i32* %3, align 4
  %27 = add i32 %26, 1
  %28 = call i64 @inb(i32 %27)
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %28
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 4
  %36 = load i32, i32* %3, align 4
  %37 = add i32 %36, 2
  %38 = call i64 @inb(i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = add i32 %39, 3
  %41 = call i64 @inb(i32 %40)
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %41
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  %49 = load i32, i32* %3, align 4
  %50 = add i32 %49, 4
  %51 = call i64 @inb(i32 %50)
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %51
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 4
  %59 = load i32, i32* %3, align 4
  %60 = add i32 %59, 5
  %61 = call i64 @inb(i32 %60)
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %61
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 4
  %69 = load i32, i32* %3, align 4
  %70 = add i32 %69, 6
  %71 = call i64 @inb(i32 %70)
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %71
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  %79 = load i32, i32* %3, align 4
  %80 = add i32 %79, 7
  %81 = call i64 @inb(i32 %80)
  %82 = load i32, i32* %3, align 4
  %83 = add i32 %82, 8
  %84 = call i64 @inb(i32 %83)
  %85 = load i32, i32* %3, align 4
  %86 = add i32 %85, 10
  %87 = call i32 @inw(i32 %86)
  %88 = load i32, i32* %3, align 4
  %89 = add i32 %88, 12
  %90 = call i32 @inw(i32 %89)
  %91 = call i32 @EL3WINDOW(i32 1)
  %92 = load i32, i32* @StatsEnable, align 4
  %93 = load i32, i32* %3, align 4
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* @EL3_CMD, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @outw(i32 %92, i64 %96)
  ret void
}

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

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
