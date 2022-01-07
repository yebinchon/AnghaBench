; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_command_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_command_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_4__, i32, %struct.coda_dev* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.coda_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@CODA_HX4 = common dso_local global i64 0, align 8
@CODA_7541 = common dso_local global i64 0, align 8
@CODA_960 = common dso_local global i64 0, align 8
@CODA_REG_BIT_BIT_STREAM_PARAM = common dso_local global i32 0, align 4
@CODA_REG_BIT_FRAME_MEM_CTRL = common dso_local global i32 0, align 4
@CODA_REG_BIT_WORK_BUF_ADDR = common dso_local global i32 0, align 4
@CODA9_GDI_WPROT_ERR_CLR = common dso_local global i32 0, align 4
@CODA9_GDI_WPROT_RGN_EN = common dso_local global i32 0, align 4
@CODA_REG_BIT_BUSY_FLAG = common dso_local global i32 0, align 4
@CODA_REG_BIT_BUSY = common dso_local global i32 0, align 4
@CODA_REG_BIT_RUN_INDEX = common dso_local global i32 0, align 4
@CODA_REG_BIT_RUN_COD_STD = common dso_local global i32 0, align 4
@CODA7_REG_BIT_RUN_AUX_STD = common dso_local global i32 0, align 4
@CODA_REG_BIT_RUN_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coda_ctx*, i32)* @coda_command_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coda_command_async(%struct.coda_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.coda_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.coda_dev*, align 8
  store %struct.coda_ctx* %0, %struct.coda_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %6, i32 0, i32 7
  %8 = load %struct.coda_dev*, %struct.coda_dev** %7, align 8
  store %struct.coda_dev* %8, %struct.coda_dev** %5, align 8
  %9 = load %struct.coda_dev*, %struct.coda_dev** %5, align 8
  %10 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CODA_HX4, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %32, label %16

16:                                               ; preds = %2
  %17 = load %struct.coda_dev*, %struct.coda_dev** %5, align 8
  %18 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CODA_7541, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %16
  %25 = load %struct.coda_dev*, %struct.coda_dev** %5, align 8
  %26 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CODA_960, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %24, %16, %2
  %33 = load %struct.coda_dev*, %struct.coda_dev** %5, align 8
  %34 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CODA_REG_BIT_BIT_STREAM_PARAM, align 4
  %38 = call i32 @coda_write(%struct.coda_dev* %33, i32 %36, i32 %37)
  %39 = load %struct.coda_dev*, %struct.coda_dev** %5, align 8
  %40 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @CODA_REG_BIT_FRM_DIS_FLG(i32 %45)
  %47 = call i32 @coda_write(%struct.coda_dev* %39, i32 %42, i32 %46)
  %48 = load %struct.coda_dev*, %struct.coda_dev** %5, align 8
  %49 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @CODA_REG_BIT_FRAME_MEM_CTRL, align 4
  %53 = call i32 @coda_write(%struct.coda_dev* %48, i32 %51, i32 %52)
  %54 = load %struct.coda_dev*, %struct.coda_dev** %5, align 8
  %55 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @CODA_REG_BIT_WORK_BUF_ADDR, align 4
  %60 = call i32 @coda_write(%struct.coda_dev* %54, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %32, %24
  %62 = load %struct.coda_dev*, %struct.coda_dev** %5, align 8
  %63 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CODA_960, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load %struct.coda_dev*, %struct.coda_dev** %5, align 8
  %71 = load i32, i32* @CODA9_GDI_WPROT_ERR_CLR, align 4
  %72 = call i32 @coda_write(%struct.coda_dev* %70, i32 1, i32 %71)
  %73 = load %struct.coda_dev*, %struct.coda_dev** %5, align 8
  %74 = load i32, i32* @CODA9_GDI_WPROT_RGN_EN, align 4
  %75 = call i32 @coda_write(%struct.coda_dev* %73, i32 0, i32 %74)
  br label %76

76:                                               ; preds = %69, %61
  %77 = load %struct.coda_dev*, %struct.coda_dev** %5, align 8
  %78 = load i32, i32* @CODA_REG_BIT_BUSY_FLAG, align 4
  %79 = load i32, i32* @CODA_REG_BIT_BUSY, align 4
  %80 = call i32 @coda_write(%struct.coda_dev* %77, i32 %78, i32 %79)
  %81 = load %struct.coda_dev*, %struct.coda_dev** %5, align 8
  %82 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %83 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CODA_REG_BIT_RUN_INDEX, align 4
  %86 = call i32 @coda_write(%struct.coda_dev* %81, i32 %84, i32 %85)
  %87 = load %struct.coda_dev*, %struct.coda_dev** %5, align 8
  %88 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %89 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @CODA_REG_BIT_RUN_COD_STD, align 4
  %93 = call i32 @coda_write(%struct.coda_dev* %87, i32 %91, i32 %92)
  %94 = load %struct.coda_dev*, %struct.coda_dev** %5, align 8
  %95 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %96 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @CODA7_REG_BIT_RUN_AUX_STD, align 4
  %100 = call i32 @coda_write(%struct.coda_dev* %94, i32 %98, i32 %99)
  %101 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @trace_coda_bit_run(%struct.coda_ctx* %101, i32 %102)
  %104 = load %struct.coda_dev*, %struct.coda_dev** %5, align 8
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @CODA_REG_BIT_RUN_COMMAND, align 4
  %107 = call i32 @coda_write(%struct.coda_dev* %104, i32 %105, i32 %106)
  ret void
}

declare dso_local i32 @coda_write(%struct.coda_dev*, i32, i32) #1

declare dso_local i32 @CODA_REG_BIT_FRM_DIS_FLG(i32) #1

declare dso_local i32 @trace_coda_bit_run(%struct.coda_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
