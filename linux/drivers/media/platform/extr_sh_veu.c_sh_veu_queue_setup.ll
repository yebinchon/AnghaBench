; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.sh_veu_dev = type { i32 }
%struct.sh_veu_vfmt = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@VIDEO_MEM_LIMIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"get %d buffer(s) of size %d each.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @sh_veu_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_veu_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.sh_veu_dev*, align 8
  %13 = alloca %struct.sh_veu_vfmt*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %16 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %17 = call %struct.sh_veu_dev* @vb2_get_drv_priv(%struct.vb2_queue* %16)
  store %struct.sh_veu_dev* %17, %struct.sh_veu_dev** %12, align 8
  %18 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %12, align 8
  %19 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %20 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.sh_veu_vfmt* @sh_veu_get_vfmt(%struct.sh_veu_dev* %18, i32 %21)
  store %struct.sh_veu_vfmt* %22, %struct.sh_veu_vfmt** %13, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %14, align 4
  %25 = load %struct.sh_veu_vfmt*, %struct.sh_veu_vfmt** %13, align 8
  %26 = getelementptr inbounds %struct.sh_veu_vfmt, %struct.sh_veu_vfmt* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.sh_veu_vfmt*, %struct.sh_veu_vfmt** %13, align 8
  %29 = getelementptr inbounds %struct.sh_veu_vfmt, %struct.sh_veu_vfmt* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul i32 %27, %31
  %33 = load %struct.sh_veu_vfmt*, %struct.sh_veu_vfmt** %13, align 8
  %34 = getelementptr inbounds %struct.sh_veu_vfmt, %struct.sh_veu_vfmt* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul i32 %32, %37
  %39 = load %struct.sh_veu_vfmt*, %struct.sh_veu_vfmt** %13, align 8
  %40 = getelementptr inbounds %struct.sh_veu_vfmt, %struct.sh_veu_vfmt* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = udiv i32 %38, %43
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ult i32 %45, 2
  br i1 %46, label %47, label %49

47:                                               ; preds = %5
  store i32 2, i32* %14, align 4
  %48 = load i32*, i32** %8, align 8
  store i32 2, i32* %48, align 4
  br label %49

49:                                               ; preds = %47, %5
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %14, align 4
  %52 = mul i32 %50, %51
  %53 = load i32, i32* @VIDEO_MEM_LIMIT, align 4
  %54 = icmp ugt i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i32, i32* @VIDEO_MEM_LIMIT, align 4
  %57 = load i32, i32* %15, align 4
  %58 = udiv i32 %56, %57
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32*, i32** %8, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %49
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  br label %75

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %71
  %76 = phi i32 [ %73, %71 ], [ 0, %74 ]
  store i32 %76, i32* %6, align 4
  br label %88

77:                                               ; preds = %61
  %78 = load i32*, i32** %9, align 8
  store i32 1, i32* %78, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %12, align 8
  %83 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @dev_dbg(i32 %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %86)
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %77, %75
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local %struct.sh_veu_dev* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.sh_veu_vfmt* @sh_veu_get_vfmt(%struct.sh_veu_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
