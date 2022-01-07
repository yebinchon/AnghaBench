; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_free_stid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_free_stid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tid_info = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_2__*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32* }

@PF_INET = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgb4_free_stid(%struct.tid_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tid_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tid_info* %0, %struct.tid_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %8 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %7, i32 0, i32 9
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %14 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp uge i32 %12, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %19 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sub i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %24 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %36

28:                                               ; preds = %11, %3
  %29 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %30 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %29, i32 0, i32 8
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = sub nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %28, %17
  %37 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %38 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %37, i32 0, i32 3
  %39 = call i32 @spin_lock_bh(i32* %38)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @PF_INET, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %46 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @__clear_bit(i32 %44, i32 %47)
  br label %55

49:                                               ; preds = %36
  %50 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %51 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @bitmap_release_region(i32 %52, i32 %53, i32 1)
  br label %55

55:                                               ; preds = %49, %43
  %56 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %57 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %56, i32 0, i32 6
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %65 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ult i32 %63, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %55
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @PF_INET6, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %74 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %75, 2
  store i64 %76, i64* %74, align 8
  %77 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %78 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %79, 2
  store i32 %80, i32* %78, align 8
  br label %86

81:                                               ; preds = %68
  %82 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %83 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, -1
  store i64 %85, i64* %83, align 8
  br label %86

86:                                               ; preds = %81, %72
  br label %92

87:                                               ; preds = %55
  %88 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %89 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %87, %86
  %93 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %94 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %93, i32 0, i32 3
  %95 = call i32 @spin_unlock_bh(i32* %94)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @bitmap_release_region(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
