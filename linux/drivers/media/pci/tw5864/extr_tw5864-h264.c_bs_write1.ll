; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-h264.c_bs_write1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-h264.c_bs_write1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bs = type { i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bs*, i32)* @bs_write1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bs_write1(%struct.bs* %0, i32 %1) #0 {
  %3 = alloca %struct.bs*, align 8
  %4 = alloca i32, align 4
  store %struct.bs* %0, %struct.bs** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bs*, %struct.bs** %3, align 8
  %6 = getelementptr inbounds %struct.bs, %struct.bs* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load %struct.bs*, %struct.bs** %3, align 8
  %9 = getelementptr inbounds %struct.bs, %struct.bs* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ult i32* %7, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %2
  %13 = load %struct.bs*, %struct.bs** %3, align 8
  %14 = getelementptr inbounds %struct.bs, %struct.bs* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.bs*, %struct.bs** %3, align 8
  %20 = getelementptr inbounds %struct.bs, %struct.bs* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %18
  store i32 %23, i32* %21, align 4
  %24 = load %struct.bs*, %struct.bs** %3, align 8
  %25 = getelementptr inbounds %struct.bs, %struct.bs* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.bs*, %struct.bs** %3, align 8
  %29 = getelementptr inbounds %struct.bs, %struct.bs* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %12
  %33 = load %struct.bs*, %struct.bs** %3, align 8
  %34 = getelementptr inbounds %struct.bs, %struct.bs* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %34, align 8
  %37 = load %struct.bs*, %struct.bs** %3, align 8
  %38 = getelementptr inbounds %struct.bs, %struct.bs* %37, i32 0, i32 2
  store i32 8, i32* %38, align 8
  br label %39

39:                                               ; preds = %32, %12
  br label %40

40:                                               ; preds = %39, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
