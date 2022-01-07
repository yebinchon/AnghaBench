; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_codec-v4l2-fwht.c_v4l2_fwht_get_pixfmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_codec-v4l2-fwht.c_v4l2_fwht_get_pixfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fwht_pixfmt_info = type { i32 }

@v4l2_fwht_pixfmts = common dso_local global %struct.v4l2_fwht_pixfmt_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_fwht_pixfmt_info* @v4l2_fwht_get_pixfmt(i64 %0) #0 {
  %2 = alloca %struct.v4l2_fwht_pixfmt_info*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** @v4l2_fwht_pixfmts, align 8
  %6 = call i64 @ARRAY_SIZE(%struct.v4l2_fwht_pixfmt_info* %5)
  %7 = icmp sge i64 %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.v4l2_fwht_pixfmt_info* null, %struct.v4l2_fwht_pixfmt_info** %2, align 8
  br label %13

9:                                                ; preds = %1
  %10 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** @v4l2_fwht_pixfmts, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %10, i64 %11
  store %struct.v4l2_fwht_pixfmt_info* %12, %struct.v4l2_fwht_pixfmt_info** %2, align 8
  br label %13

13:                                               ; preds = %9, %8
  %14 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %2, align 8
  ret %struct.v4l2_fwht_pixfmt_info* %14
}

declare dso_local i64 @ARRAY_SIZE(%struct.v4l2_fwht_pixfmt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
