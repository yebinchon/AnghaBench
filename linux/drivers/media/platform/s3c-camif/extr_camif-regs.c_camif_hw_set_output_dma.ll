; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_hw_set_output_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_hw_set_output_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_vp = type { i32, i32, %struct.camif_fmt*, %struct.camif_frame, %struct.camif_dev* }
%struct.camif_fmt = type { i32 }
%struct.camif_frame = type { %struct.TYPE_4__, %struct.camif_dma_offset }
%struct.TYPE_4__ = type { i32 }
%struct.camif_dma_offset = type { i32, i32 }
%struct.camif_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@S3C6410_CAMIF_IP_REV = common dso_local global i64 0, align 8
@CICTRL_BURST_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ymburst: %u, yrburst: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @camif_hw_set_output_dma(%struct.camif_vp* %0) #0 {
  %2 = alloca %struct.camif_vp*, align 8
  %3 = alloca %struct.camif_dev*, align 8
  %4 = alloca %struct.camif_frame*, align 8
  %5 = alloca %struct.camif_fmt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.camif_dma_offset*, align 8
  store %struct.camif_vp* %0, %struct.camif_vp** %2, align 8
  %10 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %11 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %10, i32 0, i32 4
  %12 = load %struct.camif_dev*, %struct.camif_dev** %11, align 8
  store %struct.camif_dev* %12, %struct.camif_dev** %3, align 8
  %13 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %14 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %13, i32 0, i32 3
  store %struct.camif_frame* %14, %struct.camif_frame** %4, align 8
  %15 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %16 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %15, i32 0, i32 2
  %17 = load %struct.camif_fmt*, %struct.camif_fmt** %16, align 8
  store %struct.camif_fmt* %17, %struct.camif_fmt** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %19 = call i32 @camif_hw_set_out_dma_size(%struct.camif_vp* %18)
  %20 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %21 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @S3C6410_CAMIF_IP_REV, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %1
  %28 = load %struct.camif_frame*, %struct.camif_frame** %4, align 8
  %29 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %28, i32 0, i32 1
  store %struct.camif_dma_offset* %29, %struct.camif_dma_offset** %9, align 8
  %30 = load %struct.camif_dma_offset*, %struct.camif_dma_offset** %9, align 8
  %31 = getelementptr inbounds %struct.camif_dma_offset, %struct.camif_dma_offset* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @S3C_CISS_OFFS_INITIAL(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.camif_dma_offset*, %struct.camif_dma_offset** %9, align 8
  %35 = getelementptr inbounds %struct.camif_dma_offset, %struct.camif_dma_offset* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @S3C_CISS_OFFS_LINE(i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %41 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %42 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @S3C_CAMIF_REG_CISSY(i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @camif_write(%struct.camif_dev* %40, i32 %44, i32 %45)
  %47 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %48 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %49 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @S3C_CAMIF_REG_CISSCB(i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @camif_write(%struct.camif_dev* %47, i32 %51, i32 %52)
  %54 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %55 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %56 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @S3C_CAMIF_REG_CISSCR(i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @camif_write(%struct.camif_dev* %54, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %27, %1
  %62 = load %struct.camif_frame*, %struct.camif_frame** %4, align 8
  %63 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.camif_fmt*, %struct.camif_fmt** %5, align 8
  %67 = getelementptr inbounds %struct.camif_fmt, %struct.camif_fmt* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @camif_get_dma_burst(i32 %65, i32 %68, i32* %6, i32* %7)
  %70 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %71 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %72 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %75 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @S3C_CAMIF_REG_CICTRL(i32 %73, i32 %76)
  %78 = call i32 @camif_read(%struct.camif_dev* %70, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* @CICTRL_BURST_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %8, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @CICTRL_YBURST1(i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @CICTRL_YBURST2(i32 %85)
  %87 = or i32 %84, %86
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %6, align 4
  %91 = udiv i32 %90, 2
  %92 = call i32 @CICTRL_CBURST1(i32 %91)
  %93 = load i32, i32* %7, align 4
  %94 = udiv i32 %93, 2
  %95 = call i32 @CICTRL_CBURST2(i32 %94)
  %96 = or i32 %92, %95
  %97 = load i32, i32* %8, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %8, align 4
  %99 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %100 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %101 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %104 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @S3C_CAMIF_REG_CICTRL(i32 %102, i32 %105)
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @camif_write(%struct.camif_dev* %99, i32 %106, i32 %107)
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %110)
  ret void
}

declare dso_local i32 @camif_hw_set_out_dma_size(%struct.camif_vp*) #1

declare dso_local i32 @S3C_CISS_OFFS_INITIAL(i32) #1

declare dso_local i32 @S3C_CISS_OFFS_LINE(i32) #1

declare dso_local i32 @camif_write(%struct.camif_dev*, i32, i32) #1

declare dso_local i32 @S3C_CAMIF_REG_CISSY(i32) #1

declare dso_local i32 @S3C_CAMIF_REG_CISSCB(i32) #1

declare dso_local i32 @S3C_CAMIF_REG_CISSCR(i32) #1

declare dso_local i32 @camif_get_dma_burst(i32, i32, i32*, i32*) #1

declare dso_local i32 @camif_read(%struct.camif_dev*, i32) #1

declare dso_local i32 @S3C_CAMIF_REG_CICTRL(i32, i32) #1

declare dso_local i32 @CICTRL_YBURST1(i32) #1

declare dso_local i32 @CICTRL_YBURST2(i32) #1

declare dso_local i32 @CICTRL_CBURST1(i32) #1

declare dso_local i32 @CICTRL_CBURST2(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
