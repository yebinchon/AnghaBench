; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c574_cs.c_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c574_cs.c_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"%s: updating the statistics.\0A\00", align 1
@EL3_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @EL3_STATUS, align 4
  %16 = add i32 %14, %15
  %17 = call i32 @inw(i32 %16)
  %18 = icmp eq i32 %17, 65535
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %104

20:                                               ; preds = %1
  %21 = call i32 @EL3WINDOW(i32 6)
  %22 = load i32, i32* %3, align 4
  %23 = add i32 %22, 0
  %24 = call i32 @inb(i32 %23)
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, %24
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, 1
  %32 = call i32 @inb(i32 %31)
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %32
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %3, align 4
  %39 = add i32 %38, 2
  %40 = call i32 @inb(i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = add i32 %41, 3
  %43 = call i32 @inb(i32 %42)
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %43
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %3, align 4
  %50 = add i32 %49, 4
  %51 = call i32 @inb(i32 %50)
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %51
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %3, align 4
  %58 = add i32 %57, 5
  %59 = call i32 @inb(i32 %58)
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %59
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %3, align 4
  %66 = add i32 %65, 6
  %67 = call i32 @inb(i32 %66)
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, %67
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* %3, align 4
  %74 = add i32 %73, 9
  %75 = call i32 @inb(i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = and i32 %76, 48
  %78 = shl i32 %77, 4
  %79 = load %struct.net_device*, %struct.net_device** %2, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %78
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* %3, align 4
  %85 = add i32 %84, 7
  %86 = call i32 @inb(i32 %85)
  %87 = load i32, i32* %3, align 4
  %88 = add i32 %87, 8
  %89 = call i32 @inb(i32 %88)
  %90 = load i32, i32* %3, align 4
  %91 = add i32 %90, 10
  %92 = call i32 @inw(i32 %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %3, align 4
  %94 = add i32 %93, 12
  %95 = call i32 @inw(i32 %94)
  store i32 %95, i32* %5, align 4
  %96 = call i32 @EL3WINDOW(i32 4)
  %97 = load i32, i32* %3, align 4
  %98 = add i32 %97, 12
  %99 = call i32 @inb(i32 %98)
  %100 = load i32, i32* %3, align 4
  %101 = add i32 %100, 13
  %102 = call i32 @inb(i32 %101)
  store i32 %102, i32* %6, align 4
  %103 = call i32 @EL3WINDOW(i32 1)
  br label %104

104:                                              ; preds = %20, %19
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @EL3WINDOW(i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
