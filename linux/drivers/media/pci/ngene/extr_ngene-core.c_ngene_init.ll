; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_ngene_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_ngene_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene = type { i32, i32, i64, %struct.TYPE_4__*, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.ngene* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@event_tasklet = common dso_local global i32 0, align 4
@MAX_STREAM = common dso_local global i32 0, align 4
@NGENE_INT_ENABLE = common dso_local global i32 0, align 4
@NGENE_INT_COUNTS = common dso_local global i32 0, align 4
@DEV_VER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Device version %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ngene*)* @ngene_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngene_init(%struct.ngene* %0) #0 {
  %2 = alloca %struct.ngene*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.ngene* %0, %struct.ngene** %2, align 8
  %5 = load %struct.ngene*, %struct.ngene** %2, align 8
  %6 = getelementptr inbounds %struct.ngene, %struct.ngene* %5, i32 0, i32 6
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.ngene*, %struct.ngene** %2, align 8
  %10 = getelementptr inbounds %struct.ngene, %struct.ngene* %9, i32 0, i32 5
  %11 = load i32, i32* @event_tasklet, align 4
  %12 = load %struct.ngene*, %struct.ngene** %2, align 8
  %13 = ptrtoint %struct.ngene* %12 to i64
  %14 = call i32 @tasklet_init(i32* %10, i32 %11, i64 %13)
  %15 = load %struct.ngene*, %struct.ngene** %2, align 8
  %16 = getelementptr inbounds %struct.ngene, %struct.ngene* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 49152
  %19 = call i32 @memset_io(i64 %18, i32 0, i32 544)
  %20 = load %struct.ngene*, %struct.ngene** %2, align 8
  %21 = getelementptr inbounds %struct.ngene, %struct.ngene* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 50176
  %24 = call i32 @memset_io(i64 %23, i32 0, i32 256)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %46, %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MAX_STREAM, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load %struct.ngene*, %struct.ngene** %2, align 8
  %31 = load %struct.ngene*, %struct.ngene** %2, align 8
  %32 = getelementptr inbounds %struct.ngene, %struct.ngene* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store %struct.ngene* %30, %struct.ngene** %37, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.ngene*, %struct.ngene** %2, align 8
  %40 = getelementptr inbounds %struct.ngene, %struct.ngene* %39, i32 0, i32 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %38, i32* %45, align 8
  br label %46

46:                                               ; preds = %29
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %25

49:                                               ; preds = %25
  %50 = load %struct.ngene*, %struct.ngene** %2, align 8
  %51 = getelementptr inbounds %struct.ngene, %struct.ngene* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @NGENE_INT_ENABLE, align 4
  %53 = call i32 @ngwritel(i32 0, i32 %52)
  %54 = load i32, i32* @NGENE_INT_COUNTS, align 4
  %55 = call i32 @ngreadl(i32 %54)
  %56 = load %struct.ngene*, %struct.ngene** %2, align 8
  %57 = getelementptr inbounds %struct.ngene, %struct.ngene* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @DEV_VER, align 4
  %59 = call i32 @ngreadl(i32 %58)
  %60 = and i32 %59, 15
  %61 = load %struct.ngene*, %struct.ngene** %2, align 8
  %62 = getelementptr inbounds %struct.ngene, %struct.ngene* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.device*, %struct.device** %3, align 8
  %64 = load %struct.ngene*, %struct.ngene** %2, align 8
  %65 = getelementptr inbounds %struct.ngene, %struct.ngene* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_info(%struct.device* %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %66)
  ret void
}

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @memset_io(i64, i32, i32) #1

declare dso_local i32 @ngwritel(i32, i32) #1

declare dso_local i32 @ngreadl(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
