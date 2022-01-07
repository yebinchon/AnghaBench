; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_wmm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_wmm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, i64, %struct.mwifiex_private** }
%struct.mwifiex_private = type { %struct.TYPE_4__, %struct.TYPE_3__*, i8** }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i8*, i8*, i8* }

@MAX_NUM_TID = common dso_local global i32 0, align 4
@disable_tx_amsdu = common dso_local global i32 0, align 4
@MWIFIEX_TX_DATA_BUF_SIZE_2K = common dso_local global i64 0, align 8
@BA_STREAM_NOT_ALLOWED = common dso_local global i8* null, align 8
@MWIFIEX_WMM_DRV_DELAY_MAX = common dso_local global i32 0, align 4
@HIGH_PRIO_TID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_wmm_init(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %143, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %146

12:                                               ; preds = %6
  %13 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %13, i32 0, i32 2
  %15 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %15, i64 %17
  %19 = load %struct.mwifiex_private*, %struct.mwifiex_private** %18, align 8
  store %struct.mwifiex_private* %19, %struct.mwifiex_private** %5, align 8
  %20 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %21 = icmp ne %struct.mwifiex_private* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  br label %143

23:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %90, %23
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @MAX_NUM_TID, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %93

28:                                               ; preds = %24
  %29 = load i32, i32* @disable_tx_amsdu, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %28
  %32 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MWIFIEX_TX_DATA_BUF_SIZE_2K, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %39 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %38, i32 0, i32 2
  %40 = load i8**, i8*** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %46 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i8* %44, i8** %51, align 8
  br label %61

52:                                               ; preds = %31, %28
  %53 = load i8*, i8** @BA_STREAM_NOT_ALLOWED, align 8
  %54 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %55 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  store i8* %53, i8** %60, align 8
  br label %61

61:                                               ; preds = %52, %37
  %62 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %63 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %62, i32 0, i32 2
  %64 = load i8**, i8*** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %70 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  store i8* %68, i8** %75, align 8
  %76 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %77 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %76, i32 0, i32 2
  %78 = load i8**, i8*** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %84 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i8* %82, i8** %89, align 8
  br label %90

90:                                               ; preds = %61
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %24

93:                                               ; preds = %24
  %94 = load i8*, i8** @BA_STREAM_NOT_ALLOWED, align 8
  %95 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %96 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %95, i32 0, i32 1
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 6
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i8* %94, i8** %99, align 8
  %100 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %101 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %100, i32 0, i32 1
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 6
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  store i8* %94, i8** %104, align 8
  %105 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %106 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %105, i32 0, i32 1
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 6
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  store i8* %94, i8** %109, align 8
  %110 = load i8*, i8** @BA_STREAM_NOT_ALLOWED, align 8
  %111 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %112 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %111, i32 0, i32 1
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 7
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  store i8* %110, i8** %115, align 8
  %116 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %117 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %116, i32 0, i32 1
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 7
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  store i8* %110, i8** %120, align 8
  %121 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %122 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %121, i32 0, i32 1
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 7
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  store i8* %110, i8** %125, align 8
  %126 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %127 = call i32 @mwifiex_set_ba_params(%struct.mwifiex_private* %126)
  %128 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %129 = call i32 @mwifiex_reset_11n_rx_seq_num(%struct.mwifiex_private* %128)
  %130 = load i32, i32* @MWIFIEX_WMM_DRV_DELAY_MAX, align 4
  %131 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %132 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  store i32 %130, i32* %133, align 8
  %134 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %135 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = call i32 @atomic_set(i32* %136, i32 0)
  %138 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %139 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* @HIGH_PRIO_TID, align 4
  %142 = call i32 @atomic_set(i32* %140, i32 %141)
  br label %143

143:                                              ; preds = %93, %22
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %4, align 4
  br label %6

146:                                              ; preds = %6
  ret void
}

declare dso_local i32 @mwifiex_set_ba_params(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_reset_11n_rx_seq_num(%struct.mwifiex_private*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
