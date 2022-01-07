; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ati_remote.c_ati_remote_compute_accel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ati_remote.c_ati_remote_compute_accel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.ati_remote = type { i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@accel = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ati_remote*)* @ati_remote_compute_accel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ati_remote_compute_accel(%struct.ati_remote* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ati_remote*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ati_remote* %0, %struct.ati_remote** %3, align 8
  %8 = load i64, i64* @jiffies, align 8
  store i64 %8, i64* %4, align 8
  %9 = call i64 @msecs_to_jiffies(i32 250)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %12 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = add i64 %13, %14
  %16 = call i64 @time_after(i64 %10, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %21 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  store i32 1, i32* %2, align 4
  br label %63

22:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %53, %22
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @accel, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %25)
  %27 = sub nsw i32 %26, 1
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %23
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @accel, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @msecs_to_jiffies(i32 %35)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %39 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %40, %41
  %43 = call i64 @time_before(i64 %37, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %29
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @accel, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %2, align 4
  br label %63

52:                                               ; preds = %29
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %23

56:                                               ; preds = %23
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @accel, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %56, %45, %18
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
