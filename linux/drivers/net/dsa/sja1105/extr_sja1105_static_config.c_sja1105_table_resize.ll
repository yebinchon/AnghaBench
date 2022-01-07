; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_static_config.c_sja1105_table_resize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_static_config.c_sja1105_table_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_table = type { i64, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@ERANGE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sja1105_table_resize(%struct.sja1105_table* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sja1105_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.sja1105_table* %0, %struct.sja1105_table** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.sja1105_table*, %struct.sja1105_table** %4, align 8
  %10 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.sja1105_table*, %struct.sja1105_table** %4, align 8
  %15 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %8, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.sja1105_table*, %struct.sja1105_table** %4, align 8
  %19 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ugt i64 %17, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @ERANGE, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %56

27:                                               ; preds = %2
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kcalloc(i64 %28, i64 %29, i32 %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %56

37:                                               ; preds = %27
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.sja1105_table*, %struct.sja1105_table** %4, align 8
  %42 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @min(i64 %40, i64 %43)
  %45 = load i64, i64* %6, align 8
  %46 = mul i64 %44, %45
  %47 = call i32 @memcpy(i8* %38, i8* %39, i64 %46)
  %48 = load i8*, i8** %7, align 8
  %49 = load %struct.sja1105_table*, %struct.sja1105_table** %4, align 8
  %50 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.sja1105_table*, %struct.sja1105_table** %4, align 8
  %53 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @kfree(i8* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %37, %34, %24
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i8* @kcalloc(i64, i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
