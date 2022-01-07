; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_s_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_s_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.vpe_ctx = type { i32 }
%struct.vpe_q_data = type { %struct.TYPE_2__ }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"requested crop/compose values are already set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @vpe_s_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpe_s_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.vpe_ctx*, align 8
  %9 = alloca %struct.vpe_q_data*, align 8
  %10 = alloca %struct.v4l2_selection, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.vpe_ctx* @file2ctx(%struct.file* %12)
  store %struct.vpe_ctx* %13, %struct.vpe_ctx** %8, align 8
  %14 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %15 = bitcast %struct.v4l2_selection* %10 to i8*
  %16 = bitcast %struct.v4l2_selection* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 40, i1 false)
  %17 = load %struct.vpe_ctx*, %struct.vpe_ctx** %8, align 8
  %18 = call i32 @__vpe_try_selection(%struct.vpe_ctx* %17, %struct.v4l2_selection* %10)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %4, align 4
  br label %82

23:                                               ; preds = %3
  %24 = load %struct.vpe_ctx*, %struct.vpe_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %10, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.vpe_q_data* @get_q_data(%struct.vpe_ctx* %24, i32 %26)
  store %struct.vpe_q_data* %27, %struct.vpe_q_data** %9, align 8
  %28 = load %struct.vpe_q_data*, %struct.vpe_q_data** %9, align 8
  %29 = icmp ne %struct.vpe_q_data* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %82

33:                                               ; preds = %23
  %34 = load %struct.vpe_q_data*, %struct.vpe_q_data** %9, align 8
  %35 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %10, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %33
  %43 = load %struct.vpe_q_data*, %struct.vpe_q_data** %9, align 8
  %44 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %10, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %74

51:                                               ; preds = %42
  %52 = load %struct.vpe_q_data*, %struct.vpe_q_data** %9, align 8
  %53 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %10, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %51
  %61 = load %struct.vpe_q_data*, %struct.vpe_q_data** %9, align 8
  %62 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %10, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load %struct.vpe_ctx*, %struct.vpe_ctx** %8, align 8
  %71 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @vpe_dbg(i32 %72, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %82

74:                                               ; preds = %60, %51, %42, %33
  %75 = load %struct.vpe_q_data*, %struct.vpe_q_data** %9, align 8
  %76 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %10, i32 0, i32 0
  %78 = bitcast %struct.TYPE_2__* %76 to i8*
  %79 = bitcast %struct.TYPE_2__* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 32, i1 false)
  %80 = load %struct.vpe_ctx*, %struct.vpe_ctx** %8, align 8
  %81 = call i32 @set_srcdst_params(%struct.vpe_ctx* %80)
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %74, %69, %30, %21
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.vpe_ctx* @file2ctx(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__vpe_try_selection(%struct.vpe_ctx*, %struct.v4l2_selection*) #1

declare dso_local %struct.vpe_q_data* @get_q_data(%struct.vpe_ctx*, i32) #1

declare dso_local i32 @vpe_dbg(i32, i8*) #1

declare dso_local i32 @set_srcdst_params(%struct.vpe_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
