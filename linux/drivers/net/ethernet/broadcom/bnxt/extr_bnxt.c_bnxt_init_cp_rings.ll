; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_init_cp_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_init_cp_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.TYPE_6__, %struct.TYPE_4__** }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.bnxt_cp_ring_info }
%struct.bnxt_cp_ring_info = type { %struct.TYPE_5__, %struct.bnxt_ring_struct, %struct.bnxt_cp_ring_info** }
%struct.TYPE_5__ = type { i32, i32 }
%struct.bnxt_ring_struct = type { i8* }

@INVALID_HW_RING_ID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_init_cp_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_init_cp_rings(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_cp_ring_info*, align 8
  %6 = alloca %struct.bnxt_ring_struct*, align 8
  %7 = alloca %struct.bnxt_cp_ring_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %80, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %11 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %83

14:                                               ; preds = %8
  %15 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %16 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %17, i64 %19
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store %struct.bnxt_cp_ring_info* %22, %struct.bnxt_cp_ring_info** %5, align 8
  %23 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %24 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %23, i32 0, i32 1
  store %struct.bnxt_ring_struct* %24, %struct.bnxt_ring_struct** %6, align 8
  %25 = load i8*, i8** @INVALID_HW_RING_ID, align 8
  %26 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %6, align 8
  %27 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %29 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %33 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %36 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %40 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %76, %14
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %79

45:                                               ; preds = %42
  %46 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %47 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %46, i32 0, i32 2
  %48 = load %struct.bnxt_cp_ring_info**, %struct.bnxt_cp_ring_info*** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %48, i64 %50
  %52 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %51, align 8
  store %struct.bnxt_cp_ring_info* %52, %struct.bnxt_cp_ring_info** %7, align 8
  %53 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %54 = icmp ne %struct.bnxt_cp_ring_info* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  br label %76

56:                                               ; preds = %45
  %57 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %58 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %57, i32 0, i32 1
  store %struct.bnxt_ring_struct* %58, %struct.bnxt_ring_struct** %6, align 8
  %59 = load i8*, i8** @INVALID_HW_RING_ID, align 8
  %60 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %6, align 8
  %61 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %63 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %67 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %70 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %74 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  br label %76

76:                                               ; preds = %56, %55
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %42

79:                                               ; preds = %42
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %8

83:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
