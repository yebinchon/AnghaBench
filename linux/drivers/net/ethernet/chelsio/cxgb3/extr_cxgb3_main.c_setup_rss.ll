; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_setup_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_setup_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64* }
%struct.TYPE_2__ = type { i32 }

@SGE_QSETS = common dso_local global i32 0, align 4
@RSS_TABLE_SIZE = common dso_local global i32 0, align 4
@F_RQFEEDBACKENABLE = common dso_local global i32 0, align 4
@F_TNLLKPEN = common dso_local global i32 0, align 4
@F_TNLMAPEN = common dso_local global i32 0, align 4
@F_TNLPRTEN = common dso_local global i32 0, align 4
@F_TNL2TUPEN = common dso_local global i32 0, align 4
@F_TNL4TUPEN = common dso_local global i32 0, align 4
@F_HASHTOEPLITZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @setup_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_rss(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = call %struct.TYPE_2__* @adap2pinfo(%struct.adapter* %9, i32 0)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.adapter*, %struct.adapter** %2, align 8
  %21 = call %struct.TYPE_2__* @adap2pinfo(%struct.adapter* %20, i32 1)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  br label %25

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %24, %19
  %26 = phi i32 [ %23, %19 ], [ 1, %24 ]
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @SGE_QSETS, align 4
  %28 = add nsw i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %6, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %7, align 8
  %32 = load i32, i32* @RSS_TABLE_SIZE, align 4
  %33 = add nsw i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %8, align 8
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %45, %25
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @SGE_QSETS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %31, i64 %43
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %36

48:                                               ; preds = %36
  %49 = load i32, i32* @SGE_QSETS, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %31, i64 %50
  store i32 255, i32* %51, align 4
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %75, %48
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @RSS_TABLE_SIZE, align 4
  %55 = sdiv i32 %54, 2
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %52
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %4, align 4
  %60 = urem i32 %58, %59
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %35, i64 %62
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %5, align 4
  %66 = urem i32 %64, %65
  %67 = load i32, i32* %4, align 4
  %68 = add i32 %66, %67
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @RSS_TABLE_SIZE, align 4
  %71 = sdiv i32 %70, 2
  %72 = add nsw i32 %69, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %35, i64 %73
  store i32 %68, i32* %74, align 4
  br label %75

75:                                               ; preds = %57
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %52

78:                                               ; preds = %52
  %79 = load i32, i32* @RSS_TABLE_SIZE, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %35, i64 %80
  store i32 65535, i32* %81, align 4
  %82 = load %struct.adapter*, %struct.adapter** %2, align 8
  %83 = load i32, i32* @F_RQFEEDBACKENABLE, align 4
  %84 = load i32, i32* @F_TNLLKPEN, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @F_TNLMAPEN, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @F_TNLPRTEN, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @F_TNL2TUPEN, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @F_TNL4TUPEN, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @V_RRCPLCPUSIZE(i32 6)
  %95 = or i32 %93, %94
  %96 = load i32, i32* @F_HASHTOEPLITZ, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @t3_config_rss(%struct.adapter* %82, i32 %97, i32* %31, i32* %35)
  %99 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %99)
  ret void
}

declare dso_local %struct.TYPE_2__* @adap2pinfo(%struct.adapter*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @t3_config_rss(%struct.adapter*, i32, i32*, i32*) #1

declare dso_local i32 @V_RRCPLCPUSIZE(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
