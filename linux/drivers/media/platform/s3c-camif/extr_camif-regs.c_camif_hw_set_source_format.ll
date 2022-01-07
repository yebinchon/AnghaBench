; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_hw_set_source_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_hw_set_source_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_dev = type { i32, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32 }

@src_pixfmt_map = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [47 x i8] c"Unsupported pixel code, falling back to %#08x\0A\00", align 1
@S3C_CAMIF_REG_CISRCFMT = common dso_local global i32 0, align 4
@CISRCFMT_ORDER422_MASK = common dso_local global i32 0, align 4
@CISRCFMT_SIZE_CAM_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @camif_hw_set_source_format(%struct.camif_dev* %0) #0 {
  %2 = alloca %struct.camif_dev*, align 8
  %3 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.camif_dev* %0, %struct.camif_dev** %2, align 8
  %6 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %7 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %6, i32 0, i32 1
  store %struct.v4l2_mbus_framefmt* %7, %struct.v4l2_mbus_framefmt** %3, align 8
  %8 = load i32**, i32*** @src_pixfmt_map, align 8
  %9 = call i32 @ARRAY_SIZE(i32** %8)
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %28, %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  %15 = load i32**, i32*** @src_pixfmt_map, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %23 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %31

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %4, align 4
  br label %11

31:                                               ; preds = %26, %11
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  %35 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %36 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32**, i32*** @src_pixfmt_map, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %34, %31
  %47 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %48 = load i32, i32* @S3C_CAMIF_REG_CISRCFMT, align 4
  %49 = call i32 @camif_read(%struct.camif_dev* %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @CISRCFMT_ORDER422_MASK, align 4
  %51 = load i32, i32* @CISRCFMT_SIZE_CAM_MASK, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %57 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 16
  %60 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %61 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %59, %62
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  %66 = load i32**, i32*** @src_pixfmt_map, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %76 = load i32, i32* @S3C_CAMIF_REG_CISRCFMT, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @camif_write(%struct.camif_dev* %75, i32 %76, i32 %77)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @camif_read(%struct.camif_dev*, i32) #1

declare dso_local i32 @camif_write(%struct.camif_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
