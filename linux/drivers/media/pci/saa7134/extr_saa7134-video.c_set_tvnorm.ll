; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_set_tvnorm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_set_tvnorm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_3__, %struct.saa7134_tvnorm* }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }
%struct.saa7134_tvnorm = type { i32, i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"set tv norm = %s\0A\00", align 1
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7134_dev*, %struct.saa7134_tvnorm*)* @set_tvnorm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_tvnorm(%struct.saa7134_dev* %0, %struct.saa7134_tvnorm* %1) #0 {
  %3 = alloca %struct.saa7134_dev*, align 8
  %4 = alloca %struct.saa7134_tvnorm*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %3, align 8
  store %struct.saa7134_tvnorm* %1, %struct.saa7134_tvnorm** %4, align 8
  %5 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %4, align 8
  %6 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @video_dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %4, align 8
  %10 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %11 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %10, i32 0, i32 3
  store %struct.saa7134_tvnorm* %9, %struct.saa7134_tvnorm** %11, align 8
  %12 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %4, align 8
  %13 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %16 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  store i64 %14, i64* %17, align 8
  %18 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %4, align 8
  %19 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %22 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  store i64 %20, i64* %23, align 8
  %24 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %4, align 8
  %25 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %4, align 8
  %28 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = add nsw i64 %30, 1
  %32 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %33 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  store i64 %31, i64* %34, align 8
  %35 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %4, align 8
  %36 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %4, align 8
  %39 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = add nsw i64 %41, 1
  %43 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %44 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i64 %42, i64* %45, align 8
  %46 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %4, align 8
  %47 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  %50 = mul nsw i32 %49, 2
  %51 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %52 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %4, align 8
  %55 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %56, 2
  %58 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %59 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %4, align 8
  %62 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @V4L2_STD_525_60, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 524, i32 624
  %69 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %70 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %68, %72
  %74 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %75 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %4, align 8
  %78 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %4, align 8
  %81 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %79, %82
  %84 = add nsw i32 %83, 1
  %85 = mul nsw i32 %84, 2
  %86 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %87 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %90 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %89, i32 0, i32 1
  %91 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %92 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %91, i32 0, i32 0
  %93 = bitcast %struct.TYPE_4__* %90 to i8*
  %94 = bitcast %struct.TYPE_4__* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 24, i1 false)
  %95 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %96 = call i32 @saa7134_set_tvnorm_hw(%struct.saa7134_dev* %95)
  ret void
}

declare dso_local i32 @video_dbg(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @saa7134_set_tvnorm_hw(%struct.saa7134_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
