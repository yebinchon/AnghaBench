; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_status_queue_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_status_queue_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32, %struct.ipw2100_status_queue }
%struct.ipw2100_status_queue = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Can not allocate status queue.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*, i32)* @status_queue_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status_queue_allocate(%struct.ipw2100_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipw2100_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipw2100_status_queue*, align 8
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %8 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %7, i32 0, i32 1
  store %struct.ipw2100_status_queue* %8, %struct.ipw2100_status_queue** %6, align 8
  %9 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = load %struct.ipw2100_status_queue*, %struct.ipw2100_status_queue** %6, align 8
  %15 = getelementptr inbounds %struct.ipw2100_status_queue, %struct.ipw2100_status_queue* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %17 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ipw2100_status_queue*, %struct.ipw2100_status_queue** %6, align 8
  %20 = getelementptr inbounds %struct.ipw2100_status_queue, %struct.ipw2100_status_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ipw2100_status_queue*, %struct.ipw2100_status_queue** %6, align 8
  %23 = getelementptr inbounds %struct.ipw2100_status_queue, %struct.ipw2100_status_queue* %22, i32 0, i32 2
  %24 = call i32 @pci_zalloc_consistent(i32 %18, i32 %21, i32* %23)
  %25 = load %struct.ipw2100_status_queue*, %struct.ipw2100_status_queue** %6, align 8
  %26 = getelementptr inbounds %struct.ipw2100_status_queue, %struct.ipw2100_status_queue* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ipw2100_status_queue*, %struct.ipw2100_status_queue** %6, align 8
  %28 = getelementptr inbounds %struct.ipw2100_status_queue, %struct.ipw2100_status_queue* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %2
  %32 = call i32 @IPW_DEBUG_WARNING(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %37

35:                                               ; preds = %2
  %36 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @IPW_DEBUG_INFO(i8*) #1

declare dso_local i32 @pci_zalloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @IPW_DEBUG_WARNING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
