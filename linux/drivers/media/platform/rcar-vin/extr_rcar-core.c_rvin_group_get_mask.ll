; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rvin_group_get_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rvin_group_get_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rvin_group_route* }
%struct.rvin_group_route = type { i32, i64, i32, i8 }

@.str = private unnamed_addr constant [43 x i8] c"Adding route: vin: %d csi: %d channel: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvin_dev*, i32, i8)* @rvin_group_get_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_group_get_mask(%struct.rvin_dev* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.rvin_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.rvin_group_route*, align 8
  %8 = alloca i32, align 4
  store %struct.rvin_dev* %0, %struct.rvin_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  store i32 0, i32* %8, align 4
  %9 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %10 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.rvin_group_route*, %struct.rvin_group_route** %12, align 8
  store %struct.rvin_group_route* %13, %struct.rvin_group_route** %7, align 8
  br label %14

14:                                               ; preds = %59, %3
  %15 = load %struct.rvin_group_route*, %struct.rvin_group_route** %7, align 8
  %16 = getelementptr inbounds %struct.rvin_group_route, %struct.rvin_group_route* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %62

19:                                               ; preds = %14
  %20 = load %struct.rvin_group_route*, %struct.rvin_group_route** %7, align 8
  %21 = getelementptr inbounds %struct.rvin_group_route, %struct.rvin_group_route* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %24 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %19
  %28 = load %struct.rvin_group_route*, %struct.rvin_group_route** %7, align 8
  %29 = getelementptr inbounds %struct.rvin_group_route, %struct.rvin_group_route* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %27
  %34 = load %struct.rvin_group_route*, %struct.rvin_group_route** %7, align 8
  %35 = getelementptr inbounds %struct.rvin_group_route, %struct.rvin_group_route* %34, i32 0, i32 3
  %36 = load i8, i8* %35, align 4
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* %6, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %33
  %42 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %43 = load %struct.rvin_group_route*, %struct.rvin_group_route** %7, align 8
  %44 = getelementptr inbounds %struct.rvin_group_route, %struct.rvin_group_route* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.rvin_group_route*, %struct.rvin_group_route** %7, align 8
  %47 = getelementptr inbounds %struct.rvin_group_route, %struct.rvin_group_route* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.rvin_group_route*, %struct.rvin_group_route** %7, align 8
  %50 = getelementptr inbounds %struct.rvin_group_route, %struct.rvin_group_route* %49, i32 0, i32 3
  %51 = load i8, i8* %50, align 4
  %52 = call i32 @vin_dbg(%struct.rvin_dev* %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %45, i32 %48, i8 zeroext %51)
  %53 = load %struct.rvin_group_route*, %struct.rvin_group_route** %7, align 8
  %54 = getelementptr inbounds %struct.rvin_group_route, %struct.rvin_group_route* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %41, %33, %27, %19
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.rvin_group_route*, %struct.rvin_group_route** %7, align 8
  %61 = getelementptr inbounds %struct.rvin_group_route, %struct.rvin_group_route* %60, i32 1
  store %struct.rvin_group_route* %61, %struct.rvin_group_route** %7, align 8
  br label %14

62:                                               ; preds = %14
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local i32 @vin_dbg(%struct.rvin_dev*, i8*, i64, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
