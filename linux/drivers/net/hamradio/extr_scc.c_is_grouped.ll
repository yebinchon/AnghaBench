; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_is_grouped.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_is_grouped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_channel = type { i32*, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8 }

@Nchips = common dso_local global i32 0, align 4
@SCC_Info = common dso_local global %struct.scc_channel* null, align 8
@TXGROUP = common dso_local global i8 0, align 1
@R5 = common dso_local global i64 0, align 8
@RTS = common dso_local global i32 0, align 4
@RXGROUP = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scc_channel*)* @is_grouped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_grouped(%struct.scc_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scc_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scc_channel*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.scc_channel* %0, %struct.scc_channel** %3, align 8
  %8 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %9 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i8, i8* %10, align 8
  store i8 %11, i8* %6, align 1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %80, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @Nchips, align 4
  %15 = mul nsw i32 %14, 2
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %83

17:                                               ; preds = %12
  %18 = load %struct.scc_channel*, %struct.scc_channel** @SCC_Info, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %18, i64 %20
  store %struct.scc_channel* %21, %struct.scc_channel** %5, align 8
  %22 = load %struct.scc_channel*, %struct.scc_channel** %5, align 8
  %23 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 8
  store i8 %25, i8* %7, align 1
  %26 = load %struct.scc_channel*, %struct.scc_channel** %5, align 8
  %27 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %28 = icmp eq %struct.scc_channel* %26, %27
  br i1 %28, label %38, label %29

29:                                               ; preds = %17
  %30 = load %struct.scc_channel*, %struct.scc_channel** %5, align 8
  %31 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i8, i8* %7, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34, %29, %17
  br label %80

39:                                               ; preds = %34
  %40 = load i8, i8* %6, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %41, 63
  %43 = load i8, i8* %7, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 63
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %39
  %48 = load i8, i8* %6, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @TXGROUP, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %47
  %55 = load %struct.scc_channel*, %struct.scc_channel** %5, align 8
  %56 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @R5, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @RTS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  store i32 1, i32* %2, align 4
  br label %84

65:                                               ; preds = %54, %47
  %66 = load i8, i8* %6, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* @RXGROUP, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load %struct.scc_channel*, %struct.scc_channel** %5, align 8
  %74 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 1, i32* %2, align 4
  br label %84

78:                                               ; preds = %72, %65
  br label %79

79:                                               ; preds = %78, %39
  br label %80

80:                                               ; preds = %79, %38
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %12

83:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %77, %64
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
