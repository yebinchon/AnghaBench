; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_get_mf_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_get_mf_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_get_mf_speed(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %7 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = call i64 @IS_MF(%struct.bnx2x* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %1
  %14 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %15 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %16 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %19 = call i64 @BP_VN(%struct.bnx2x* %18)
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bnx2x_extract_max_cfg(%struct.bnx2x* %14, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %24 = call i64 @IS_MF_PERCENT_BW(%struct.bnx2x* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %13
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sdiv i32 %29, 100
  store i32 %30, i32* %3, align 4
  br label %40

31:                                               ; preds = %13
  %32 = load i32, i32* %4, align 4
  %33 = mul nsw i32 %32, 100
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %31
  br label %40

40:                                               ; preds = %39, %26
  br label %41

41:                                               ; preds = %40, %1
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @IS_MF(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_extract_max_cfg(%struct.bnx2x*, i32) #1

declare dso_local i64 @BP_VN(%struct.bnx2x*) #1

declare dso_local i64 @IS_MF_PERCENT_BW(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
