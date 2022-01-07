; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.c_mwifiex_update_ampdu_txwinsize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.c_mwifiex_update_ampdu_txwinsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i64, i64, i64, %struct.mwifiex_private** }
%struct.mwifiex_private = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MWIFIEX_BSS_TYPE_STA = common dso_local global i64 0, align 8
@MWIFIEX_STA_AMPDU_DEF_TXWINSIZE = common dso_local global i8* null, align 8
@MWIFIEX_BSS_TYPE_P2P = common dso_local global i64 0, align 8
@MWIFIEX_BSS_TYPE_UAP = common dso_local global i64 0, align 8
@MWIFIEX_UAP_AMPDU_DEF_TXWINSIZE = common dso_local global i64 0, align 8
@MAX_NUM_TID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_update_ampdu_txwinsize(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mwifiex_private*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %111, %1
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %114

12:                                               ; preds = %6
  %13 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %13, i32 0, i32 3
  %15 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %15, i64 %16
  %18 = load %struct.mwifiex_private*, %struct.mwifiex_private** %17, align 8
  %19 = icmp ne %struct.mwifiex_private* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  br label %111

21:                                               ; preds = %12
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %22, i32 0, i32 3
  %24 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %24, i64 %25
  %27 = load %struct.mwifiex_private*, %struct.mwifiex_private** %26, align 8
  store %struct.mwifiex_private* %27, %struct.mwifiex_private** %5, align 8
  %28 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %29 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %4, align 8
  %32 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %33 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MWIFIEX_BSS_TYPE_STA, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %21
  %38 = load i8*, i8** @MWIFIEX_STA_AMPDU_DEF_TXWINSIZE, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %41 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  br label %43

43:                                               ; preds = %37, %21
  %44 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %45 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MWIFIEX_BSS_TYPE_P2P, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i8*, i8** @MWIFIEX_STA_AMPDU_DEF_TXWINSIZE, align 8
  %51 = ptrtoint i8* %50 to i64
  %52 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %53 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i64 %51, i64* %54, align 8
  br label %55

55:                                               ; preds = %49, %43
  %56 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %57 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MWIFIEX_BSS_TYPE_UAP, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i64, i64* @MWIFIEX_UAP_AMPDU_DEF_TXWINSIZE, align 8
  %63 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %64 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i64 %62, i64* %65, align 8
  br label %66

66:                                               ; preds = %61, %55
  %67 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %68 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %78 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %81 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i64 %79, i64* %82, align 8
  br label %83

83:                                               ; preds = %76, %71
  br label %84

84:                                               ; preds = %83, %66
  %85 = load i64, i64* %4, align 8
  %86 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %87 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %85, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %84
  %92 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %93 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  br label %111

97:                                               ; preds = %91
  store i64 0, i64* %3, align 8
  br label %98

98:                                               ; preds = %106, %97
  %99 = load i64, i64* %3, align 8
  %100 = load i64, i64* @MAX_NUM_TID, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %104 = load i64, i64* %3, align 8
  %105 = call i32 @mwifiex_send_delba_txbastream_tbl(%struct.mwifiex_private* %103, i64 %104)
  br label %106

106:                                              ; preds = %102
  %107 = load i64, i64* %3, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %3, align 8
  br label %98

109:                                              ; preds = %98
  br label %110

110:                                              ; preds = %109, %84
  br label %111

111:                                              ; preds = %110, %96, %20
  %112 = load i64, i64* %3, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %3, align 8
  br label %6

114:                                              ; preds = %6
  ret void
}

declare dso_local i32 @mwifiex_send_delba_txbastream_tbl(%struct.mwifiex_private*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
