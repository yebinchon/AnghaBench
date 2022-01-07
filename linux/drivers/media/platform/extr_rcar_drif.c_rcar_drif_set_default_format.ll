; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_set_default_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_set_default_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.rcar_drif_sdr = type { i64, i64, i32, i32, i32, %struct.TYPE_3__* }

@formats = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"default fmt[%u]: mask %lu num %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_drif_sdr*)* @rcar_drif_set_default_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_drif_set_default_format(%struct.rcar_drif_sdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcar_drif_sdr*, align 8
  %4 = alloca i32, align 4
  store %struct.rcar_drif_sdr* %0, %struct.rcar_drif_sdr** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %50, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @formats, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %7)
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %53

10:                                               ; preds = %5
  %11 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %12 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @formats, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %13, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %10
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @formats, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %27 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %26, i32 0, i32 5
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %27, align 8
  %28 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %29 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %32 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %34 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %37 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %39 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %43 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %46 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44, i64 %47)
  store i32 0, i32* %2, align 4
  br label %56

49:                                               ; preds = %10
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %5

53:                                               ; preds = %5
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %21
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
