; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_output_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_output_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_output = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb_output*)* @ddb_output_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddb_output_free(%struct.ddb_output* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ddb_output*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ddb_output* %0, %struct.ddb_output** %3, align 8
  %8 = load %struct.ddb_output*, %struct.ddb_output** %3, align 8
  %9 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 %13, 11
  %15 = and i32 %14, 31
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 2047
  %18 = shl i32 %17, 7
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ddb_output*, %struct.ddb_output** %3, align 8
  %20 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %1
  %27 = load %struct.ddb_output*, %struct.ddb_output** %3, align 8
  %28 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  %33 = load %struct.ddb_output*, %struct.ddb_output** %3, align 8
  %34 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = srem i32 %32, %37
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %26
  %42 = load %struct.ddb_output*, %struct.ddb_output** %3, align 8
  %43 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ddb_output*, %struct.ddb_output** %3, align 8
  %48 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %46, %51
  %53 = icmp sle i32 %52, 376
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %71

55:                                               ; preds = %41, %26
  store i32 188, i32* %2, align 4
  br label %71

56:                                               ; preds = %1
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.ddb_output*, %struct.ddb_output** %3, align 8
  %59 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %57, %62
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %7, align 4
  %68 = icmp sgt i32 %67, 376
  br i1 %68, label %69, label %70

69:                                               ; preds = %66, %56
  store i32 188, i32* %2, align 4
  br label %71

70:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %69, %55, %54
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
