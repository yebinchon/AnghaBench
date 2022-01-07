; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_ccdc_setwin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_ccdc_setwin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_ccdc = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@VPFE_HORZ_INFO_SPH_SHIFT = common dso_local global i32 0, align 4
@VPFE_HORZ_INFO = common dso_local global i32 0, align 4
@CCDC_FRMFMT_INTERLACED = common dso_local global i32 0, align 4
@VPFE_VDINT_VDINT0_SHIFT = common dso_local global i32 0, align 4
@VPFE_VDINT_VDINT1_MASK = common dso_local global i32 0, align 4
@VPFE_VDINT = common dso_local global i32 0, align 4
@VPFE_VERT_START_SLV0_SHIFT = common dso_local global i32 0, align 4
@VPFE_VERT_START = common dso_local global i32 0, align 4
@VPFE_VERT_LINES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpfe_ccdc*, %struct.v4l2_rect*, i32, i32)* @vpfe_ccdc_setwin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpfe_ccdc_setwin(%struct.vpfe_ccdc* %0, %struct.v4l2_rect* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vpfe_ccdc*, align 8
  %6 = alloca %struct.v4l2_rect*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vpfe_ccdc* %0, %struct.vpfe_ccdc** %5, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %10, align 4
  %26 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %5, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @VPFE_HORZ_INFO_SPH_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @VPFE_HORZ_INFO, align 4
  %33 = call i32 @vpfe_reg_write(%struct.vpfe_ccdc* %26, i32 %31, i32 %32)
  %34 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @CCDC_FRMFMT_INTERLACED, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %4
  %41 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 1
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = ashr i32 %46, 1
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @VPFE_VDINT_VDINT0_SHIFT, align 4
  %52 = shl i32 %50, %51
  store i32 %52, i32* %13, align 4
  br label %73

53:                                               ; preds = %4
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  %56 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %62 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 2
  %65 = add nsw i32 %60, %64
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @VPFE_VDINT_VDINT0_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @VPFE_VDINT_VDINT1_MASK, align 4
  %71 = and i32 %69, %70
  %72 = or i32 %68, %71
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %53, %40
  %74 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %5, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @VPFE_VDINT, align 4
  %77 = call i32 @vpfe_reg_write(%struct.vpfe_ccdc* %74, i32 %75, i32 %76)
  %78 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %5, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @VPFE_VERT_START_SLV0_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = load i32, i32* %11, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @VPFE_VERT_START, align 4
  %85 = call i32 @vpfe_reg_write(%struct.vpfe_ccdc* %78, i32 %83, i32 %84)
  %86 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %5, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @VPFE_VERT_LINES, align 4
  %89 = call i32 @vpfe_reg_write(%struct.vpfe_ccdc* %86, i32 %87, i32 %88)
  ret void
}

declare dso_local i32 @vpfe_reg_write(%struct.vpfe_ccdc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
