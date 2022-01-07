; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_bman_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_bman_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa_bp = type { i32 (%struct.dpaa_bp*, %struct.bm_buffer*)*, i32 }
%struct.bm_buffer = type opaque
%struct.bm_buffer.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa_bp*, %struct.bm_buffer.0*, i32)* @dpaa_bman_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa_bman_release(%struct.dpaa_bp* %0, %struct.bm_buffer.0* %1, i32 %2) #0 {
  %4 = alloca %struct.dpaa_bp*, align 8
  %5 = alloca %struct.bm_buffer.0*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dpaa_bp* %0, %struct.dpaa_bp** %4, align 8
  store %struct.bm_buffer.0* %1, %struct.bm_buffer.0** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dpaa_bp*, %struct.dpaa_bp** %4, align 8
  %9 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.bm_buffer.0*, %struct.bm_buffer.0** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @bman_release(i32 %10, %struct.bm_buffer.0* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %3
  %18 = load %struct.dpaa_bp*, %struct.dpaa_bp** %4, align 8
  %19 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %18, i32 0, i32 0
  %20 = load i32 (%struct.dpaa_bp*, %struct.bm_buffer*)*, i32 (%struct.dpaa_bp*, %struct.bm_buffer*)** %19, align 8
  %21 = icmp ne i32 (%struct.dpaa_bp*, %struct.bm_buffer*)* %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %27, %22
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %6, align 4
  %26 = icmp sgt i32 %24, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load %struct.dpaa_bp*, %struct.dpaa_bp** %4, align 8
  %29 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %28, i32 0, i32 0
  %30 = load i32 (%struct.dpaa_bp*, %struct.bm_buffer*)*, i32 (%struct.dpaa_bp*, %struct.bm_buffer*)** %29, align 8
  %31 = load %struct.dpaa_bp*, %struct.dpaa_bp** %4, align 8
  %32 = load %struct.bm_buffer.0*, %struct.bm_buffer.0** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.bm_buffer.0, %struct.bm_buffer.0* %32, i64 %34
  %36 = bitcast %struct.bm_buffer.0* %35 to %struct.bm_buffer*
  %37 = call i32 %30(%struct.dpaa_bp* %31, %struct.bm_buffer* %36)
  br label %23

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38, %17, %3
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @bman_release(i32, %struct.bm_buffer.0*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
