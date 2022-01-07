; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/spi/extr_gs1662.c_gs_query_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/spi/extr_gs1662.c_gs_query_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_dv_timings = type { i32 }
%struct.gs = type { i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@REG_LINES_PER_FRAME = common dso_local global i64 0, align 8
@ENOLINK = common dso_local global i32 0, align 4
@REG_STATUS = common dso_local global i64 0, align 8
@MASK_H_LOCK = common dso_local global i32 0, align 4
@MASK_V_LOCK = common dso_local global i32 0, align 4
@ENOLCK = common dso_local global i32 0, align 4
@MASK_STD_LOCK = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_dv_timings*)* @gs_query_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_query_dv_timings(%struct.v4l2_subdev* %0, %struct.v4l2_dv_timings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_dv_timings*, align 8
  %6 = alloca %struct.gs*, align 8
  %7 = alloca %struct.v4l2_dv_timings, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_dv_timings* %1, %struct.v4l2_dv_timings** %5, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.gs* @to_gs(%struct.v4l2_subdev* %11)
  store %struct.gs* %12, %struct.gs** %6, align 8
  %13 = load %struct.gs*, %struct.gs** %6, align 8
  %14 = getelementptr inbounds %struct.gs, %struct.gs* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %83

20:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %37, %20
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load %struct.gs*, %struct.gs** %6, align 8
  %26 = getelementptr inbounds %struct.gs, %struct.gs* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* @REG_LINES_PER_FRAME, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = call i32 @gs_read_register(i32 %27, i64 %31, i32* %8)
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %40

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %21

40:                                               ; preds = %35, %21
  %41 = load i32, i32* %9, align 4
  %42 = icmp sge i32 %41, 4
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @ENOLINK, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %83

46:                                               ; preds = %40
  %47 = load %struct.gs*, %struct.gs** %6, align 8
  %48 = getelementptr inbounds %struct.gs, %struct.gs* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* @REG_STATUS, align 8
  %51 = call i32 @gs_read_register(i32 %49, i64 %50, i32* %8)
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @MASK_H_LOCK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @MASK_V_LOCK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56, %46
  %62 = load i32, i32* @ENOLCK, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %83

64:                                               ; preds = %56
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @MASK_STD_LOCK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @ERANGE, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %83

72:                                               ; preds = %64
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @gs_status_format(i32 %73, %struct.v4l2_dv_timings* %7)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %3, align 4
  br label %83

79:                                               ; preds = %72
  %80 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %81 = bitcast %struct.v4l2_dv_timings* %80 to i8*
  %82 = bitcast %struct.v4l2_dv_timings* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 4, i1 false)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %77, %69, %61, %43, %17
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.gs* @to_gs(%struct.v4l2_subdev*) #1

declare dso_local i32 @gs_read_register(i32, i64, i32*) #1

declare dso_local i32 @gs_status_format(i32, %struct.v4l2_dv_timings*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
