; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_iov_assign_int_moderator_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_iov_assign_int_moderator_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@FM10K_ERR_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_hw*, i64)* @fm10k_iov_assign_int_moderator_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_iov_assign_int_moderator_pf(%struct.fm10k_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %11 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %9, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %16, i32* %3, align 4
  br label %62

17:                                               ; preds = %2
  %18 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @fm10k_vf_vector_index(%struct.fm10k_hw* %18, i64 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %23 = call i64 @fm10k_vectors_per_pool(%struct.fm10k_hw* %22)
  %24 = add nsw i64 %21, %23
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = sub nsw i64 %25, 1
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %39, %17
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @FM10K_MSIX_VECTOR_MASK(i64 %33)
  %35 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %32, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %42

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %8, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %8, align 8
  br label %27

42:                                               ; preds = %37, %27
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %45 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, 1
  %49 = icmp eq i64 %43, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %52 = call i32 @FM10K_ITR2(i64 0)
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %51, i32 %52, i64 %53)
  br label %61

55:                                               ; preds = %42
  %56 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @FM10K_ITR2(i64 %57)
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %56, i32 %58, i64 %59)
  br label %61

61:                                               ; preds = %55, %50
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %15
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @fm10k_vf_vector_index(%struct.fm10k_hw*, i64) #1

declare dso_local i64 @fm10k_vectors_per_pool(%struct.fm10k_hw*) #1

declare dso_local i32 @fm10k_read_reg(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @FM10K_MSIX_VECTOR_MASK(i64) #1

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i64) #1

declare dso_local i32 @FM10K_ITR2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
