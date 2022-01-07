; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_get_le_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_get_le_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_tcam = type { i64, i64, i64, i64, i64, i64 }

@LE_ET_UNKNOWN = common dso_local global i32 0, align 4
@LE_ET_TCAM_CON = common dso_local global i32 0, align 4
@LE_ET_TCAM_SERVER = common dso_local global i32 0, align 4
@LE_ET_TCAM_FILTER = common dso_local global i32 0, align 4
@LE_ET_TCAM_CLIP = common dso_local global i32 0, align 4
@LE_ET_TCAM_ROUTING = common dso_local global i32 0, align 4
@LE_ET_HASH_CON = common dso_local global i32 0, align 4
@LE_ET_INVALID_TID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.cudbg_tcam*)* @cudbg_get_le_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cudbg_get_le_type(i64 %0, %struct.cudbg_tcam* byval(%struct.cudbg_tcam) align 8 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @LE_ET_UNKNOWN, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i64, i64* %3, align 8
  %7 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %1, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp slt i64 %6, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @LE_ET_TCAM_CON, align 4
  store i32 %11, i32* %4, align 4
  br label %54

12:                                               ; preds = %2
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %1, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @LE_ET_TCAM_SERVER, align 4
  store i32 %18, i32* %4, align 4
  br label %53

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %1, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @LE_ET_TCAM_FILTER, align 4
  store i32 %25, i32* %4, align 4
  br label %52

26:                                               ; preds = %19
  %27 = load i64, i64* %3, align 8
  %28 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %1, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @LE_ET_TCAM_CLIP, align 4
  store i32 %32, i32* %4, align 4
  br label %51

33:                                               ; preds = %26
  %34 = load i64, i64* %3, align 8
  %35 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %1, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @LE_ET_TCAM_ROUTING, align 4
  store i32 %39, i32* %4, align 4
  br label %50

40:                                               ; preds = %33
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %1, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @LE_ET_HASH_CON, align 4
  store i32 %46, i32* %4, align 4
  br label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @LE_ET_INVALID_TID, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %45
  br label %50

50:                                               ; preds = %49, %38
  br label %51

51:                                               ; preds = %50, %31
  br label %52

52:                                               ; preds = %51, %24
  br label %53

53:                                               ; preds = %52, %17
  br label %54

54:                                               ; preds = %53, %10
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
