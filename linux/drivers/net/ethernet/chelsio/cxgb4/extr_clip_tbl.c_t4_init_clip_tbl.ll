; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_clip_tbl.c_t4_init_clip_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_clip_tbl.c_t4_init_clip_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clip_tbl = type { i32, i32, i32, i8*, i32*, i32, i32 }
%struct.clip_entry = type { i32 }

@CLIPT_MIN_HASH_BUCKETS = common dso_local global i32 0, align 4
@hash_list = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clip_tbl* @t4_init_clip_tbl(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.clip_tbl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.clip_entry*, align 8
  %7 = alloca %struct.clip_tbl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp uge i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.clip_tbl* null, %struct.clip_tbl** %3, align 8
  br label %105

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = sub i32 %15, %16
  %18 = add i32 %17, 1
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @CLIPT_MIN_HASH_BUCKETS, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store %struct.clip_tbl* null, %struct.clip_tbl** %3, align 8
  br label %105

23:                                               ; preds = %14
  %24 = load %struct.clip_tbl*, %struct.clip_tbl** %7, align 8
  %25 = load i32, i32* @hash_list, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @struct_size(%struct.clip_tbl* %24, i32 %25, i32 %26)
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.clip_tbl* @kvzalloc(i32 %27, i32 %28)
  store %struct.clip_tbl* %29, %struct.clip_tbl** %7, align 8
  %30 = load %struct.clip_tbl*, %struct.clip_tbl** %7, align 8
  %31 = icmp ne %struct.clip_tbl* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  store %struct.clip_tbl* null, %struct.clip_tbl** %3, align 8
  br label %105

33:                                               ; preds = %23
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.clip_tbl*, %struct.clip_tbl** %7, align 8
  %36 = getelementptr inbounds %struct.clip_tbl, %struct.clip_tbl* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.clip_tbl*, %struct.clip_tbl** %7, align 8
  %39 = getelementptr inbounds %struct.clip_tbl, %struct.clip_tbl* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.clip_tbl*, %struct.clip_tbl** %7, align 8
  %41 = getelementptr inbounds %struct.clip_tbl, %struct.clip_tbl* %40, i32 0, i32 2
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.clip_tbl*, %struct.clip_tbl** %7, align 8
  %44 = getelementptr inbounds %struct.clip_tbl, %struct.clip_tbl* %43, i32 0, i32 6
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @atomic_set(i32* %44, i32 %45)
  %47 = load %struct.clip_tbl*, %struct.clip_tbl** %7, align 8
  %48 = getelementptr inbounds %struct.clip_tbl, %struct.clip_tbl* %47, i32 0, i32 5
  %49 = call i32 @rwlock_init(i32* %48)
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %64, %33
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.clip_tbl*, %struct.clip_tbl** %7, align 8
  %53 = getelementptr inbounds %struct.clip_tbl, %struct.clip_tbl* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load %struct.clip_tbl*, %struct.clip_tbl** %7, align 8
  %58 = getelementptr inbounds %struct.clip_tbl, %struct.clip_tbl* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  br label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %50

67:                                               ; preds = %50
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call %struct.clip_entry* @kvcalloc(i32 %68, i32 4, i32 %69)
  store %struct.clip_entry* %70, %struct.clip_entry** %6, align 8
  %71 = load %struct.clip_entry*, %struct.clip_entry** %6, align 8
  %72 = icmp ne %struct.clip_entry* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load %struct.clip_tbl*, %struct.clip_tbl** %7, align 8
  %75 = call i32 @kvfree(%struct.clip_tbl* %74)
  store %struct.clip_tbl* null, %struct.clip_tbl** %3, align 8
  br label %105

76:                                               ; preds = %67
  %77 = load %struct.clip_entry*, %struct.clip_entry** %6, align 8
  %78 = bitcast %struct.clip_entry* %77 to i8*
  %79 = load %struct.clip_tbl*, %struct.clip_tbl** %7, align 8
  %80 = getelementptr inbounds %struct.clip_tbl, %struct.clip_tbl* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %100, %76
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %81
  %86 = load %struct.clip_entry*, %struct.clip_entry** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.clip_entry, %struct.clip_entry* %86, i64 %88
  %90 = getelementptr inbounds %struct.clip_entry, %struct.clip_entry* %89, i32 0, i32 0
  %91 = call i32 @INIT_LIST_HEAD(i32* %90)
  %92 = load %struct.clip_entry*, %struct.clip_entry** %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.clip_entry, %struct.clip_entry* %92, i64 %94
  %96 = getelementptr inbounds %struct.clip_entry, %struct.clip_entry* %95, i32 0, i32 0
  %97 = load %struct.clip_tbl*, %struct.clip_tbl** %7, align 8
  %98 = getelementptr inbounds %struct.clip_tbl, %struct.clip_tbl* %97, i32 0, i32 2
  %99 = call i32 @list_add_tail(i32* %96, i32* %98)
  br label %100

100:                                              ; preds = %85
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %81

103:                                              ; preds = %81
  %104 = load %struct.clip_tbl*, %struct.clip_tbl** %7, align 8
  store %struct.clip_tbl* %104, %struct.clip_tbl** %3, align 8
  br label %105

105:                                              ; preds = %103, %73, %32, %22, %13
  %106 = load %struct.clip_tbl*, %struct.clip_tbl** %3, align 8
  ret %struct.clip_tbl* %106
}

declare dso_local %struct.clip_tbl* @kvzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.clip_tbl*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local %struct.clip_entry* @kvcalloc(i32, i32, i32) #1

declare dso_local i32 @kvfree(%struct.clip_tbl*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
