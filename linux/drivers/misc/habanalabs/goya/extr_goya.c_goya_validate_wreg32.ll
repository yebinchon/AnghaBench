; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_validate_wreg32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_validate_wreg32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.goya_device* }
%struct.goya_device = type { i32 }
%struct.hl_cs_parser = type { i32 }
%struct.packet_wreg32 = type { i32, i32 }

@GOYA_PKT_WREG32_CTL_REG_OFFSET_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"WREG32 packet details:\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"reg_offset == 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"value      == 0x%x\0A\00", align 1
@mmDMA_CH_0_WR_COMP_ADDR_LO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"WREG32 packet with illegal address 0x%x\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@HW_CAP_MMU = common dso_local global i32 0, align 4
@CFG_BASE = common dso_local global i64 0, align 8
@mmSYNC_MNGR_SOB_OBJ_0 = common dso_local global i64 0, align 8
@mmSYNC_MNGR_SOB_OBJ_1023 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"WREG32 packet with illegal value 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_cs_parser*, %struct.packet_wreg32*)* @goya_validate_wreg32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_validate_wreg32(%struct.hl_device* %0, %struct.hl_cs_parser* %1, %struct.packet_wreg32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_device*, align 8
  %6 = alloca %struct.hl_cs_parser*, align 8
  %7 = alloca %struct.packet_wreg32*, align 8
  %8 = alloca %struct.goya_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %5, align 8
  store %struct.hl_cs_parser* %1, %struct.hl_cs_parser** %6, align 8
  store %struct.packet_wreg32* %2, %struct.packet_wreg32** %7, align 8
  %12 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %13 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %12, i32 0, i32 1
  %14 = load %struct.goya_device*, %struct.goya_device** %13, align 8
  store %struct.goya_device* %14, %struct.goya_device** %8, align 8
  %15 = load %struct.packet_wreg32*, %struct.packet_wreg32** %7, align 8
  %16 = getelementptr inbounds %struct.packet_wreg32, %struct.packet_wreg32* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  %19 = load i32, i32* @GOYA_PKT_WREG32_CTL_REG_OFFSET_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %11, align 4
  %21 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %22 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, ...) @dev_dbg(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %26 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 (i32, i8*, ...) @dev_dbg(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %31 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.packet_wreg32*, %struct.packet_wreg32** %7, align 8
  %34 = getelementptr inbounds %struct.packet_wreg32, %struct.packet_wreg32* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le32_to_cpu(i32 %35)
  %37 = call i32 (i32, i8*, ...) @dev_dbg(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @mmDMA_CH_0_WR_COMP_ADDR_LO, align 4
  %40 = and i32 %39, 8191
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %3
  %43 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %44 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EPERM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %91

50:                                               ; preds = %3
  %51 = load %struct.goya_device*, %struct.goya_device** %8, align 8
  %52 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @HW_CAP_MMU, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %91

58:                                               ; preds = %50
  %59 = load i64, i64* @CFG_BASE, align 8
  %60 = load i64, i64* @mmSYNC_MNGR_SOB_OBJ_0, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @lower_32_bits(i64 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i64, i64* @CFG_BASE, align 8
  %64 = load i64, i64* @mmSYNC_MNGR_SOB_OBJ_1023, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @lower_32_bits(i64 %65)
  store i32 %66, i32* %10, align 4
  %67 = load %struct.packet_wreg32*, %struct.packet_wreg32** %7, align 8
  %68 = getelementptr inbounds %struct.packet_wreg32, %struct.packet_wreg32* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le32_to_cpu(i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %58
  %74 = load %struct.packet_wreg32*, %struct.packet_wreg32** %7, align 8
  %75 = getelementptr inbounds %struct.packet_wreg32, %struct.packet_wreg32* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le32_to_cpu(i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %73, %58
  %81 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %82 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.packet_wreg32*, %struct.packet_wreg32** %7, align 8
  %85 = getelementptr inbounds %struct.packet_wreg32, %struct.packet_wreg32* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EPERM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %91

90:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %80, %57, %42
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
