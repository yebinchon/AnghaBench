; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_free_cp_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_free_cp_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.bnxt_napi** }
%struct.bnxt_napi = type { %struct.bnxt_cp_ring_info }
%struct.bnxt_cp_ring_info = type { %struct.bnxt_cp_ring_info**, %struct.bnxt_ring_struct }
%struct.bnxt_ring_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_free_cp_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_free_cp_rings(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_napi*, align 8
  %5 = alloca %struct.bnxt_cp_ring_info*, align 8
  %6 = alloca %struct.bnxt_ring_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnxt_cp_ring_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %9 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %10 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %9, i32 0, i32 1
  %11 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %10, align 8
  %12 = icmp ne %struct.bnxt_napi** %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %77

14:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %74, %14
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %77

21:                                               ; preds = %15
  %22 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %23 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %22, i32 0, i32 1
  %24 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.bnxt_napi*, %struct.bnxt_napi** %24, i64 %26
  %28 = load %struct.bnxt_napi*, %struct.bnxt_napi** %27, align 8
  store %struct.bnxt_napi* %28, %struct.bnxt_napi** %4, align 8
  %29 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %30 = icmp ne %struct.bnxt_napi* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  br label %74

32:                                               ; preds = %21
  %33 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %34 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %33, i32 0, i32 0
  store %struct.bnxt_cp_ring_info* %34, %struct.bnxt_cp_ring_info** %5, align 8
  %35 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %36 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %35, i32 0, i32 1
  store %struct.bnxt_ring_struct* %36, %struct.bnxt_ring_struct** %6, align 8
  %37 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %38 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %6, align 8
  %39 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %38, i32 0, i32 0
  %40 = call i32 @bnxt_free_ring(%struct.bnxt* %37, i32* %39)
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %70, %32
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %44, label %73

44:                                               ; preds = %41
  %45 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %46 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %45, i32 0, i32 0
  %47 = load %struct.bnxt_cp_ring_info**, %struct.bnxt_cp_ring_info*** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %47, i64 %49
  %51 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %50, align 8
  store %struct.bnxt_cp_ring_info* %51, %struct.bnxt_cp_ring_info** %8, align 8
  %52 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %53 = icmp ne %struct.bnxt_cp_ring_info* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %44
  %55 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %56 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %55, i32 0, i32 1
  store %struct.bnxt_ring_struct* %56, %struct.bnxt_ring_struct** %6, align 8
  %57 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %58 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %6, align 8
  %59 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %58, i32 0, i32 0
  %60 = call i32 @bnxt_free_ring(%struct.bnxt* %57, i32* %59)
  %61 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %62 = call i32 @kfree(%struct.bnxt_cp_ring_info* %61)
  %63 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %64 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %63, i32 0, i32 0
  %65 = load %struct.bnxt_cp_ring_info**, %struct.bnxt_cp_ring_info*** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %65, i64 %67
  store %struct.bnxt_cp_ring_info* null, %struct.bnxt_cp_ring_info** %68, align 8
  br label %69

69:                                               ; preds = %54, %44
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %41

73:                                               ; preds = %41
  br label %74

74:                                               ; preds = %73, %31
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %15

77:                                               ; preds = %13, %15
  ret void
}

declare dso_local i32 @bnxt_free_ring(%struct.bnxt*, i32*) #1

declare dso_local i32 @kfree(%struct.bnxt_cp_ring_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
