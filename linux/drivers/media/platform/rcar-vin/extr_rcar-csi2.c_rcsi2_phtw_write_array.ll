; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-csi2.c_rcsi2_phtw_write_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-csi2.c_rcsi2_phtw_write_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_csi2 = type { i32 }
%struct.phtw_value = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_csi2*, %struct.phtw_value*)* @rcsi2_phtw_write_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcsi2_phtw_write_array(%struct.rcar_csi2* %0, %struct.phtw_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rcar_csi2*, align 8
  %5 = alloca %struct.phtw_value*, align 8
  %6 = alloca %struct.phtw_value*, align 8
  %7 = alloca i32, align 4
  store %struct.rcar_csi2* %0, %struct.rcar_csi2** %4, align 8
  store %struct.phtw_value* %1, %struct.phtw_value** %5, align 8
  %8 = load %struct.phtw_value*, %struct.phtw_value** %5, align 8
  store %struct.phtw_value* %8, %struct.phtw_value** %6, align 8
  br label %9

9:                                                ; preds = %35, %2
  %10 = load %struct.phtw_value*, %struct.phtw_value** %6, align 8
  %11 = getelementptr inbounds %struct.phtw_value, %struct.phtw_value* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load %struct.phtw_value*, %struct.phtw_value** %6, align 8
  %16 = getelementptr inbounds %struct.phtw_value, %struct.phtw_value* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i1 [ true, %9 ], [ %18, %14 ]
  br i1 %20, label %21, label %38

21:                                               ; preds = %19
  %22 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %23 = load %struct.phtw_value*, %struct.phtw_value** %6, align 8
  %24 = getelementptr inbounds %struct.phtw_value, %struct.phtw_value* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.phtw_value*, %struct.phtw_value** %6, align 8
  %27 = getelementptr inbounds %struct.phtw_value, %struct.phtw_value* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @rcsi2_phtw_write(%struct.rcar_csi2* %22, i64 %25, i64 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %39

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.phtw_value*, %struct.phtw_value** %6, align 8
  %37 = getelementptr inbounds %struct.phtw_value, %struct.phtw_value* %36, i32 1
  store %struct.phtw_value* %37, %struct.phtw_value** %6, align 8
  br label %9

38:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %32
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @rcsi2_phtw_write(%struct.rcar_csi2*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
