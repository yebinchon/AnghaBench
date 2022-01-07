; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_init_adb_hdrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_init_adb_hdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpe_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@out_fmt_hdr = common dso_local global i32 0, align 4
@out_fmt_reg = common dso_local global i32 0, align 4
@VPE_CLK_FORMAT_SELECT = common dso_local global i32 0, align 4
@us1_hdr = common dso_local global i32 0, align 4
@us1_regs = common dso_local global i32 0, align 4
@VPE_US1_R0 = common dso_local global i32 0, align 4
@us2_hdr = common dso_local global i32 0, align 4
@us2_regs = common dso_local global i32 0, align 4
@VPE_US2_R0 = common dso_local global i32 0, align 4
@us3_hdr = common dso_local global i32 0, align 4
@us3_regs = common dso_local global i32 0, align 4
@VPE_US3_R0 = common dso_local global i32 0, align 4
@dei_hdr = common dso_local global i32 0, align 4
@dei_regs = common dso_local global i32 0, align 4
@VPE_DEI_FRAME_SIZE = common dso_local global i32 0, align 4
@sc_hdr0 = common dso_local global i32 0, align 4
@sc_regs0 = common dso_local global i32 0, align 4
@CFG_SC0 = common dso_local global i32 0, align 4
@sc_hdr8 = common dso_local global i32 0, align 4
@sc_regs8 = common dso_local global i32 0, align 4
@CFG_SC8 = common dso_local global i32 0, align 4
@sc_hdr17 = common dso_local global i32 0, align 4
@sc_regs17 = common dso_local global i32 0, align 4
@CFG_SC17 = common dso_local global i32 0, align 4
@csc_hdr = common dso_local global i32 0, align 4
@csc_regs = common dso_local global i32 0, align 4
@CSC_CSC00 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpe_ctx*)* @init_adb_hdrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_adb_hdrs(%struct.vpe_ctx* %0) #0 {
  %2 = alloca %struct.vpe_ctx*, align 8
  store %struct.vpe_ctx* %0, %struct.vpe_ctx** %2, align 8
  %3 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %4 = load i32, i32* @out_fmt_hdr, align 4
  %5 = load i32, i32* @out_fmt_reg, align 4
  %6 = load i32, i32* @VPE_CLK_FORMAT_SELECT, align 4
  %7 = call i32 @VPE_SET_MMR_ADB_HDR(%struct.vpe_ctx* %3, i32 %4, i32 %5, i32 %6)
  %8 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %9 = load i32, i32* @us1_hdr, align 4
  %10 = load i32, i32* @us1_regs, align 4
  %11 = load i32, i32* @VPE_US1_R0, align 4
  %12 = call i32 @VPE_SET_MMR_ADB_HDR(%struct.vpe_ctx* %8, i32 %9, i32 %10, i32 %11)
  %13 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %14 = load i32, i32* @us2_hdr, align 4
  %15 = load i32, i32* @us2_regs, align 4
  %16 = load i32, i32* @VPE_US2_R0, align 4
  %17 = call i32 @VPE_SET_MMR_ADB_HDR(%struct.vpe_ctx* %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %19 = load i32, i32* @us3_hdr, align 4
  %20 = load i32, i32* @us3_regs, align 4
  %21 = load i32, i32* @VPE_US3_R0, align 4
  %22 = call i32 @VPE_SET_MMR_ADB_HDR(%struct.vpe_ctx* %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %24 = load i32, i32* @dei_hdr, align 4
  %25 = load i32, i32* @dei_regs, align 4
  %26 = load i32, i32* @VPE_DEI_FRAME_SIZE, align 4
  %27 = call i32 @VPE_SET_MMR_ADB_HDR(%struct.vpe_ctx* %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %29 = load i32, i32* @sc_hdr0, align 4
  %30 = load i32, i32* @sc_regs0, align 4
  %31 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %32 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %33 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CFG_SC0, align 4
  %38 = call i32 @GET_OFFSET_TOP(%struct.vpe_ctx* %31, i32 %36, i32 %37)
  %39 = call i32 @VPE_SET_MMR_ADB_HDR(%struct.vpe_ctx* %28, i32 %29, i32 %30, i32 %38)
  %40 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %41 = load i32, i32* @sc_hdr8, align 4
  %42 = load i32, i32* @sc_regs8, align 4
  %43 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %44 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %45 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CFG_SC8, align 4
  %50 = call i32 @GET_OFFSET_TOP(%struct.vpe_ctx* %43, i32 %48, i32 %49)
  %51 = call i32 @VPE_SET_MMR_ADB_HDR(%struct.vpe_ctx* %40, i32 %41, i32 %42, i32 %50)
  %52 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %53 = load i32, i32* @sc_hdr17, align 4
  %54 = load i32, i32* @sc_regs17, align 4
  %55 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %56 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %57 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CFG_SC17, align 4
  %62 = call i32 @GET_OFFSET_TOP(%struct.vpe_ctx* %55, i32 %60, i32 %61)
  %63 = call i32 @VPE_SET_MMR_ADB_HDR(%struct.vpe_ctx* %52, i32 %53, i32 %54, i32 %62)
  %64 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %65 = load i32, i32* @csc_hdr, align 4
  %66 = load i32, i32* @csc_regs, align 4
  %67 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %68 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %69 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CSC_CSC00, align 4
  %74 = call i32 @GET_OFFSET_TOP(%struct.vpe_ctx* %67, i32 %72, i32 %73)
  %75 = call i32 @VPE_SET_MMR_ADB_HDR(%struct.vpe_ctx* %64, i32 %65, i32 %66, i32 %74)
  ret void
}

declare dso_local i32 @VPE_SET_MMR_ADB_HDR(%struct.vpe_ctx*, i32, i32, i32) #1

declare dso_local i32 @GET_OFFSET_TOP(%struct.vpe_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
