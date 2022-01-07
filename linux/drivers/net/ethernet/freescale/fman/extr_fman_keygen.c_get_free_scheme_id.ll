; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_keygen.c_get_free_scheme_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_keygen.c_get_free_scheme_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_keygen = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FM_KG_MAX_NUM_OF_SCHEMES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fman_keygen*, i64*)* @get_free_scheme_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_free_scheme_id(%struct.fman_keygen* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fman_keygen*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct.fman_keygen* %0, %struct.fman_keygen** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %24, %2
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @FM_KG_MAX_NUM_OF_SCHEMES, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %7
  %12 = load %struct.fman_keygen*, %struct.fman_keygen** %4, align 8
  %13 = getelementptr inbounds %struct.fman_keygen, %struct.fman_keygen* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %11
  %21 = load i64, i64* %6, align 8
  %22 = load i64*, i64** %5, align 8
  store i64 %21, i64* %22, align 8
  store i32 0, i32* %3, align 4
  br label %30

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %6, align 8
  br label %7

27:                                               ; preds = %7
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %20
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
