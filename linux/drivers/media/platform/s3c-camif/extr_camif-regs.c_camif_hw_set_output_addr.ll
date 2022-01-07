; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_hw_set_output_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_hw_set_output_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_vp = type { i64, %struct.camif_dev* }
%struct.camif_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.camif_addr = type { i32, i32, i32 }

@S3C6410_CAMIF_IP_REV = common dso_local global i64 0, align 8
@VP_CODEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"dst_buf[%d]: %pad, cb: %pad, cr: %pad\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @camif_hw_set_output_addr(%struct.camif_vp* %0, %struct.camif_addr* %1, i32 %2) #0 {
  %4 = alloca %struct.camif_vp*, align 8
  %5 = alloca %struct.camif_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.camif_dev*, align 8
  store %struct.camif_vp* %0, %struct.camif_vp** %4, align 8
  store %struct.camif_addr* %1, %struct.camif_addr** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.camif_vp*, %struct.camif_vp** %4, align 8
  %9 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %8, i32 0, i32 1
  %10 = load %struct.camif_dev*, %struct.camif_dev** %9, align 8
  store %struct.camif_dev* %10, %struct.camif_dev** %7, align 8
  %11 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %12 = load %struct.camif_vp*, %struct.camif_vp** %4, align 8
  %13 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @S3C_CAMIF_REG_CIYSA(i64 %14, i32 %15)
  %17 = load %struct.camif_addr*, %struct.camif_addr** %5, align 8
  %18 = getelementptr inbounds %struct.camif_addr, %struct.camif_addr* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @camif_write(%struct.camif_dev* %11, i32 %16, i32 %19)
  %21 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %22 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @S3C6410_CAMIF_IP_REV, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %3
  %29 = load %struct.camif_vp*, %struct.camif_vp** %4, align 8
  %30 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VP_CODEC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %28, %3
  %35 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %36 = load %struct.camif_vp*, %struct.camif_vp** %4, align 8
  %37 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @S3C_CAMIF_REG_CICBSA(i64 %38, i32 %39)
  %41 = load %struct.camif_addr*, %struct.camif_addr** %5, align 8
  %42 = getelementptr inbounds %struct.camif_addr, %struct.camif_addr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @camif_write(%struct.camif_dev* %35, i32 %40, i32 %43)
  %45 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %46 = load %struct.camif_vp*, %struct.camif_vp** %4, align 8
  %47 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @S3C_CAMIF_REG_CICRSA(i64 %48, i32 %49)
  %51 = load %struct.camif_addr*, %struct.camif_addr** %5, align 8
  %52 = getelementptr inbounds %struct.camif_addr, %struct.camif_addr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @camif_write(%struct.camif_dev* %45, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %34, %28
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.camif_addr*, %struct.camif_addr** %5, align 8
  %58 = getelementptr inbounds %struct.camif_addr, %struct.camif_addr* %57, i32 0, i32 2
  %59 = load %struct.camif_addr*, %struct.camif_addr** %5, align 8
  %60 = getelementptr inbounds %struct.camif_addr, %struct.camif_addr* %59, i32 0, i32 1
  %61 = load %struct.camif_addr*, %struct.camif_addr** %5, align 8
  %62 = getelementptr inbounds %struct.camif_addr, %struct.camif_addr* %61, i32 0, i32 0
  %63 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %56, i32* %58, i32* %60, i32* %62)
  ret void
}

declare dso_local i32 @camif_write(%struct.camif_dev*, i32, i32) #1

declare dso_local i32 @S3C_CAMIF_REG_CIYSA(i64, i32) #1

declare dso_local i32 @S3C_CAMIF_REG_CICBSA(i64, i32) #1

declare dso_local i32 @S3C_CAMIF_REG_CICRSA(i64, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
