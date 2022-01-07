; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_bp_drain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_bp_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa_bp = type { i32 (%struct.dpaa_bp*, %struct.bm_buffer*)*, i32 }
%struct.bm_buffer = type opaque
%struct.bm_buffer.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpaa_bp*)* @dpaa_bp_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpaa_bp_drain(%struct.dpaa_bp* %0) #0 {
  %2 = alloca %struct.dpaa_bp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [8 x %struct.bm_buffer.0], align 16
  %6 = alloca i32, align 4
  store %struct.dpaa_bp* %0, %struct.dpaa_bp** %2, align 8
  store i32 8, i32* %3, align 4
  br label %7

7:                                                ; preds = %46, %1
  %8 = load %struct.dpaa_bp*, %struct.dpaa_bp** %2, align 8
  %9 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds [8 x %struct.bm_buffer.0], [8 x %struct.bm_buffer.0]* %5, i64 0, i64 0
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @bman_acquire(i32 %10, %struct.bm_buffer.0* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %7
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, 8
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  store i32 1, i32* %4, align 4
  br label %46

20:                                               ; preds = %16
  br label %49

21:                                               ; preds = %7
  %22 = load %struct.dpaa_bp*, %struct.dpaa_bp** %2, align 8
  %23 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %22, i32 0, i32 0
  %24 = load i32 (%struct.dpaa_bp*, %struct.bm_buffer*)*, i32 (%struct.dpaa_bp*, %struct.bm_buffer*)** %23, align 8
  %25 = icmp ne i32 (%struct.dpaa_bp*, %struct.bm_buffer*)* %24, null
  br i1 %25, label %26, label %45

26:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %41, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.dpaa_bp*, %struct.dpaa_bp** %2, align 8
  %33 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %32, i32 0, i32 0
  %34 = load i32 (%struct.dpaa_bp*, %struct.bm_buffer*)*, i32 (%struct.dpaa_bp*, %struct.bm_buffer*)** %33, align 8
  %35 = load %struct.dpaa_bp*, %struct.dpaa_bp** %2, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x %struct.bm_buffer.0], [8 x %struct.bm_buffer.0]* %5, i64 0, i64 %37
  %39 = bitcast %struct.bm_buffer.0* %38 to %struct.bm_buffer*
  %40 = call i32 %34(%struct.dpaa_bp* %35, %struct.bm_buffer* %39)
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %27

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44, %21
  br label %46

46:                                               ; preds = %45, %19
  %47 = load i32, i32* %4, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %7, label %49

49:                                               ; preds = %46, %20
  ret void
}

declare dso_local i32 @bman_acquire(i32, %struct.bm_buffer.0*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
