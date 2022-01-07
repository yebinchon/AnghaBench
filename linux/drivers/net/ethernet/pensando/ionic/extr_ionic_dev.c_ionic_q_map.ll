; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_dev.c_ionic_q_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_dev.c_ionic_q_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_queue = type { i32, i32, %struct.ionic_desc_info*, i32, i8* }
%struct.ionic_desc_info = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ionic_q_map(%struct.ionic_queue* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ionic_queue*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ionic_desc_info*, align 8
  %8 = alloca i32, align 4
  store %struct.ionic_queue* %0, %struct.ionic_queue** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %11 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %10, i32 0, i32 4
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %14 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %16 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %15, i32 0, i32 2
  %17 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %16, align 8
  store %struct.ionic_desc_info* %17, %struct.ionic_desc_info** %7, align 8
  br label %18

18:                                               ; preds = %35, %3
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %21 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %28 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul i32 %26, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr i8, i8* %25, i64 %31
  %33 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %7, align 8
  %34 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %8, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %8, align 4
  %38 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %7, align 8
  %39 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %38, i32 1
  store %struct.ionic_desc_info* %39, %struct.ionic_desc_info** %7, align 8
  br label %18

40:                                               ; preds = %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
