; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_qm1d1b0004.c_lookup_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_qm1d1b0004.c_lookup_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm1d1b0004_cb_map = type { i64, i32 }

@cb_maps = common dso_local global %struct.qm1d1b0004_cb_map* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @lookup_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_cb(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qm1d1b0004_cb_map*, align 8
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %26, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.qm1d1b0004_cb_map*, %struct.qm1d1b0004_cb_map** @cb_maps, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.qm1d1b0004_cb_map* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %6
  %12 = load %struct.qm1d1b0004_cb_map*, %struct.qm1d1b0004_cb_map** @cb_maps, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.qm1d1b0004_cb_map, %struct.qm1d1b0004_cb_map* %12, i64 %14
  store %struct.qm1d1b0004_cb_map* %15, %struct.qm1d1b0004_cb_map** %5, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.qm1d1b0004_cb_map*, %struct.qm1d1b0004_cb_map** %5, align 8
  %18 = getelementptr inbounds %struct.qm1d1b0004_cb_map, %struct.qm1d1b0004_cb_map* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = load %struct.qm1d1b0004_cb_map*, %struct.qm1d1b0004_cb_map** %5, align 8
  %23 = getelementptr inbounds %struct.qm1d1b0004_cb_map, %struct.qm1d1b0004_cb_map* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %2, align 4
  br label %30

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %6

29:                                               ; preds = %6
  store i32 192, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %21
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @ARRAY_SIZE(%struct.qm1d1b0004_cb_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
