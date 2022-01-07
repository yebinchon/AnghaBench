; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_ftl.c_prepare_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_ftl.c_prepare_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_7__, %struct.xfer_info_t* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32, i8*, i32 }
%struct.xfer_info_t = type { i32, i64, i32 }

@XFER_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ftl_cs: preparing xfer unit at 0x%x\0A\00", align 1
@SECTOR_SIZE = common dso_local global i32 0, align 4
@BLOCK_CONTROL = common dso_local global i32 0, align 4
@XFER_PREPARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @prepare_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_xfer(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.xfer_info_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %15 = load %struct.xfer_info_t*, %struct.xfer_info_t** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %15, i64 %17
  store %struct.xfer_info_t* %18, %struct.xfer_info_t** %7, align 8
  %19 = load i32, i32* @XFER_FAILED, align 4
  %20 = load %struct.xfer_info_t*, %struct.xfer_info_t** %7, align 8
  %21 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.xfer_info_t*, %struct.xfer_info_t** %7, align 8
  %23 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = bitcast %struct.TYPE_7__* %6 to i8*
  %29 = bitcast %struct.TYPE_7__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 24, i1 false)
  %30 = call i32 @cpu_to_le16(i32 65535)
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store i32 %30, i32* %31, align 8
  %32 = load %struct.xfer_info_t*, %struct.xfer_info_t** %7, align 8
  %33 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.xfer_info_t*, %struct.xfer_info_t** %7, align 8
  %42 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = bitcast %struct.TYPE_7__* %6 to i32*
  %45 = call i32 @mtd_write(i32 %40, i64 %43, i32 24, i32* %11, i32* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %2
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %101

50:                                               ; preds = %2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @le32_to_cpu(i32 %59)
  %61 = add i64 %55, %60
  %62 = load i32, i32* @SECTOR_SIZE, align 4
  %63 = call i32 @DIV_ROUND_UP(i64 %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load %struct.xfer_info_t*, %struct.xfer_info_t** %7, align 8
  %65 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @le32_to_cpu(i32 %70)
  %72 = add nsw i64 %66, %71
  store i64 %72, i64* %12, align 8
  %73 = load i32, i32* @BLOCK_CONTROL, align 4
  %74 = call i8* @cpu_to_le32(i32 %73)
  store i8* %74, i8** %10, align 8
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %92, %50
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %75
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* %12, align 8
  %85 = bitcast i8** %10 to i32*
  %86 = call i32 @mtd_write(i32 %83, i64 %84, i32 8, i32* %11, i32* %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %3, align 4
  br label %101

91:                                               ; preds = %79
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  %95 = load i64, i64* %12, align 8
  %96 = add i64 %95, 8
  store i64 %96, i64* %12, align 8
  br label %75

97:                                               ; preds = %75
  %98 = load i32, i32* @XFER_PREPARED, align 4
  %99 = load %struct.xfer_info_t*, %struct.xfer_info_t** %7, align 8
  %100 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %89, %48
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @pr_debug(i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @mtd_write(i32, i64, i32, i32*, i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
