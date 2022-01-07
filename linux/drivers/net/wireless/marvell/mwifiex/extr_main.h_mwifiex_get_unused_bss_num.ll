; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.h_mwifiex_get_unused_bss_num.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.h_mwifiex_get_unused_bss_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, i64, i64 }

@MWIFIEX_MAX_BSS_NUM = common dso_local global i32 0, align 4
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mwifiex_adapter*, i64)* @mwifiex_get_unused_bss_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mwifiex_get_unused_bss_num(%struct.mwifiex_adapter* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mwifiex_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32, i32* @MWIFIEX_MAX_BSS_NUM, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = mul nuw i64 4, %12
  %16 = trunc i64 %15 to i32
  %17 = call i32 @memset(i32* %14, i32 0, i32 %16)
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %66, %2
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %69

24:                                               ; preds = %18
  %25 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %27, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %65

32:                                               ; preds = %24
  %33 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %34 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %35, i64 %36
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %32
  %44 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %45 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %47
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %64, label %54

54:                                               ; preds = %43
  %55 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %56 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %57, i64 %58
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %14, i64 %62
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %54, %43, %32
  br label %65

65:                                               ; preds = %64, %24
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %6, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %6, align 8
  br label %18

69:                                               ; preds = %18
  store i64 0, i64* %7, align 8
  br label %70

70:                                               ; preds = %83, %69
  %71 = load i64, i64* %7, align 8
  %72 = load i32, i32* @MWIFIEX_MAX_BSS_NUM, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp ult i64 %71, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds i32, i32* %14, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = load i64, i64* %7, align 8
  store i64 %81, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %87

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %7, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %7, align 8
  br label %70

86:                                               ; preds = %70
  store i64 -1, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %87

87:                                               ; preds = %86, %80
  %88 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i64, i64* %3, align 8
  ret i64 %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
