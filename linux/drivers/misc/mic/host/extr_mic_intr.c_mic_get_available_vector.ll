; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_intr.c_mic_get_available_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_intr.c_mic_get_available_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msix_entry = type { i32 }
%struct.mic_device = type { %struct.mic_irq_info }
%struct.mic_irq_info = type { i32, %struct.msix_entry*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.msix_entry* (%struct.mic_device*)* @mic_get_available_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.msix_entry* @mic_get_available_vector(%struct.mic_device* %0) #0 {
  %2 = alloca %struct.msix_entry*, align 8
  %3 = alloca %struct.mic_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mic_irq_info*, align 8
  store %struct.mic_device* %0, %struct.mic_device** %3, align 8
  %6 = load %struct.mic_device*, %struct.mic_device** %3, align 8
  %7 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %6, i32 0, i32 0
  store %struct.mic_irq_info* %7, %struct.mic_irq_info** %5, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %31, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.mic_irq_info*, %struct.mic_irq_info** %5, align 8
  %11 = getelementptr inbounds %struct.mic_irq_info, %struct.mic_irq_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %8
  %15 = load %struct.mic_irq_info*, %struct.mic_irq_info** %5, align 8
  %16 = getelementptr inbounds %struct.mic_irq_info, %struct.mic_irq_info* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %14
  %24 = load %struct.mic_irq_info*, %struct.mic_irq_info** %5, align 8
  %25 = getelementptr inbounds %struct.mic_irq_info, %struct.mic_irq_info* %24, i32 0, i32 1
  %26 = load %struct.msix_entry*, %struct.msix_entry** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %26, i64 %28
  store %struct.msix_entry* %29, %struct.msix_entry** %2, align 8
  br label %35

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %8

34:                                               ; preds = %8
  store %struct.msix_entry* null, %struct.msix_entry** %2, align 8
  br label %35

35:                                               ; preds = %34, %23
  %36 = load %struct.msix_entry*, %struct.msix_entry** %2, align 8
  ret %struct.msix_entry* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
