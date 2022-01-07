; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ulp.c_bnxt_fill_msix_vecs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ulp.c_bnxt_fill_msix_vecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.TYPE_4__*, %struct.bnxt_en_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.bnxt_en_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.bnxt_msix_entry = type { i32, i32, i32 }

@BNXT_ROCE_ULP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, %struct.bnxt_msix_entry*)* @bnxt_fill_msix_vecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_fill_msix_vecs(%struct.bnxt* %0, %struct.bnxt_msix_entry* %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.bnxt_msix_entry*, align 8
  %5 = alloca %struct.bnxt_en_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store %struct.bnxt_msix_entry* %1, %struct.bnxt_msix_entry** %4, align 8
  %9 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %10 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %9, i32 0, i32 1
  %11 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %10, align 8
  store %struct.bnxt_en_dev* %11, %struct.bnxt_en_dev** %5, align 8
  %12 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %5, align 8
  %13 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i64, i64* @BNXT_ROCE_ULP, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %5, align 8
  %20 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i64, i64* @BNXT_ROCE_ULP, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %63, %2
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %26
  %31 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %32 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bnxt_msix_entry*, %struct.bnxt_msix_entry** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.bnxt_msix_entry, %struct.bnxt_msix_entry* %41, i64 %43
  %45 = getelementptr inbounds %struct.bnxt_msix_entry, %struct.bnxt_msix_entry* %44, i32 0, i32 2
  store i32 %40, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %46, %47
  %49 = load %struct.bnxt_msix_entry*, %struct.bnxt_msix_entry** %4, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.bnxt_msix_entry, %struct.bnxt_msix_entry* %49, i64 %51
  %53 = getelementptr inbounds %struct.bnxt_msix_entry, %struct.bnxt_msix_entry* %52, i32 0, i32 0
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %54, %55
  %57 = mul nsw i32 %56, 128
  %58 = load %struct.bnxt_msix_entry*, %struct.bnxt_msix_entry** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.bnxt_msix_entry, %struct.bnxt_msix_entry* %58, i64 %60
  %62 = getelementptr inbounds %struct.bnxt_msix_entry, %struct.bnxt_msix_entry* %61, i32 0, i32 1
  store i32 %57, i32* %62, align 4
  br label %63

63:                                               ; preds = %30
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %26

66:                                               ; preds = %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
