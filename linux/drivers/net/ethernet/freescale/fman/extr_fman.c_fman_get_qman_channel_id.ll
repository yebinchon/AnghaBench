; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman.c_fman_get_qman_channel_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman.c_fman_get_qman_channel_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@fman_get_qman_channel_id.port_ids = internal constant [14 x i32] [i32 48, i32 49, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 2, i32 3, i32 4, i32 5, i32 7, i32 7], align 16
@fman_get_qman_channel_id.port_ids.1 = internal constant [13 x i32] [i32 48, i32 40, i32 41, i32 42, i32 43, i32 44, i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 7], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_get_qman_channel_id(%struct.fman* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fman*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fman* %0, %struct.fman** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.fman*, %struct.fman** %4, align 8
  %8 = getelementptr inbounds %struct.fman, %struct.fman* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %12, 6
  br i1 %13, label %14, label %36

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %32, %14
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.fman*, %struct.fman** %4, align 8
  %18 = getelementptr inbounds %struct.fman, %struct.fman* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [14 x i32], [14 x i32]* @fman_get_qman_channel_id.port_ids, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %35

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %15

35:                                               ; preds = %30, %15
  br label %58

36:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %54, %36
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.fman*, %struct.fman** %4, align 8
  %40 = getelementptr inbounds %struct.fman, %struct.fman* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %38, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [13 x i32], [13 x i32]* @fman_get_qman_channel_id.port_ids.1, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %57

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %37

57:                                               ; preds = %52, %37
  br label %58

58:                                               ; preds = %57, %35
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.fman*, %struct.fman** %4, align 8
  %61 = getelementptr inbounds %struct.fman, %struct.fman* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %59, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %75

67:                                               ; preds = %58
  %68 = load %struct.fman*, %struct.fman** %4, align 8
  %69 = getelementptr inbounds %struct.fman, %struct.fman* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %67, %66
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
