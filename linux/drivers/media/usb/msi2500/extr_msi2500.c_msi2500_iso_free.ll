; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/msi2500/extr_msi2500.c_msi2500_iso_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/msi2500/extr_msi2500.c_msi2500_iso_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi2500_dev = type { %struct.TYPE_2__**, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MAX_ISO_BUFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Freeing URB\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msi2500_dev*)* @msi2500_iso_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msi2500_iso_free(%struct.msi2500_dev* %0) #0 {
  %2 = alloca %struct.msi2500_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.msi2500_dev* %0, %struct.msi2500_dev** %2, align 8
  %4 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %5 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @dev_dbg(i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %84, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MAX_ISO_BUFS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %87

12:                                               ; preds = %8
  %13 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %14 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %83

21:                                               ; preds = %12
  %22 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %23 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %27 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 %30
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %68

36:                                               ; preds = %21
  %37 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %38 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %41 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %42, i64 %44
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %50 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %51, i64 %53
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %59 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %60, i64 %62
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @usb_free_coherent(i32 %39, i32 %48, i64 %57, i32 %66)
  br label %68

68:                                               ; preds = %36, %21
  %69 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %70 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %71, i64 %73
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = call i32 @usb_free_urb(%struct.TYPE_2__* %75)
  %77 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %78 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %79, i64 %81
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %82, align 8
  br label %83

83:                                               ; preds = %68, %12
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %3, align 4
  br label %8

87:                                               ; preds = %8
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i64, i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
