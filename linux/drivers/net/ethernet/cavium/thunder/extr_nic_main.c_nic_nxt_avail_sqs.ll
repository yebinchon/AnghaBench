; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_nxt_avail_sqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_nxt_avail_sqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicpf*)* @nic_nxt_avail_sqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nic_nxt_avail_sqs(%struct.nicpf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nicpf*, align 8
  %4 = alloca i32, align 4
  store %struct.nicpf* %0, %struct.nicpf** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %34, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %8 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %5
  %12 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %13 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %11
  %21 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %22 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 1, i32* %26, align 4
  br label %28

27:                                               ; preds = %11
  br label %34

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %31 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %29, %32
  store i32 %33, i32* %2, align 4
  br label %38

34:                                               ; preds = %27
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %5

37:                                               ; preds = %5
  store i32 -1, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %28
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
