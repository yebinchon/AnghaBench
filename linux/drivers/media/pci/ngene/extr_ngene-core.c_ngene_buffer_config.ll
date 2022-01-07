; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_ngene_buffer_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_ngene_buffer_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i64 }

@__const.ngene_buffer_config.tsin12_config = private unnamed_addr constant [6 x i32] [i32 96, i32 96, i32 0, i32 0, i32 0, i32 0], align 16
@__const.ngene_buffer_config.tsin1234_config = private unnamed_addr constant [6 x i32] [i32 48, i32 48, i32 0, i32 48, i32 48, i32 0], align 16
@__const.ngene_buffer_config.tsio1235_config = private unnamed_addr constant [6 x i32] [i32 48, i32 48, i32 0, i32 40, i32 0, i32 56], align 16
@NGENE_IO_TSIN = common dso_local global i32 0, align 4
@NGENE_IO_TSOUT = common dso_local global i32 0, align 4
@BUFFER_CONFIG_4422 = common dso_local global i32 0, align 4
@BUFFER_CONFIG_3333 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngene*)* @ngene_buffer_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngene_buffer_config(%struct.ngene* %0) #0 {
  %2 = alloca %struct.ngene*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [6 x i32], align 16
  %5 = alloca [6 x i32], align 16
  %6 = alloca [6 x i32], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ngene* %0, %struct.ngene** %2, align 8
  %9 = load %struct.ngene*, %struct.ngene** %2, align 8
  %10 = getelementptr inbounds %struct.ngene, %struct.ngene* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sge i32 %13, 17
  br i1 %14, label %15, label %66

15:                                               ; preds = %1
  %16 = bitcast [6 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([6 x i32]* @__const.ngene_buffer_config.tsin12_config to i8*), i64 24, i1 false)
  %17 = bitcast [6 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([6 x i32]* @__const.ngene_buffer_config.tsin1234_config to i8*), i64 24, i1 false)
  %18 = bitcast [6 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([6 x i32]* @__const.ngene_buffer_config.tsio1235_config to i8*), i64 24, i1 false)
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  store i32* %19, i32** %7, align 8
  %20 = load %struct.ngene*, %struct.ngene** %2, align 8
  %21 = getelementptr inbounds %struct.ngene, %struct.ngene* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NGENE_IO_TSIN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %15
  %31 = load %struct.ngene*, %struct.ngene** %2, align 8
  %32 = getelementptr inbounds %struct.ngene, %struct.ngene* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NGENE_IO_TSIN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %30
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32* %42, i32** %7, align 8
  %43 = load %struct.ngene*, %struct.ngene** %2, align 8
  %44 = getelementptr inbounds %struct.ngene, %struct.ngene* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NGENE_IO_TSOUT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %41
  %54 = load %struct.ngene*, %struct.ngene** %2, align 8
  %55 = getelementptr inbounds %struct.ngene, %struct.ngene* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  store i32* %60, i32** %7, align 8
  br label %61

61:                                               ; preds = %59, %53, %41
  br label %62

62:                                               ; preds = %61, %30, %15
  %63 = load %struct.ngene*, %struct.ngene** %2, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @ngene_command_config_free_buf(%struct.ngene* %63, i32* %64)
  store i32 %65, i32* %3, align 4
  br label %83

66:                                               ; preds = %1
  %67 = load i32, i32* @BUFFER_CONFIG_4422, align 4
  store i32 %67, i32* %8, align 4
  %68 = load %struct.ngene*, %struct.ngene** %2, align 8
  %69 = getelementptr inbounds %struct.ngene, %struct.ngene* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @NGENE_IO_TSIN, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = load i32, i32* @BUFFER_CONFIG_3333, align 4
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %77, %66
  %80 = load %struct.ngene*, %struct.ngene** %2, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @ngene_command_config_buf(%struct.ngene* %80, i32 %81)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %62
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ngene_command_config_free_buf(%struct.ngene*, i32*) #2

declare dso_local i32 @ngene_command_config_buf(%struct.ngene*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
