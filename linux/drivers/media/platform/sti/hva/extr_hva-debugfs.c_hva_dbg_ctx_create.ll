; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-debugfs.c_hva_dbg_ctx_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-debugfs.c_hva_dbg_ctx_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hva_ctx = type { %struct.TYPE_4__, %struct.hva_dev* }
%struct.TYPE_4__ = type { i32, i8*, i8*, i8* }
%struct.hva_dev = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@UINT_MAX = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ctx_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hva_dbg_ctx_create(%struct.hva_ctx* %0) #0 {
  %2 = alloca %struct.hva_ctx*, align 8
  %3 = alloca %struct.hva_dev*, align 8
  %4 = alloca [4 x i8], align 1
  store %struct.hva_ctx* %0, %struct.hva_ctx** %2, align 8
  %5 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %5, i32 0, i32 1
  %7 = load %struct.hva_dev*, %struct.hva_dev** %6, align 8
  store %struct.hva_dev* %7, %struct.hva_dev** %3, align 8
  %8 = bitcast [4 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %8, i8 0, i64 4, i1 false)
  %9 = load i8*, i8** @UINT_MAX, align 8
  %10 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  store i8* %9, i8** %12, align 8
  %13 = load i8*, i8** @UINT_MAX, align 8
  %14 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i8* %13, i8** %16, align 8
  %17 = load i8*, i8** @UINT_MAX, align 8
  %18 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i8* %17, i8** %20, align 8
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %22 = load %struct.hva_dev*, %struct.hva_dev** %3, align 8
  %23 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @snprintf(i8* %21, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %27 = load %struct.hva_dev*, %struct.hva_dev** %3, align 8
  %28 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %32 = call i32 @debugfs_create_file(i8* %26, i32 292, i32 %30, %struct.hva_ctx* %31, i32* @ctx_fops)
  %33 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %34 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.hva_ctx*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
