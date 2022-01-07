; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_input_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_input_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_input = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.ddb* }
%struct.ddb = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"IA %d %d %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb_input*)* @ddb_input_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddb_input_avail(%struct.ddb_input* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ddb_input*, align 8
  %4 = alloca %struct.ddb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ddb_input* %0, %struct.ddb_input** %3, align 8
  %9 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %10 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.ddb*, %struct.ddb** %12, align 8
  store %struct.ddb* %13, %struct.ddb** %4, align 8
  %14 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %15 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ddb*, %struct.ddb** %4, align 8
  %20 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %21 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = call i32 @DMA_BUFFER_CONTROL(%struct.TYPE_5__* %22)
  %24 = call i32 @ddbreadl(%struct.ddb* %19, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = ashr i32 %25, 11
  %27 = and i32 %26, 31
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 2047
  %30 = shl i32 %29, 7
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %1
  %35 = load %struct.ddb*, %struct.ddb** %4, align 8
  %36 = getelementptr inbounds %struct.ddb, %struct.ddb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39, i32 %40)
  %42 = load %struct.ddb*, %struct.ddb** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %45 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = call i32 @DMA_BUFFER_ACK(%struct.TYPE_5__* %46)
  %48 = call i32 @ddbwritel(%struct.ddb* %42, i32 %43, i32 %47)
  store i32 0, i32* %2, align 4
  br label %59

49:                                               ; preds = %1
  %50 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %51 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 188, i32* %2, align 4
  br label %59

58:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %57, %34
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @ddbreadl(%struct.ddb*, i32) #1

declare dso_local i32 @DMA_BUFFER_CONTROL(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ddbwritel(%struct.ddb*, i32, i32) #1

declare dso_local i32 @DMA_BUFFER_ACK(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
