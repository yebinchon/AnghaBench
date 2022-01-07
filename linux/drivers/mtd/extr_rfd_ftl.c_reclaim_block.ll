; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_rfd_ftl.c_reclaim_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_rfd_ftl.c_reclaim_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partition = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"reclaim_block: reclaiming block #%d with %d used %d free sectors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.partition*, i32*)* @reclaim_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reclaim_block(%struct.partition* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.partition*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.partition* %0, %struct.partition** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.partition*, %struct.partition** %4, align 8
  %13 = getelementptr inbounds %struct.partition, %struct.partition* %12, i32 0, i32 6
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @mtd_sync(i32 %15)
  store i32 2147483647, i32* %8, align 4
  store i32 -1, i32* %7, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.partition*, %struct.partition** %4, align 8
  %24 = getelementptr inbounds %struct.partition, %struct.partition* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %22, %25
  store i32 %26, i32* %9, align 4
  br label %28

27:                                               ; preds = %2
  store i32 -1, i32* %9, align 4
  br label %28

28:                                               ; preds = %27, %20
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %103, %28
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.partition*, %struct.partition** %4, align 8
  %32 = getelementptr inbounds %struct.partition, %struct.partition* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %106

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.partition*, %struct.partition** %4, align 8
  %38 = getelementptr inbounds %struct.partition, %struct.partition* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %103

42:                                               ; preds = %35
  %43 = load %struct.partition*, %struct.partition** %4, align 8
  %44 = getelementptr inbounds %struct.partition, %struct.partition* %43, i32 0, i32 5
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %156

53:                                               ; preds = %42
  %54 = load %struct.partition*, %struct.partition** %4, align 8
  %55 = getelementptr inbounds %struct.partition, %struct.partition* %54, i32 0, i32 5
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %11, align 4
  br label %83

68:                                               ; preds = %53
  %69 = load %struct.partition*, %struct.partition** %4, align 8
  %70 = getelementptr inbounds %struct.partition, %struct.partition* %69, i32 0, i32 5
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.partition*, %struct.partition** %4, align 8
  %78 = getelementptr inbounds %struct.partition, %struct.partition* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %103

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82, %65
  %84 = load %struct.partition*, %struct.partition** %4, align 8
  %85 = getelementptr inbounds %struct.partition, %struct.partition* %84, i32 0, i32 5
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %83
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %99, %83
  br label %103

103:                                              ; preds = %102, %81, %41
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %29

106:                                              ; preds = %29
  %107 = load i32, i32* %7, align 4
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* @ENOSPC, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %156

112:                                              ; preds = %106
  %113 = load %struct.partition*, %struct.partition** %4, align 8
  %114 = getelementptr inbounds %struct.partition, %struct.partition* %113, i32 0, i32 4
  store i32 -1, i32* %114, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.partition*, %struct.partition** %4, align 8
  %117 = getelementptr inbounds %struct.partition, %struct.partition* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.partition*, %struct.partition** %4, align 8
  %120 = getelementptr inbounds %struct.partition, %struct.partition* %119, i32 0, i32 5
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.partition*, %struct.partition** %4, align 8
  %128 = getelementptr inbounds %struct.partition, %struct.partition* %127, i32 0, i32 5
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @pr_debug(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %126, i64 %134)
  %136 = load %struct.partition*, %struct.partition** %4, align 8
  %137 = getelementptr inbounds %struct.partition, %struct.partition* %136, i32 0, i32 5
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %112
  %146 = load %struct.partition*, %struct.partition** %4, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load i32*, i32** %5, align 8
  %149 = call i32 @move_block_contents(%struct.partition* %146, i32 %147, i32* %148)
  store i32 %149, i32* %10, align 4
  br label %154

150:                                              ; preds = %112
  %151 = load %struct.partition*, %struct.partition** %4, align 8
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @erase_block(%struct.partition* %151, i32 %152)
  store i32 %153, i32* %10, align 4
  br label %154

154:                                              ; preds = %150, %145
  %155 = load i32, i32* %10, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %154, %109, %52
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @mtd_sync(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i64) #1

declare dso_local i32 @move_block_contents(%struct.partition*, i32, i32*) #1

declare dso_local i32 @erase_block(%struct.partition*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
