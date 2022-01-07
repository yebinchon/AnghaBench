; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_clear_sm_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_clear_sm_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }

@mmSYNC_MNGR_SOB_OBJ_1023 = common dso_local global i32 0, align 4
@mmSYNC_MNGR_SOB_OBJ_0 = common dso_local global i32 0, align 4
@mmSYNC_MNGR_MON_STATUS_255 = common dso_local global i32 0, align 4
@mmSYNC_MNGR_MON_STATUS_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*)* @goya_clear_sm_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goya_clear_sm_regs(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  %6 = load i32, i32* @mmSYNC_MNGR_SOB_OBJ_1023, align 4
  %7 = load i32, i32* @mmSYNC_MNGR_SOB_OBJ_0, align 4
  %8 = sub nsw i32 %6, %7
  %9 = add nsw i32 %8, 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @mmSYNC_MNGR_MON_STATUS_255, align 4
  %11 = load i32, i32* @mmSYNC_MNGR_MON_STATUS_0, align 4
  %12 = sub nsw i32 %10, %11
  %13 = add nsw i32 %12, 4
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %23, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32, i32* @mmSYNC_MNGR_SOB_OBJ_0, align 4
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %19, %20
  %22 = call i32 @WREG32(i32 %21, i32 0)
  br label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 4
  store i32 %25, i32* %3, align 4
  br label %14

26:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %36, %26
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32, i32* @mmSYNC_MNGR_MON_STATUS_0, align 4
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %32, %33
  %35 = call i32 @WREG32(i32 %34, i32 0)
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 4
  store i32 %38, i32* %3, align 4
  br label %27

39:                                               ; preds = %27
  %40 = load i32, i32* @mmSYNC_MNGR_SOB_OBJ_0, align 4
  %41 = call i32 @RREG32(i32 %40)
  store i32 %41, i32* %3, align 4
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
