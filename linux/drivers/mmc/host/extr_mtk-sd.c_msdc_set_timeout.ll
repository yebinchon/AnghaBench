; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdc_host = type { i32, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@MSDC_CFG = common dso_local global i64 0, align 8
@MSDC_CFG_CKMOD = common dso_local global i32 0, align 4
@MSDC_CFG_CKMOD_EXTRA = common dso_local global i32 0, align 4
@SDC_CFG = common dso_local global i64 0, align 8
@SDC_CFG_DTOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msdc_host*, i32, i32)* @msdc_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msdc_set_timeout(%struct.msdc_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.msdc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.msdc_host* %0, %struct.msdc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %12 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %15 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %17 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %16, i32 0, i32 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %90

23:                                               ; preds = %3
  %24 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %25 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %24, i32 0, i32 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = udiv i64 1000000000, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %31, %32
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* %8, align 4
  %36 = sdiv i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1048576
  %41 = sub nsw i32 %40, 1
  %42 = ashr i32 %41, 20
  store i32 %42, i32* %7, align 4
  %43 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %44 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 8
  br i1 %48, label %49, label %57

49:                                               ; preds = %23
  %50 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %51 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MSDC_CFG, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i32, i32* @MSDC_CFG_CKMOD, align 4
  %56 = call i32 @sdr_get_field(i64 %54, i32 %55, i32* %9)
  br label %65

57:                                               ; preds = %23
  %58 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %59 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MSDC_CFG, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* @MSDC_CFG_CKMOD_EXTRA, align 4
  %64 = call i32 @sdr_get_field(i64 %62, i32 %63, i32* %9)
  br label %65

65:                                               ; preds = %57, %49
  %66 = load i32, i32* %9, align 4
  %67 = icmp sge i32 %66, 2
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 %69, 2
  br label %73

71:                                               ; preds = %65
  %72 = load i32, i32* %7, align 4
  br label %73

73:                                               ; preds = %71, %68
  %74 = phi i32 [ %70, %68 ], [ %72, %71 ]
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 %78, 1
  br label %81

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %77
  %82 = phi i32 [ %79, %77 ], [ 0, %80 ]
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp sgt i32 %83, 255
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %7, align 4
  br label %88

88:                                               ; preds = %86, %85
  %89 = phi i32 [ 255, %85 ], [ %87, %86 ]
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %88, %22
  %91 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %92 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SDC_CFG, align 8
  %95 = add nsw i64 %93, %94
  %96 = load i32, i32* @SDC_CFG_DTOC, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @sdr_set_field(i64 %95, i32 %96, i32 %97)
  ret void
}

declare dso_local i32 @sdr_get_field(i64, i32, i32*) #1

declare dso_local i32 @sdr_set_field(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
