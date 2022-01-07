; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rvin_group_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rvin_group_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_dev = type { i64, %struct.TYPE_2__, %struct.rvin_group* }
%struct.TYPE_2__ = type { i32* }
%struct.rvin_group = type { i32, i32, %struct.rvin_dev** }

@rvin_group_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvin_dev*)* @rvin_group_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvin_group_put(%struct.rvin_dev* %0) #0 {
  %2 = alloca %struct.rvin_dev*, align 8
  %3 = alloca %struct.rvin_group*, align 8
  store %struct.rvin_dev* %0, %struct.rvin_dev** %2, align 8
  %4 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %5 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %4, i32 0, i32 2
  %6 = load %struct.rvin_group*, %struct.rvin_group** %5, align 8
  store %struct.rvin_group* %6, %struct.rvin_group** %3, align 8
  %7 = load %struct.rvin_group*, %struct.rvin_group** %3, align 8
  %8 = getelementptr inbounds %struct.rvin_group, %struct.rvin_group* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %11 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %10, i32 0, i32 2
  store %struct.rvin_group* null, %struct.rvin_group** %11, align 8
  %12 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %13 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32* null, i32** %14, align 8
  %15 = load %struct.rvin_group*, %struct.rvin_group** %3, align 8
  %16 = getelementptr inbounds %struct.rvin_group, %struct.rvin_group* %15, i32 0, i32 2
  %17 = load %struct.rvin_dev**, %struct.rvin_dev*** %16, align 8
  %18 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %19 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.rvin_dev*, %struct.rvin_dev** %17, i64 %20
  %22 = load %struct.rvin_dev*, %struct.rvin_dev** %21, align 8
  %23 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %24 = icmp ne %struct.rvin_dev* %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %37

29:                                               ; preds = %1
  %30 = load %struct.rvin_group*, %struct.rvin_group** %3, align 8
  %31 = getelementptr inbounds %struct.rvin_group, %struct.rvin_group* %30, i32 0, i32 2
  %32 = load %struct.rvin_dev**, %struct.rvin_dev*** %31, align 8
  %33 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %34 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.rvin_dev*, %struct.rvin_dev** %32, i64 %35
  store %struct.rvin_dev* null, %struct.rvin_dev** %36, align 8
  br label %37

37:                                               ; preds = %29, %28
  %38 = load %struct.rvin_group*, %struct.rvin_group** %3, align 8
  %39 = getelementptr inbounds %struct.rvin_group, %struct.rvin_group* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.rvin_group*, %struct.rvin_group** %3, align 8
  %42 = getelementptr inbounds %struct.rvin_group, %struct.rvin_group* %41, i32 0, i32 0
  %43 = load i32, i32* @rvin_group_release, align 4
  %44 = call i32 @kref_put(i32* %42, i32 %43)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
