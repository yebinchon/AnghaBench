; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_get_data_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_get_data_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3cmci_host = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@XFER_NONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@dbg_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no more buffers (%i/%i)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@dbg_sg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"new buffer (%i/%i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3cmci_host*, i32*, i32**)* @get_data_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_data_buffer(%struct.s3cmci_host* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.s3cmci_host*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.scatterlist*, align 8
  store %struct.s3cmci_host* %0, %struct.s3cmci_host** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %9 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %10 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @XFER_NONE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %96

17:                                               ; preds = %3
  %18 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %19 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %24 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22, %17
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %96

32:                                               ; preds = %22
  %33 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %34 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %37 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp uge i64 %35, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %32
  %45 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %46 = load i32, i32* @dbg_debug, align 4
  %47 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %48 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %51 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @dbg(%struct.s3cmci_host* %45, i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %49, i64 %56)
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %96

60:                                               ; preds = %32
  %61 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %62 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load %struct.scatterlist*, %struct.scatterlist** %66, align 8
  %68 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %69 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %67, i64 %70
  store %struct.scatterlist* %71, %struct.scatterlist** %8, align 8
  %72 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %73 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %6, align 8
  store i32 %74, i32* %75, align 4
  %76 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %77 = call i32* @sg_virt(%struct.scatterlist* %76)
  %78 = load i32**, i32*** %7, align 8
  store i32* %77, i32** %78, align 8
  %79 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %80 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %80, align 8
  %83 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %84 = load i32, i32* @dbg_sg, align 4
  %85 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %86 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %89 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @dbg(%struct.s3cmci_host* %83, i32 %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %87, i64 %94)
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %60, %44, %29, %14
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @dbg(%struct.s3cmci_host*, i32, i8*, i64, i64) #1

declare dso_local i32* @sg_virt(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
