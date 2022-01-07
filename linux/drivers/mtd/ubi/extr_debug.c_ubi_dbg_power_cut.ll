; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_debug.c_ubi_dbg_power_cut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_debug.c_ubi_dbg_power_cut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i64 }

@.str = private unnamed_addr constant [55 x i8] c"XXXXXXXXXXXXXXX emulating a power cut XXXXXXXXXXXXXXXX\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_dbg_power_cut(%struct.ubi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %8 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

15:                                               ; preds = %2
  %16 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %17 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %15
  %22 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %23 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %27 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i64 %25, i64* %28, align 8
  %29 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %30 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %34 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %32, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %21
  %39 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %40 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %44 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %42, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %6, align 4
  %49 = call i32 (...) @prandom_u32()
  %50 = load i32, i32* %6, align 4
  %51 = urem i32 %49, %50
  %52 = zext i32 %51 to i64
  %53 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %54 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, %52
  store i64 %57, i64* %55, align 8
  br label %58

58:                                               ; preds = %38, %21
  store i32 0, i32* %3, align 4
  br label %76

59:                                               ; preds = %15
  %60 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %61 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, -1
  store i64 %64, i64* %62, align 8
  %65 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %66 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %76

71:                                               ; preds = %59
  %72 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %73 = call i32 @ubi_msg(%struct.ubi_device* %72, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %75 = call i32 @ubi_ro_mode(%struct.ubi_device* %74)
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %71, %70, %58, %14
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @ubi_msg(%struct.ubi_device*, i8*) #1

declare dso_local i32 @ubi_ro_mode(%struct.ubi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
