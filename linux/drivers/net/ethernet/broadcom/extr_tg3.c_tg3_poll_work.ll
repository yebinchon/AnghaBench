; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_poll_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_poll_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3_napi = type { i64, i64*, i64, %struct.tg3_rx_prodring_set, %struct.TYPE_4__*, %struct.tg3* }
%struct.tg3_rx_prodring_set = type { i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.tg3 = type { i32, i32, i32, %struct.tg3_napi* }

@TX_RECOVERY_PENDING = common dso_local global i32 0, align 4
@ENABLE_RSS = common dso_local global i32 0, align 4
@TG3_RX_STD_PROD_IDX_REG = common dso_local global i32 0, align 4
@TG3_RX_JMB_PROD_IDX_REG = common dso_local global i32 0, align 4
@HOSTCC_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3_napi*, i32, i32)* @tg3_poll_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_poll_work(%struct.tg3_napi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tg3_napi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tg3*, align 8
  %9 = alloca %struct.tg3_rx_prodring_set*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.tg3_napi* %0, %struct.tg3_napi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %15 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %14, i32 0, i32 5
  %16 = load %struct.tg3*, %struct.tg3** %15, align 8
  store %struct.tg3* %16, %struct.tg3** %8, align 8
  %17 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %18 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %26 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %3
  %30 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %31 = call i32 @tg3_tx(%struct.tg3_napi* %30)
  %32 = load %struct.tg3*, %struct.tg3** %8, align 8
  %33 = load i32, i32* @TX_RECOVERY_PENDING, align 4
  %34 = call i64 @tg3_flag(%struct.tg3* %32, i32 %33)
  %35 = call i64 @unlikely(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %4, align 4
  br label %151

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %3
  %41 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %42 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %4, align 4
  br label %151

47:                                               ; preds = %40
  %48 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %49 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %53 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %47
  %57 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %58, %59
  %61 = call i64 @tg3_rx(%struct.tg3_napi* %57, i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %56, %47
  %67 = load %struct.tg3*, %struct.tg3** %8, align 8
  %68 = load i32, i32* @ENABLE_RSS, align 4
  %69 = call i64 @tg3_flag(%struct.tg3* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %149

71:                                               ; preds = %66
  %72 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %73 = load %struct.tg3*, %struct.tg3** %8, align 8
  %74 = getelementptr inbounds %struct.tg3, %struct.tg3* %73, i32 0, i32 3
  %75 = load %struct.tg3_napi*, %struct.tg3_napi** %74, align 8
  %76 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %75, i64 1
  %77 = icmp eq %struct.tg3_napi* %72, %76
  br i1 %77, label %78, label %149

78:                                               ; preds = %71
  %79 = load %struct.tg3*, %struct.tg3** %8, align 8
  %80 = getelementptr inbounds %struct.tg3, %struct.tg3* %79, i32 0, i32 3
  %81 = load %struct.tg3_napi*, %struct.tg3_napi** %80, align 8
  %82 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %81, i64 0
  %83 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %82, i32 0, i32 3
  store %struct.tg3_rx_prodring_set* %83, %struct.tg3_rx_prodring_set** %9, align 8
  store i32 0, i32* %11, align 4
  %84 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %9, align 8
  %85 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %12, align 8
  %87 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %9, align 8
  %88 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %13, align 8
  %90 = load %struct.tg3*, %struct.tg3** %8, align 8
  %91 = getelementptr inbounds %struct.tg3, %struct.tg3* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  store i32 1, i32* %10, align 4
  br label %92

92:                                               ; preds = %111, %78
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.tg3*, %struct.tg3** %8, align 8
  %95 = getelementptr inbounds %struct.tg3, %struct.tg3* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp sle i32 %93, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %92
  %99 = load %struct.tg3*, %struct.tg3** %8, align 8
  %100 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %9, align 8
  %101 = load %struct.tg3*, %struct.tg3** %8, align 8
  %102 = getelementptr inbounds %struct.tg3, %struct.tg3* %101, i32 0, i32 3
  %103 = load %struct.tg3_napi*, %struct.tg3_napi** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %103, i64 %105
  %107 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %106, i32 0, i32 3
  %108 = call i32 @tg3_rx_prodring_xfer(%struct.tg3* %99, %struct.tg3_rx_prodring_set* %100, %struct.tg3_rx_prodring_set* %107)
  %109 = load i32, i32* %11, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %98
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %92

114:                                              ; preds = %92
  %115 = call i32 (...) @wmb()
  %116 = load i64, i64* %12, align 8
  %117 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %9, align 8
  %118 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %116, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  %122 = load i32, i32* @TG3_RX_STD_PROD_IDX_REG, align 4
  %123 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %9, align 8
  %124 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @tw32_rx_mbox(i32 %122, i64 %125)
  br label %127

127:                                              ; preds = %121, %114
  %128 = load i64, i64* %13, align 8
  %129 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %9, align 8
  %130 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %128, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %127
  %134 = load i32, i32* @TG3_RX_JMB_PROD_IDX_REG, align 4
  %135 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %9, align 8
  %136 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @tw32_rx_mbox(i32 %134, i64 %137)
  br label %139

139:                                              ; preds = %133, %127
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load i32, i32* @HOSTCC_MODE, align 4
  %144 = load %struct.tg3*, %struct.tg3** %8, align 8
  %145 = getelementptr inbounds %struct.tg3, %struct.tg3* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @tw32_f(i32 %143, i32 %146)
  br label %148

148:                                              ; preds = %142, %139
  br label %149

149:                                              ; preds = %148, %71, %66
  %150 = load i32, i32* %6, align 4
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %149, %45, %37
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32 @tg3_tx(%struct.tg3_napi*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_rx(%struct.tg3_napi*, i32) #1

declare dso_local i32 @tg3_rx_prodring_xfer(%struct.tg3*, %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @tw32_rx_mbox(i32, i64) #1

declare dso_local i32 @tw32_f(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
