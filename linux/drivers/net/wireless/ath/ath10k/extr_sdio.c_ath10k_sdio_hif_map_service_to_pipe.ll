; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_hif_map_service_to_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_hif_map_service_to_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.ath10k_htc }
%struct.ath10k_htc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ath10k_sdio = type { i8**, i8**, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i8* }

@ATH10K_HTC_EP_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATH10K_DBG_SDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"sdio wmi ctrl mbox_addr 0x%x mbox_size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"sdio htt data mbox_addr 0x%x mbox_size %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"unsupported HTC service id: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, i64*, i64*)* @ath10k_sdio_hif_map_service_to_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_hif_map_service_to_pipe(%struct.ath10k* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ath10k_sdio*, align 8
  %11 = alloca %struct.ath10k_htc*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %19 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %20 = call %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k* %19)
  store %struct.ath10k_sdio* %20, %struct.ath10k_sdio** %10, align 8
  %21 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %22 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %21, i32 0, i32 0
  store %struct.ath10k_htc* %22, %struct.ath10k_htc** %11, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %23

23:                                               ; preds = %48, %4
  %24 = load i32, i32* %18, align 4
  %25 = load i32, i32* @ATH10K_HTC_EP_COUNT, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %23
  %28 = load %struct.ath10k_htc*, %struct.ath10k_htc** %11, align 8
  %29 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %18, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %27
  %39 = load %struct.ath10k_htc*, %struct.ath10k_htc** %11, align 8
  %40 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %18, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %51

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %18, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %18, align 4
  br label %23

51:                                               ; preds = %38, %23
  %52 = load i32, i32* %17, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %198

57:                                               ; preds = %51
  %58 = load i32, i32* %16, align 4
  %59 = zext i32 %58 to i64
  %60 = load i64*, i64** %9, align 8
  store i64 %59, i64* %60, align 8
  %61 = load i64*, i64** %8, align 8
  store i64 %59, i64* %61, align 8
  %62 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %10, align 8
  %63 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %95

66:                                               ; preds = %57
  %67 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %10, align 8
  %68 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %12, align 8
  %74 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %10, align 8
  %75 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %13, align 8
  %81 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %10, align 8
  %82 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %14, align 8
  %88 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %10, align 8
  %89 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %15, align 8
  br label %124

95:                                               ; preds = %57
  %96 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %10, align 8
  %97 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i64 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %12, align 8
  %103 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %10, align 8
  %104 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %13, align 8
  %110 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %10, align 8
  %111 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** %14, align 8
  %117 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %10, align 8
  %118 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %15, align 8
  br label %124

124:                                              ; preds = %95, %66
  %125 = load i32, i32* %7, align 4
  switch i32 %125, label %191 [
    i32 129, label %126
    i32 128, label %127
    i32 130, label %159
  ]

126:                                              ; preds = %124
  br label %197

127:                                              ; preds = %124
  %128 = load i8*, i8** %13, align 8
  %129 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %10, align 8
  %130 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %129, i32 0, i32 1
  %131 = load i8**, i8*** %130, align 8
  %132 = load i32, i32* %16, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  store i8* %128, i8** %134, align 8
  %135 = load i8*, i8** %15, align 8
  %136 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %10, align 8
  %137 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %136, i32 0, i32 0
  %138 = load i8**, i8*** %137, align 8
  %139 = load i32, i32* %16, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  store i8* %135, i8** %141, align 8
  %142 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %143 = load i32, i32* @ATH10K_DBG_SDIO, align 4
  %144 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %10, align 8
  %145 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %144, i32 0, i32 1
  %146 = load i8**, i8*** %145, align 8
  %147 = load i32, i32* %16, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %10, align 8
  %152 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %151, i32 0, i32 0
  %153 = load i8**, i8*** %152, align 8
  %154 = load i32, i32* %16, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @ath10k_dbg(%struct.ath10k* %142, i32 %143, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %150, i8* %157)
  br label %197

159:                                              ; preds = %124
  %160 = load i8*, i8** %12, align 8
  %161 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %10, align 8
  %162 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %161, i32 0, i32 1
  %163 = load i8**, i8*** %162, align 8
  %164 = load i32, i32* %16, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  store i8* %160, i8** %166, align 8
  %167 = load i8*, i8** %14, align 8
  %168 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %10, align 8
  %169 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %168, i32 0, i32 0
  %170 = load i8**, i8*** %169, align 8
  %171 = load i32, i32* %16, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %170, i64 %172
  store i8* %167, i8** %173, align 8
  %174 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %175 = load i32, i32* @ATH10K_DBG_SDIO, align 4
  %176 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %10, align 8
  %177 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %176, i32 0, i32 1
  %178 = load i8**, i8*** %177, align 8
  %179 = load i32, i32* %16, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %10, align 8
  %184 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %183, i32 0, i32 0
  %185 = load i8**, i8*** %184, align 8
  %186 = load i32, i32* %16, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @ath10k_dbg(%struct.ath10k* %174, i32 %175, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %182, i8* %189)
  br label %197

191:                                              ; preds = %124
  %192 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %193 = load i32, i32* %7, align 4
  %194 = call i32 @ath10k_warn(%struct.ath10k* %192, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %193)
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %5, align 4
  br label %198

197:                                              ; preds = %159, %127, %126
  store i32 0, i32* %5, align 4
  br label %198

198:                                              ; preds = %197, %191, %54
  %199 = load i32, i32* %5, align 4
  ret i32 %199
}

declare dso_local %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
