; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cal_wr_dma_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cal_wr_dma_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_ctx = type { i32, i32 }

@CAL_WR_DMA_CTRL_CPORT_MASK = common dso_local global i32 0, align 4
@CAL_WR_DMA_CTRL_DTAG_PIX_DAT = common dso_local global i32 0, align 4
@CAL_WR_DMA_CTRL_DTAG_MASK = common dso_local global i32 0, align 4
@CAL_WR_DMA_CTRL_MODE_CONST = common dso_local global i32 0, align 4
@CAL_WR_DMA_CTRL_MODE_MASK = common dso_local global i32 0, align 4
@CAL_WR_DMA_CTRL_PATTERN_LINEAR = common dso_local global i32 0, align 4
@CAL_WR_DMA_CTRL_PATTERN_MASK = common dso_local global i32 0, align 4
@CAL_GEN_ENABLE = common dso_local global i32 0, align 4
@CAL_WR_DMA_CTRL_STALL_RD_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"CAL_WR_DMA_CTRL(%d) = 0x%08x\0A\00", align 1
@CAL_WR_DMA_OFST_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CAL_WR_DMA_OFST(%d) = 0x%08x\0A\00", align 1
@CAL_WR_DMA_XSIZE_XSKIP_MASK = common dso_local global i32 0, align 4
@CAL_WR_DMA_XSIZE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"CAL_WR_DMA_XSIZE(%d) = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cal_ctx*, i32)* @cal_wr_dma_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cal_wr_dma_config(%struct.cal_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.cal_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cal_ctx* %0, %struct.cal_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @CAL_WR_DMA_CTRL(i32 %11)
  %13 = call i32 @reg_read(i32 %8, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CAL_WR_DMA_CTRL_CPORT_MASK, align 4
  %18 = call i32 @set_field(i32* %5, i32 %16, i32 %17)
  %19 = load i32, i32* @CAL_WR_DMA_CTRL_DTAG_PIX_DAT, align 4
  %20 = load i32, i32* @CAL_WR_DMA_CTRL_DTAG_MASK, align 4
  %21 = call i32 @set_field(i32* %5, i32 %19, i32 %20)
  %22 = load i32, i32* @CAL_WR_DMA_CTRL_MODE_CONST, align 4
  %23 = load i32, i32* @CAL_WR_DMA_CTRL_MODE_MASK, align 4
  %24 = call i32 @set_field(i32* %5, i32 %22, i32 %23)
  %25 = load i32, i32* @CAL_WR_DMA_CTRL_PATTERN_LINEAR, align 4
  %26 = load i32, i32* @CAL_WR_DMA_CTRL_PATTERN_MASK, align 4
  %27 = call i32 @set_field(i32* %5, i32 %25, i32 %26)
  %28 = load i32, i32* @CAL_GEN_ENABLE, align 4
  %29 = load i32, i32* @CAL_WR_DMA_CTRL_STALL_RD_MASK, align 4
  %30 = call i32 @set_field(i32* %5, i32 %28, i32 %29)
  %31 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @CAL_WR_DMA_CTRL(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @reg_write(i32 %33, i32 %37, i32 %38)
  %40 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %41 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @CAL_WR_DMA_CTRL(i32 %49)
  %51 = call i32 @reg_read(i32 %46, i32 %50)
  %52 = call i32 @ctx_dbg(i32 3, %struct.cal_ctx* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %51)
  %53 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %54 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %57 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @CAL_WR_DMA_OFST(i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = udiv i32 %60, 16
  %62 = load i32, i32* @CAL_WR_DMA_OFST_MASK, align 4
  %63 = call i32 @reg_write_field(i32 %55, i32 %59, i32 %61, i32 %62)
  %64 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %65 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %66 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %69 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %72 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @CAL_WR_DMA_OFST(i32 %73)
  %75 = call i32 @reg_read(i32 %70, i32 %74)
  %76 = call i32 @ctx_dbg(i32 3, %struct.cal_ctx* %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %75)
  %77 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %78 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %81 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @CAL_WR_DMA_XSIZE(i32 %82)
  %84 = call i32 @reg_read(i32 %79, i32 %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* @CAL_WR_DMA_XSIZE_XSKIP_MASK, align 4
  %86 = call i32 @set_field(i32* %5, i32 0, i32 %85)
  %87 = load i32, i32* %4, align 4
  %88 = udiv i32 %87, 8
  %89 = load i32, i32* @CAL_WR_DMA_XSIZE_MASK, align 4
  %90 = call i32 @set_field(i32* %5, i32 %88, i32 %89)
  %91 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %92 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %95 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @CAL_WR_DMA_XSIZE(i32 %96)
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @reg_write(i32 %93, i32 %97, i32 %98)
  %100 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %101 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %102 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %105 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %108 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @CAL_WR_DMA_XSIZE(i32 %109)
  %111 = call i32 @reg_read(i32 %106, i32 %110)
  %112 = call i32 @ctx_dbg(i32 3, %struct.cal_ctx* %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %111)
  ret void
}

declare dso_local i32 @reg_read(i32, i32) #1

declare dso_local i32 @CAL_WR_DMA_CTRL(i32) #1

declare dso_local i32 @set_field(i32*, i32, i32) #1

declare dso_local i32 @reg_write(i32, i32, i32) #1

declare dso_local i32 @ctx_dbg(i32, %struct.cal_ctx*, i8*, i32, i32) #1

declare dso_local i32 @reg_write_field(i32, i32, i32, i32) #1

declare dso_local i32 @CAL_WR_DMA_OFST(i32) #1

declare dso_local i32 @CAL_WR_DMA_XSIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
