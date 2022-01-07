; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_pix_proc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_pix_proc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_ctx = type { i32, i32 }

@CAL_PIX_PROC_EXTRACT_B8 = common dso_local global i32 0, align 4
@CAL_PIX_PROC_EXTRACT_MASK = common dso_local global i32 0, align 4
@CAL_PIX_PROC_DPCMD_BYPASS = common dso_local global i32 0, align 4
@CAL_PIX_PROC_DPCMD_MASK = common dso_local global i32 0, align 4
@CAL_PIX_PROC_DPCME_BYPASS = common dso_local global i32 0, align 4
@CAL_PIX_PROC_DPCME_MASK = common dso_local global i32 0, align 4
@CAL_PIX_PROC_PACK_B8 = common dso_local global i32 0, align 4
@CAL_PIX_PROC_PACK_MASK = common dso_local global i32 0, align 4
@CAL_PIX_PROC_CPORT_MASK = common dso_local global i32 0, align 4
@CAL_GEN_ENABLE = common dso_local global i32 0, align 4
@CAL_PIX_PROC_EN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"CAL_PIX_PROC(%d) = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cal_ctx*)* @pix_proc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pix_proc_config(%struct.cal_ctx* %0) #0 {
  %2 = alloca %struct.cal_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.cal_ctx* %0, %struct.cal_ctx** %2, align 8
  %4 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @CAL_PIX_PROC(i32 %9)
  %11 = call i32 @reg_read(i32 %6, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @CAL_PIX_PROC_EXTRACT_B8, align 4
  %13 = load i32, i32* @CAL_PIX_PROC_EXTRACT_MASK, align 4
  %14 = call i32 @set_field(i32* %3, i32 %12, i32 %13)
  %15 = load i32, i32* @CAL_PIX_PROC_DPCMD_BYPASS, align 4
  %16 = load i32, i32* @CAL_PIX_PROC_DPCMD_MASK, align 4
  %17 = call i32 @set_field(i32* %3, i32 %15, i32 %16)
  %18 = load i32, i32* @CAL_PIX_PROC_DPCME_BYPASS, align 4
  %19 = load i32, i32* @CAL_PIX_PROC_DPCME_MASK, align 4
  %20 = call i32 @set_field(i32* %3, i32 %18, i32 %19)
  %21 = load i32, i32* @CAL_PIX_PROC_PACK_B8, align 4
  %22 = load i32, i32* @CAL_PIX_PROC_PACK_MASK, align 4
  %23 = call i32 @set_field(i32* %3, i32 %21, i32 %22)
  %24 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CAL_PIX_PROC_CPORT_MASK, align 4
  %28 = call i32 @set_field(i32* %3, i32 %26, i32 %27)
  %29 = load i32, i32* @CAL_GEN_ENABLE, align 4
  %30 = load i32, i32* @CAL_PIX_PROC_EN_MASK, align 4
  %31 = call i32 @set_field(i32* %3, i32 %29, i32 %30)
  %32 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %33 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %36 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @CAL_PIX_PROC(i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @reg_write(i32 %34, i32 %38, i32 %39)
  %41 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %42 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %43 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %46 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %49 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @CAL_PIX_PROC(i32 %50)
  %52 = call i32 @reg_read(i32 %47, i32 %51)
  %53 = call i32 @ctx_dbg(i32 3, %struct.cal_ctx* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %52)
  ret void
}

declare dso_local i32 @reg_read(i32, i32) #1

declare dso_local i32 @CAL_PIX_PROC(i32) #1

declare dso_local i32 @set_field(i32*, i32, i32) #1

declare dso_local i32 @reg_write(i32, i32, i32) #1

declare dso_local i32 @ctx_dbg(i32, %struct.cal_ctx*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
