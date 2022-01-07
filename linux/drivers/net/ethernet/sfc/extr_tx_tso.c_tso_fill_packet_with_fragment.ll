; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx_tso.c_tso_fill_packet_with_fragment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx_tso.c_tso_fill_packet_with_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tso_state = type { i64, i64, i64, i32, i64 }
%struct.efx_tx_buffer = type { i64, i64, i64, i32, %struct.sk_buff* }

@EFX_TX_BUF_SKB = common dso_local global i32 0, align 4
@EFX_TX_BUF_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_tx_queue*, %struct.sk_buff*, %struct.tso_state*)* @tso_fill_packet_with_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tso_fill_packet_with_fragment(%struct.efx_tx_queue* %0, %struct.sk_buff* %1, %struct.tso_state* %2) #0 {
  %4 = alloca %struct.efx_tx_queue*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tso_state*, align 8
  %7 = alloca %struct.efx_tx_buffer*, align 8
  %8 = alloca i32, align 4
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.tso_state* %2, %struct.tso_state** %6, align 8
  %9 = load %struct.tso_state*, %struct.tso_state** %6, align 8
  %10 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %113

14:                                               ; preds = %3
  %15 = load %struct.tso_state*, %struct.tso_state** %6, align 8
  %16 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %113

20:                                               ; preds = %14
  %21 = load %struct.tso_state*, %struct.tso_state** %6, align 8
  %22 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @EFX_WARN_ON_ONCE_PARANOID(i32 %25)
  %27 = load %struct.tso_state*, %struct.tso_state** %6, align 8
  %28 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @EFX_WARN_ON_ONCE_PARANOID(i32 %31)
  %33 = load %struct.tso_state*, %struct.tso_state** %6, align 8
  %34 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.tso_state*, %struct.tso_state** %6, align 8
  %37 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @min(i64 %35, i64 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = load %struct.tso_state*, %struct.tso_state** %6, align 8
  %43 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, %41
  store i64 %45, i64* %43, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.tso_state*, %struct.tso_state** %6, align 8
  %49 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, %47
  store i64 %51, i64* %49, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.tso_state*, %struct.tso_state** %6, align 8
  %55 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %59 = load %struct.tso_state*, %struct.tso_state** %6, align 8
  %60 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @efx_tx_queue_insert(%struct.efx_tx_queue* %58, i32 %61, i32 %62, %struct.efx_tx_buffer** %7)
  %64 = load %struct.tso_state*, %struct.tso_state** %6, align 8
  %65 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %20
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %7, align 8
  %71 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %70, i32 0, i32 4
  store %struct.sk_buff* %69, %struct.sk_buff** %71, align 8
  %72 = load i32, i32* @EFX_TX_BUF_SKB, align 4
  %73 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %7, align 8
  %74 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  br label %85

75:                                               ; preds = %20
  %76 = load %struct.tso_state*, %struct.tso_state** %6, align 8
  %77 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* @EFX_TX_BUF_CONT, align 4
  %82 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %7, align 8
  %83 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %80, %75
  br label %85

85:                                               ; preds = %84, %68
  %86 = load %struct.tso_state*, %struct.tso_state** %6, align 8
  %87 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %85
  %91 = load %struct.tso_state*, %struct.tso_state** %6, align 8
  %92 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %7, align 8
  %95 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %7, align 8
  %97 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %7, align 8
  %100 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %98, %101
  %103 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %7, align 8
  %104 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  %105 = load %struct.tso_state*, %struct.tso_state** %6, align 8
  %106 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %105, i32 0, i32 4
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %90, %85
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.tso_state*, %struct.tso_state** %6, align 8
  %110 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %107, %19, %13
  ret void
}

declare dso_local i32 @EFX_WARN_ON_ONCE_PARANOID(i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @efx_tx_queue_insert(%struct.efx_tx_queue*, i32, i32, %struct.efx_tx_buffer**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
