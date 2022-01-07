; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_nic_s = type { i32, i64, i32, %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.aq_vec_s** }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*, i64, i32)*, i32 (%struct.TYPE_10__*)* }
%struct.aq_vec_s = type { i32 }

@AQ_HW_POWER_STATE_D0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aq_nic_deinit(%struct.aq_nic_s* %0) #0 {
  %2 = alloca %struct.aq_nic_s*, align 8
  %3 = alloca %struct.aq_vec_s*, align 8
  %4 = alloca i32, align 4
  store %struct.aq_nic_s* %0, %struct.aq_nic_s** %2, align 8
  store %struct.aq_vec_s* null, %struct.aq_vec_s** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %6 = icmp ne %struct.aq_nic_s* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %107

8:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  %9 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %10 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %9, i32 0, i32 6
  %11 = load %struct.aq_vec_s**, %struct.aq_vec_s*** %10, align 8
  %12 = getelementptr inbounds %struct.aq_vec_s*, %struct.aq_vec_s** %11, i64 0
  %13 = load %struct.aq_vec_s*, %struct.aq_vec_s** %12, align 8
  store %struct.aq_vec_s* %13, %struct.aq_vec_s** %3, align 8
  br label %14

14:                                               ; preds = %23, %8
  %15 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %16 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load %struct.aq_vec_s*, %struct.aq_vec_s** %3, align 8
  %22 = call i32 @aq_vec_deinit(%struct.aq_vec_s* %21)
  br label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %4, align 4
  %26 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %27 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %26, i32 0, i32 6
  %28 = load %struct.aq_vec_s**, %struct.aq_vec_s*** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.aq_vec_s*, %struct.aq_vec_s** %28, i64 %30
  %32 = load %struct.aq_vec_s*, %struct.aq_vec_s** %31, align 8
  store %struct.aq_vec_s* %32, %struct.aq_vec_s** %3, align 8
  br label %14

33:                                               ; preds = %14
  %34 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %35 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %34, i32 0, i32 5
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %37, align 8
  %39 = call i64 @likely(i32 (%struct.TYPE_10__*)* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %33
  %42 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %43 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %42, i32 0, i32 2
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %46 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %45, i32 0, i32 5
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %48, align 8
  %50 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %51 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %50, i32 0, i32 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = call i32 %49(%struct.TYPE_10__* %52)
  %54 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %55 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %54, i32 0, i32 2
  %56 = call i32 @mutex_unlock(i32* %55)
  br label %57

57:                                               ; preds = %41, %33
  %58 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %59 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @AQ_HW_POWER_STATE_D0, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %72, label %63

63:                                               ; preds = %57
  %64 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %65 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %64, i32 0, i32 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %106

72:                                               ; preds = %63, %57
  %73 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %74 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %73, i32 0, i32 5
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32 (%struct.TYPE_10__*, i64, i32)*, i32 (%struct.TYPE_10__*, i64, i32)** %76, align 8
  %78 = bitcast i32 (%struct.TYPE_10__*, i64, i32)* %77 to i32 (%struct.TYPE_10__*)*
  %79 = call i64 @likely(i32 (%struct.TYPE_10__*)* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %105

81:                                               ; preds = %72
  %82 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %83 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %82, i32 0, i32 2
  %84 = call i32 @mutex_lock(i32* %83)
  %85 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %86 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %85, i32 0, i32 5
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32 (%struct.TYPE_10__*, i64, i32)*, i32 (%struct.TYPE_10__*, i64, i32)** %88, align 8
  %90 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %91 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %90, i32 0, i32 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %94 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %97 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %96, i32 0, i32 3
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 %89(%struct.TYPE_10__* %92, i64 %95, i32 %100)
  %102 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %103 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %102, i32 0, i32 2
  %104 = call i32 @mutex_unlock(i32* %103)
  br label %105

105:                                              ; preds = %81, %72
  br label %106

106:                                              ; preds = %105, %63
  br label %107

107:                                              ; preds = %106, %7
  ret void
}

declare dso_local i32 @aq_vec_deinit(%struct.aq_vec_s*) #1

declare dso_local i64 @likely(i32 (%struct.TYPE_10__*)*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
