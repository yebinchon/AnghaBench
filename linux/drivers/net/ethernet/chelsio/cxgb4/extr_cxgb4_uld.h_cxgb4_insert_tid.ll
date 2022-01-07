; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_uld.h_cxgb4_insert_tid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_uld.h_cxgb4_insert_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tid_info = type { i32, i32, i32, i32, i8** }

@AF_INET6 = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tid_info*, i8*, i32, i16)* @cxgb4_insert_tid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb4_insert_tid(%struct.tid_info* %0, i8* %1, i32 %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.tid_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  store %struct.tid_info* %0, %struct.tid_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i16 %3, i16* %8, align 2
  %9 = load i8*, i8** %6, align 8
  %10 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %11 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %10, i32 0, i32 4
  %12 = load i8**, i8*** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  store i8* %9, i8** %15, align 8
  %16 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %17 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %23 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp uge i32 %21, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load i16, i16* %8, align 2
  %28 = zext i16 %27 to i32
  %29 = load i16, i16* @AF_INET6, align 2
  %30 = zext i16 %29 to i32
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %34 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %33, i32 0, i32 3
  %35 = call i32 @atomic_add(i32 2, i32* %34)
  br label %40

36:                                               ; preds = %26
  %37 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %38 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %37, i32 0, i32 3
  %39 = call i32 @atomic_inc(i32* %38)
  br label %40

40:                                               ; preds = %36, %32
  br label %56

41:                                               ; preds = %20, %4
  %42 = load i16, i16* %8, align 2
  %43 = zext i16 %42 to i32
  %44 = load i16, i16* @AF_INET6, align 2
  %45 = zext i16 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %49 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %48, i32 0, i32 2
  %50 = call i32 @atomic_add(i32 2, i32* %49)
  br label %55

51:                                               ; preds = %41
  %52 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %53 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %52, i32 0, i32 2
  %54 = call i32 @atomic_inc(i32* %53)
  br label %55

55:                                               ; preds = %51, %47
  br label %56

56:                                               ; preds = %55, %40
  %57 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %58 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %57, i32 0, i32 1
  %59 = call i32 @atomic_inc(i32* %58)
  ret void
}

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
