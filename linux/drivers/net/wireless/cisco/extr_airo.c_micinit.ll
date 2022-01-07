; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_micinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_micinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i32, i64, i32 }

@JOB_MIC = common dso_local global i32 0, align 4
@RID_MIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.airo_info*)* @micinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @micinit(%struct.airo_info* %0) #0 {
  %2 = alloca %struct.airo_info*, align 8
  %3 = alloca %struct.TYPE_9__, align 8
  store %struct.airo_info* %0, %struct.airo_info** %2, align 8
  %4 = load i32, i32* @JOB_MIC, align 4
  %5 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %6 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %5, i32 0, i32 4
  %7 = call i32 @clear_bit(i32 %4, i32* %6)
  %8 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %9 = load i32, i32* @RID_MIC, align 4
  %10 = call i32 @PC4500_readrid(%struct.airo_info* %8, i32 %9, %struct.TYPE_9__* %3, i32 40, i32 0)
  %11 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %12 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %11, i32 0, i32 3
  %13 = call i32 @up(i32* %12)
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @le16_to_cpu(i32 %15)
  %17 = and i32 %16, 255
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  %21 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %22 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %25 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %1
  %30 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %31 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %37 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %84

42:                                               ; preds = %1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %48 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %53 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %60 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @age_mic_context(%struct.TYPE_10__* %51, %struct.TYPE_10__* %56, i32 %58, i32 4, i32 %61)
  br label %63

63:                                               ; preds = %46, %42
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %63
  %68 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %69 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %74 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %81 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @age_mic_context(%struct.TYPE_10__* %72, %struct.TYPE_10__* %77, i32 %79, i32 4, i32 %82)
  br label %84

84:                                               ; preds = %29, %67, %63
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @PC4500_readrid(%struct.airo_info*, i32, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @age_mic_context(%struct.TYPE_10__*, %struct.TYPE_10__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
