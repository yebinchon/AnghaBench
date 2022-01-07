; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_print_razwi_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_print_razwi_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }

@mmDMA_MACRO_RAZWI_LBW_WT_VLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Illegal write to LBW\0A\00", align 1
@mmDMA_MACRO_RAZWI_LBW_RD_VLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Illegal read from LBW\0A\00", align 1
@mmDMA_MACRO_RAZWI_HBW_WT_VLD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Illegal write to HBW\0A\00", align 1
@mmDMA_MACRO_RAZWI_HBW_RD_VLD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Illegal read from HBW\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*)* @goya_print_razwi_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goya_print_razwi_info(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  %3 = load i32, i32* @mmDMA_MACRO_RAZWI_LBW_WT_VLD, align 4
  %4 = call i64 @RREG32(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %8 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dev_err(i32 %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @mmDMA_MACRO_RAZWI_LBW_WT_VLD, align 4
  %12 = call i32 @WREG32(i32 %11, i32 0)
  br label %13

13:                                               ; preds = %6, %1
  %14 = load i32, i32* @mmDMA_MACRO_RAZWI_LBW_RD_VLD, align 4
  %15 = call i64 @RREG32(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %19 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @mmDMA_MACRO_RAZWI_LBW_RD_VLD, align 4
  %23 = call i32 @WREG32(i32 %22, i32 0)
  br label %24

24:                                               ; preds = %17, %13
  %25 = load i32, i32* @mmDMA_MACRO_RAZWI_HBW_WT_VLD, align 4
  %26 = call i64 @RREG32(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %30 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @mmDMA_MACRO_RAZWI_HBW_WT_VLD, align 4
  %34 = call i32 @WREG32(i32 %33, i32 0)
  br label %35

35:                                               ; preds = %28, %24
  %36 = load i32, i32* @mmDMA_MACRO_RAZWI_HBW_RD_VLD, align 4
  %37 = call i64 @RREG32(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %41 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32, i32* @mmDMA_MACRO_RAZWI_HBW_RD_VLD, align 4
  %45 = call i32 @WREG32(i32 %44, i32 0)
  br label %46

46:                                               ; preds = %39, %35
  ret void
}

declare dso_local i64 @RREG32(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
