; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman.c_free_init_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman.c_free_init_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman = type { i32, i64, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fman*)* @free_init_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_init_resources(%struct.fman* %0) #0 {
  %2 = alloca %struct.fman*, align 8
  store %struct.fman* %0, %struct.fman** %2, align 8
  %3 = load %struct.fman*, %struct.fman** %2, align 8
  %4 = getelementptr inbounds %struct.fman, %struct.fman* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.fman*, %struct.fman** %2, align 8
  %9 = getelementptr inbounds %struct.fman, %struct.fman* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.fman*, %struct.fman** %2, align 8
  %12 = getelementptr inbounds %struct.fman, %struct.fman* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.fman*, %struct.fman** %2, align 8
  %15 = getelementptr inbounds %struct.fman, %struct.fman* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @fman_muram_free_mem(i32 %10, i64 %13, i32 %16)
  br label %18

18:                                               ; preds = %7, %1
  %19 = load %struct.fman*, %struct.fman** %2, align 8
  %20 = getelementptr inbounds %struct.fman, %struct.fman* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.fman*, %struct.fman** %2, align 8
  %25 = getelementptr inbounds %struct.fman, %struct.fman* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.fman*, %struct.fman** %2, align 8
  %28 = getelementptr inbounds %struct.fman, %struct.fman* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.fman*, %struct.fman** %2, align 8
  %31 = getelementptr inbounds %struct.fman, %struct.fman* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @fman_muram_free_mem(i32 %26, i64 %29, i32 %32)
  br label %34

34:                                               ; preds = %23, %18
  ret void
}

declare dso_local i32 @fman_muram_free_mem(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
