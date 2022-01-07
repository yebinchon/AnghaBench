; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_rxdb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_rxdb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxdb = type { i32*, i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rxdb* (i32)* @bdx_rxdb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rxdb* @bdx_rxdb_create(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rxdb*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 4
  %8 = add i64 24, %7
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = add i64 %8, %11
  %13 = trunc i64 %12 to i32
  %14 = call %struct.rxdb* @vmalloc(i32 %13)
  store %struct.rxdb* %14, %struct.rxdb** %3, align 8
  %15 = load %struct.rxdb*, %struct.rxdb** %3, align 8
  %16 = icmp ne %struct.rxdb* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %60

20:                                               ; preds = %1
  %21 = load %struct.rxdb*, %struct.rxdb** %3, align 8
  %22 = getelementptr inbounds %struct.rxdb, %struct.rxdb* %21, i64 1
  %23 = bitcast %struct.rxdb* %22 to i32*
  %24 = load %struct.rxdb*, %struct.rxdb** %3, align 8
  %25 = getelementptr inbounds %struct.rxdb, %struct.rxdb* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load %struct.rxdb*, %struct.rxdb** %3, align 8
  %27 = getelementptr inbounds %struct.rxdb, %struct.rxdb* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = bitcast i32* %31 to i8*
  %33 = load %struct.rxdb*, %struct.rxdb** %3, align 8
  %34 = getelementptr inbounds %struct.rxdb, %struct.rxdb* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %2, align 4
  %36 = load %struct.rxdb*, %struct.rxdb** %3, align 8
  %37 = getelementptr inbounds %struct.rxdb, %struct.rxdb* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %2, align 4
  %39 = load %struct.rxdb*, %struct.rxdb** %3, align 8
  %40 = getelementptr inbounds %struct.rxdb, %struct.rxdb* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %56, %20
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 %46, %47
  %49 = sub nsw i32 %48, 1
  %50 = load %struct.rxdb*, %struct.rxdb** %3, align 8
  %51 = getelementptr inbounds %struct.rxdb, %struct.rxdb* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %41

59:                                               ; preds = %41
  br label %60

60:                                               ; preds = %59, %1
  %61 = load %struct.rxdb*, %struct.rxdb** %3, align 8
  ret %struct.rxdb* %61
}

declare dso_local %struct.rxdb* @vmalloc(i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
