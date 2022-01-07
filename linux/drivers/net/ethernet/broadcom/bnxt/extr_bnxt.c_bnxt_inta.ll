; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_inta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_inta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_napi = type { i32, %struct.bnxt_cp_ring_info, %struct.bnxt* }
%struct.bnxt_cp_ring_info = type { %struct.TYPE_4__, %struct.TYPE_3__, i32**, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bnxt = type { i32, i64 }

@BNXT_CAG_REG_LEGACY_INT_STATUS = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bnxt_inta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_inta(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bnxt_napi*, align 8
  %7 = alloca %struct.bnxt*, align 8
  %8 = alloca %struct.bnxt_cp_ring_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.bnxt_napi*
  store %struct.bnxt_napi* %12, %struct.bnxt_napi** %6, align 8
  %13 = load %struct.bnxt_napi*, %struct.bnxt_napi** %6, align 8
  %14 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %13, i32 0, i32 2
  %15 = load %struct.bnxt*, %struct.bnxt** %14, align 8
  store %struct.bnxt* %15, %struct.bnxt** %7, align 8
  %16 = load %struct.bnxt_napi*, %struct.bnxt_napi** %6, align 8
  %17 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %16, i32 0, i32 1
  store %struct.bnxt_cp_ring_info* %17, %struct.bnxt_cp_ring_info** %8, align 8
  %18 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %19 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @RING_CMP(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %23 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %22, i32 0, i32 2
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @CP_RING(i32 %25)
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @CP_IDX(i32 %29)
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i32 @prefetch(i32* %31)
  %33 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %34 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %35 = call i32 @bnxt_has_work(%struct.bnxt* %33, %struct.bnxt_cp_ring_info* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %2
  %38 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %39 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BNXT_CAG_REG_LEGACY_INT_STATUS, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %46 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 65536, %48
  %50 = and i32 %44, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %37
  %53 = load i32, i32* @IRQ_NONE, align 4
  store i32 %53, i32* %3, align 4
  br label %75

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54, %2
  %56 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %57 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @BNXT_CP_DB_IRQ_DIS(i32 %59)
  %61 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %62 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %61, i32 0, i32 0
  %63 = call i64 @atomic_read(i32* %62)
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %55
  %69 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %69, i32* %3, align 4
  br label %75

70:                                               ; preds = %55
  %71 = load %struct.bnxt_napi*, %struct.bnxt_napi** %6, align 8
  %72 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %71, i32 0, i32 0
  %73 = call i32 @napi_schedule(i32* %72)
  %74 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %68, %52
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @RING_CMP(i32) #1

declare dso_local i32 @prefetch(i32*) #1

declare dso_local i64 @CP_RING(i32) #1

declare dso_local i64 @CP_IDX(i32) #1

declare dso_local i32 @bnxt_has_work(%struct.bnxt*, %struct.bnxt_cp_ring_info*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BNXT_CP_DB_IRQ_DIS(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
