; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_mt9m111.c_mt9m111_set_hvflip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_mt9m111.c_mt9m111_set_hvflip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sd = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Set hvflip to %d %d\0A\00", align 1
@MT9M111_PAGE_MAP = common dso_local global i32 0, align 4
@MT9M111_RMB_OVER_SIZED = common dso_local global i32 0, align 4
@MT9M111_RMB_ROW_SKIP_2X = common dso_local global i32 0, align 4
@MT9M111_RMB_COLUMN_SKIP_2X = common dso_local global i32 0, align 4
@MT9M111_RMB_ROW_SKIP_4X = common dso_local global i32 0, align 4
@MT9M111_RMB_COLUMN_SKIP_4X = common dso_local global i32 0, align 4
@MT9M111_SC_R_MODE_CONTEXT_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @mt9m111_set_hvflip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_set_hvflip(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca %struct.sd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %9 = bitcast [2 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %11 = bitcast %struct.gspca_dev* %10 to %struct.sd*
  store %struct.sd* %11, %struct.sd** %6, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %13 = load i32, i32* @D_CONF, align 4
  %14 = load %struct.sd*, %struct.sd** %6, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sd*, %struct.sd** %6, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @gspca_dbg(%struct.gspca_dev* %12, i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %23)
  %25 = load %struct.sd*, %struct.sd** %6, align 8
  %26 = getelementptr inbounds %struct.sd, %struct.sd* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load %struct.sd*, %struct.sd** %6, align 8
  %34 = getelementptr inbounds %struct.sd, %struct.sd* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load %struct.sd*, %struct.sd** %6, align 8
  %42 = load i32, i32* @MT9M111_PAGE_MAP, align 4
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %44 = call i32 @m5602_write_sensor(%struct.sd* %41, i32 %42, i32* %43, i32 2)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %1
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %83

49:                                               ; preds = %1
  %50 = load i32, i32* @MT9M111_RMB_OVER_SIZED, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %50, i32* %51, align 4
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %53 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 640
  br i1 %56, label %57, label %67

57:                                               ; preds = %49
  %58 = load i32, i32* @MT9M111_RMB_ROW_SKIP_2X, align 4
  %59 = load i32, i32* @MT9M111_RMB_COLUMN_SKIP_2X, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %7, align 4
  %62 = shl i32 %61, 1
  %63 = or i32 %60, %62
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %63, %64
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %65, i32* %66, align 4
  br label %77

67:                                               ; preds = %49
  %68 = load i32, i32* @MT9M111_RMB_ROW_SKIP_4X, align 4
  %69 = load i32, i32* @MT9M111_RMB_COLUMN_SKIP_4X, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %7, align 4
  %72 = shl i32 %71, 1
  %73 = or i32 %70, %72
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %73, %74
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %67, %57
  %78 = load %struct.sd*, %struct.sd** %6, align 8
  %79 = load i32, i32* @MT9M111_SC_R_MODE_CONTEXT_B, align 4
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %81 = call i32 @m5602_write_sensor(%struct.sd* %78, i32 %79, i32* %80, i32 2)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %77, %47
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32) #2

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
