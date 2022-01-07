; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_set_arate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_set_arate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apds990x_chip = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@arates_hz = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@apersis = common dso_local global i32* null, align 8
@APDS990X_PERS = common dso_local global i32 0, align 4
@APDS990X_APERS_SHIFT = common dso_local global i32 0, align 4
@APDS990X_PPERS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apds990x_chip*, i32)* @apds990x_set_arate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds990x_set_arate(%struct.apds990x_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.apds990x_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.apds990x_chip* %0, %struct.apds990x_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %22, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32*, i32** @arates_hz, align 8
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = load i32, i32* %5, align 4
  %14 = load i32*, i32** @arates_hz, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %13, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %25

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %7

25:                                               ; preds = %20, %7
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** @arates_hz, align 8
  %28 = call i32 @ARRAY_SIZE(i32* %27)
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %70

33:                                               ; preds = %25
  %34 = load i32*, i32** @apersis, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %40 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32*, i32** @arates_hz, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %47 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %49 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i64 @pm_runtime_suspended(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %70

55:                                               ; preds = %33
  %56 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %57 = load i32, i32* @APDS990X_PERS, align 4
  %58 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %59 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @APDS990X_APERS_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %64 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @APDS990X_PPERS_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = or i32 %62, %67
  %69 = call i32 @apds990x_write_byte(%struct.apds990x_chip* %56, i32 %57, i32 %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %55, %54, %30
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @pm_runtime_suspended(i32*) #1

declare dso_local i32 @apds990x_write_byte(%struct.apds990x_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
