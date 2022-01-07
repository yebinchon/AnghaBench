; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_alloc_sftid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_alloc_sftid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tid_info = type { i32, i32, i32, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }

@PF_INET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_alloc_sftid(%struct.tid_info* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.tid_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.tid_info* %0, %struct.tid_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %9 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %8, i32 0, i32 2
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PF_INET, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %3
  %15 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %16 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %19 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %22 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %20, %23
  %25 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %26 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @find_next_zero_bit(i32 %17, i32 %24, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %31 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %34 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  %37 = icmp slt i32 %29, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %14
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %41 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @__set_bit(i32 %39, i32 %42)
  br label %45

44:                                               ; preds = %14
  store i32 -1, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %38
  br label %47

46:                                               ; preds = %3
  store i32 -1, i32* %7, align 4
  br label %47

47:                                               ; preds = %46, %45
  %48 = load i32, i32* %7, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %47
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %53 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %52, i32 0, i32 5
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i8* %51, i8** %58, align 8
  %59 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %60 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %65 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %7, align 4
  %71 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %72 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %50, %47
  %76 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %77 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %76, i32 0, i32 2
  %78 = call i32 @spin_unlock_bh(i32* %77)
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
