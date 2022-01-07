; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_fq_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_fq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa_fq = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.list_head = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dpaa_fq* (%struct.device*, i32, i32, %struct.list_head*, i32)* @dpaa_fq_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dpaa_fq* @dpaa_fq_alloc(%struct.device* %0, i32 %1, i32 %2, %struct.list_head* %3, i32 %4) #0 {
  %6 = alloca %struct.dpaa_fq*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.list_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dpaa_fq*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.list_head* %3, %struct.list_head** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.dpaa_fq* @devm_kcalloc(%struct.device* %14, i32 %15, i32 12, i32 %16)
  store %struct.dpaa_fq* %17, %struct.dpaa_fq** %12, align 8
  %18 = load %struct.dpaa_fq*, %struct.dpaa_fq** %12, align 8
  %19 = icmp ne %struct.dpaa_fq* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store %struct.dpaa_fq* null, %struct.dpaa_fq** %6, align 8
  br label %74

21:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %54, %21
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %22
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.dpaa_fq*, %struct.dpaa_fq** %12, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %28, i64 %30
  %32 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %31, i32 0, i32 0
  store i32 %27, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %36, %37
  br label %40

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i32 [ %38, %35 ], [ 0, %39 ]
  %42 = load %struct.dpaa_fq*, %struct.dpaa_fq** %12, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %42, i64 %44
  %46 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %45, i32 0, i32 1
  store i32 %41, i32* %46, align 4
  %47 = load %struct.dpaa_fq*, %struct.dpaa_fq** %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %47, i64 %49
  %51 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %50, i32 0, i32 2
  %52 = load %struct.list_head*, %struct.list_head** %10, align 8
  %53 = call i32 @list_add_tail(i32* %51, %struct.list_head* %52)
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %22

57:                                               ; preds = %22
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %69, %57
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load %struct.dpaa_fq*, %struct.dpaa_fq** %12, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %63, i64 %65
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @dpaa_assign_wq(%struct.dpaa_fq* %66, i32 %67)
  br label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %58

72:                                               ; preds = %58
  %73 = load %struct.dpaa_fq*, %struct.dpaa_fq** %12, align 8
  store %struct.dpaa_fq* %73, %struct.dpaa_fq** %6, align 8
  br label %74

74:                                               ; preds = %72, %20
  %75 = load %struct.dpaa_fq*, %struct.dpaa_fq** %6, align 8
  ret %struct.dpaa_fq* %75
}

declare dso_local %struct.dpaa_fq* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @dpaa_assign_wq(%struct.dpaa_fq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
