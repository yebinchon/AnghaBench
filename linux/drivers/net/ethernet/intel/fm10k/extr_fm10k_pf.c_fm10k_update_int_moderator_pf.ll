; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_update_int_moderator_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_update_int_moderator_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FM10K_INT_CTRL = common dso_local global i32 0, align 4
@FM10K_ITR_REG_COUNT_PF = common dso_local global i64 0, align 8
@FM10K_INT_CTRL_ENABLEMODERATOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_hw*)* @fm10k_update_int_moderator_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_update_int_moderator_pf(%struct.fm10k_hw* %0) #0 {
  %2 = alloca %struct.fm10k_hw*, align 8
  %3 = alloca i64, align 8
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %2, align 8
  %4 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %5 = load i32, i32* @FM10K_INT_CTRL, align 4
  %6 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %4, i32 %5, i64 0)
  %7 = load i64, i64* @FM10K_ITR_REG_COUNT_PF, align 8
  %8 = sub nsw i64 %7, 1
  store i64 %8, i64* %3, align 8
  br label %9

9:                                                ; preds = %20, %1
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @FM10K_MSIX_VECTOR_MASK(i64 %14)
  %16 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %13, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %23

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19
  %21 = load i64, i64* %3, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %3, align 8
  br label %9

23:                                               ; preds = %18, %9
  %24 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %25 = load i64, i64* @FM10K_ITR_REG_COUNT_PF, align 8
  %26 = call i32 @FM10K_ITR2(i64 %25)
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %24, i32 %26, i64 %27)
  %29 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %30 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %23
  %35 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %36 = call i32 @FM10K_ITR2(i64 0)
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %35, i32 %36, i64 %37)
  br label %39

39:                                               ; preds = %34, %23
  %40 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %41 = load i32, i32* @FM10K_INT_CTRL, align 4
  %42 = load i64, i64* @FM10K_INT_CTRL_ENABLEMODERATOR, align 8
  %43 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %40, i32 %41, i64 %42)
  ret void
}

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i64) #1

declare dso_local i32 @fm10k_read_reg(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @FM10K_MSIX_VECTOR_MASK(i64) #1

declare dso_local i32 @FM10K_ITR2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
