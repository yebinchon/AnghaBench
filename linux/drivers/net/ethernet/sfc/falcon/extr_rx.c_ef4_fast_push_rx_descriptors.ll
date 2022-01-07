; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_rx.c_ef4_fast_push_rx_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_rx.c_ef4_fast_push_rx_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_rx_queue = type { i32, i32, i32, i32, i32, i64, %struct.ef4_nic*, i32 }
%struct.ef4_nic = type { i32, i32, i32, i32 }

@rx_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"RX queue %d fast-filling descriptor ring from level %d to level %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"RX queue %d fast-filled descriptor ring to level %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ef4_fast_push_rx_descriptors(%struct.ef4_rx_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.ef4_rx_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ef4_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ef4_rx_queue* %0, %struct.ef4_rx_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %11 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %10, i32 0, i32 6
  %12 = load %struct.ef4_nic*, %struct.ef4_nic** %11, align 8
  store %struct.ef4_nic* %12, %struct.ef4_nic** %5, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %14 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %152

18:                                               ; preds = %2
  %19 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %20 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %23 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub i32 %21, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %28 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %27, i32 0, i32 6
  %29 = load %struct.ef4_nic*, %struct.ef4_nic** %28, align 8
  %30 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ugt i32 %26, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @EF4_BUG_ON_PARANOID(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %37 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp uge i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %18
  br label %140

41:                                               ; preds = %18
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %44 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp ult i32 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %56 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %50
  br label %58

58:                                               ; preds = %57, %41
  %59 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %60 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %63 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = mul i32 %61, %64
  store i32 %65, i32* %7, align 4
  %66 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %67 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sub i32 %68, %69
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ult i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @EF4_BUG_ON_PARANOID(i32 %74)
  %76 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %77 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %76, i32 0, i32 6
  %78 = load %struct.ef4_nic*, %struct.ef4_nic** %77, align 8
  %79 = load i32, i32* @rx_status, align 4
  %80 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %81 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %80, i32 0, i32 6
  %82 = load %struct.ef4_nic*, %struct.ef4_nic** %81, align 8
  %83 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %86 = call i32 @ef4_rx_queue_index(%struct.ef4_rx_queue* %85)
  %87 = load i32, i32* %6, align 4
  %88 = zext i32 %87 to i64
  %89 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %90 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (%struct.ef4_nic*, i32, i32, i8*, i32, i64, ...) @netif_vdbg(%struct.ef4_nic* %78, i32 %79, i32 %84, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %86, i64 %88, i32 %91)
  br label %93

93:                                               ; preds = %113, %58
  %94 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @ef4_init_rx_buffers(%struct.ef4_rx_queue* %94, i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %93
  %101 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %102 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %105 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %103, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %110 = call i32 @ef4_schedule_slow_fill(%struct.ef4_rx_queue* %109)
  br label %111

111:                                              ; preds = %108, %100
  br label %140

112:                                              ; preds = %93
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = sub i32 %115, %114
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp uge i32 %116, %117
  br i1 %118, label %93, label %119

119:                                              ; preds = %113
  %120 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %121 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %120, i32 0, i32 6
  %122 = load %struct.ef4_nic*, %struct.ef4_nic** %121, align 8
  %123 = load i32, i32* @rx_status, align 4
  %124 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %125 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %124, i32 0, i32 6
  %126 = load %struct.ef4_nic*, %struct.ef4_nic** %125, align 8
  %127 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %130 = call i32 @ef4_rx_queue_index(%struct.ef4_rx_queue* %129)
  %131 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %132 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %135 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sub i32 %133, %136
  %138 = zext i32 %137 to i64
  %139 = call i32 (%struct.ef4_nic*, i32, i32, i8*, i32, i64, ...) @netif_vdbg(%struct.ef4_nic* %122, i32 %123, i32 %128, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %130, i64 %138)
  br label %140

140:                                              ; preds = %119, %111, %40
  %141 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %142 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %145 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = zext i32 %146 to i64
  %148 = icmp ne i64 %143, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %140
  %150 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %151 = call i32 @ef4_nic_notify_rx_desc(%struct.ef4_rx_queue* %150)
  br label %152

152:                                              ; preds = %17, %149, %140
  ret void
}

declare dso_local i32 @EF4_BUG_ON_PARANOID(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_vdbg(%struct.ef4_nic*, i32, i32, i8*, i32, i64, ...) #1

declare dso_local i32 @ef4_rx_queue_index(%struct.ef4_rx_queue*) #1

declare dso_local i32 @ef4_init_rx_buffers(%struct.ef4_rx_queue*, i32) #1

declare dso_local i32 @ef4_schedule_slow_fill(%struct.ef4_rx_queue*) #1

declare dso_local i32 @ef4_nic_notify_rx_desc(%struct.ef4_rx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
