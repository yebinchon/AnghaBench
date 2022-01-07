; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_setup_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_setup_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i8* }

@BNXT_FLAG_SHARED_RINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"TxRx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s-%s-%d\00", align 1
@bnxt_msix = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_setup_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_setup_msix(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  store i32 4, i32* %3, align 4
  %12 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %13 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %12, i32 0, i32 5
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i32 @netdev_get_num_tc(%struct.net_device* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %40

19:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %36, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %26 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @netdev_set_tc_queue(%struct.net_device* %31, i32 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %24
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %20

39:                                               ; preds = %20
  br label %40

40:                                               ; preds = %39, %1
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %90, %40
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %44 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %93

47:                                               ; preds = %41
  %48 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @bnxt_cp_num_to_irq_num(%struct.bnxt* %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %52 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @BNXT_FLAG_SHARED_RINGS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %67

58:                                               ; preds = %47
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %61 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %66

65:                                               ; preds = %58
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %66

66:                                               ; preds = %65, %64
  br label %67

67:                                               ; preds = %66, %57
  %68 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %69 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %68, i32 0, i32 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.net_device*, %struct.net_device** %4, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @snprintf(i32 %75, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %78, i8* %79, i32 %80)
  %82 = load i32, i32* @bnxt_msix, align 4
  %83 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %84 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %83, i32 0, i32 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 %82, i32* %89, align 4
  br label %90

90:                                               ; preds = %67
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %41

93:                                               ; preds = %41
  ret void
}

declare dso_local i32 @netdev_get_num_tc(%struct.net_device*) #1

declare dso_local i32 @netdev_set_tc_queue(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @bnxt_cp_num_to_irq_num(%struct.bnxt*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
