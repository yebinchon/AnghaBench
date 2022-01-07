; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_mt9m111.c_mt9m111_set_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_mt9m111.c_mt9m111_set_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@MT9M111_PAGE_MAP = common dso_local global i32 0, align 4
@INITIAL_MAX_GAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"tmp=%d, data[1]=%d, data[0]=%d\0A\00", align 1
@MT9M111_SC_GLOBAL_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32)* @mt9m111_set_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_set_gain(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = bitcast %struct.gspca_dev* %11 to %struct.sd*
  store %struct.sd* %12, %struct.sd** %9, align 8
  %13 = load %struct.sd*, %struct.sd** %9, align 8
  %14 = load i32, i32* @MT9M111_PAGE_MAP, align 4
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %16 = call i32 @m5602_write_sensor(%struct.sd* %13, i32 %14, i32* %15, i32 2)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %108

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @INITIAL_MAX_GAIN, align 4
  %24 = mul nsw i32 %23, 2
  %25 = mul nsw i32 %24, 2
  %26 = mul nsw i32 %25, 2
  %27 = icmp sge i32 %22, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %108

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @INITIAL_MAX_GAIN, align 4
  %34 = mul nsw i32 %33, 2
  %35 = mul nsw i32 %34, 2
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @INITIAL_MAX_GAIN, align 4
  %40 = sub nsw i32 %39, 1
  %41 = mul nsw i32 %40, 2
  %42 = mul nsw i32 %41, 2
  %43 = mul nsw i32 %42, 2
  %44 = icmp slt i32 %38, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = shl i32 %46, 9
  %48 = or i32 1024, %47
  %49 = load i32, i32* %5, align 4
  %50 = shl i32 %49, 8
  %51 = or i32 %48, %50
  %52 = load i32, i32* %5, align 4
  %53 = sdiv i32 %52, 8
  %54 = or i32 %51, %53
  store i32 %54, i32* %7, align 4
  br label %87

55:                                               ; preds = %37, %31
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @INITIAL_MAX_GAIN, align 4
  %58 = mul nsw i32 %57, 2
  %59 = icmp sge i32 %56, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @INITIAL_MAX_GAIN, align 4
  %63 = mul nsw i32 %62, 2
  %64 = mul nsw i32 %63, 2
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* %5, align 4
  %68 = sdiv i32 %67, 4
  %69 = or i32 768, %68
  store i32 %69, i32* %7, align 4
  br label %86

70:                                               ; preds = %60, %55
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @INITIAL_MAX_GAIN, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @INITIAL_MAX_GAIN, align 4
  %77 = mul nsw i32 %76, 2
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* %5, align 4
  %81 = sdiv i32 %80, 2
  %82 = or i32 256, %81
  store i32 %82, i32* %7, align 4
  br label %85

83:                                               ; preds = %74, %70
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %83, %79
  br label %86

86:                                               ; preds = %85, %66
  br label %87

87:                                               ; preds = %86, %45
  %88 = load i32, i32* %7, align 4
  %89 = and i32 %88, 255
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* %7, align 4
  %92 = and i32 %91, 65280
  %93 = ashr i32 %92, 8
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %93, i32* %94, align 4
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %96 = load i32, i32* @D_CONF, align 4
  %97 = load i32, i32* %7, align 4
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @gspca_dbg(%struct.gspca_dev* %95, i32 %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %99, i32 %101)
  %103 = load %struct.sd*, %struct.sd** %9, align 8
  %104 = load i32, i32* @MT9M111_SC_GLOBAL_GAIN, align 4
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %106 = call i32 @m5602_write_sensor(%struct.sd* %103, i32 %104, i32* %105, i32 2)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %87, %28, %19
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i32, i32*, i32) #2

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
