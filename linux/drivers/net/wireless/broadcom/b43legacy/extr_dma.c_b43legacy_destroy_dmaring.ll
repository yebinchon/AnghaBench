; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_b43legacy_destroy_dmaring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_b43legacy_destroy_dmaring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_dmaring = type { %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring*, i32, i32, i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"DMA-%u 0x%04X (%s) max used slots: %d/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_dmaring*)* @b43legacy_destroy_dmaring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_destroy_dmaring(%struct.b43legacy_dmaring* %0) #0 {
  %2 = alloca %struct.b43legacy_dmaring*, align 8
  store %struct.b43legacy_dmaring* %0, %struct.b43legacy_dmaring** %2, align 8
  %3 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %4 = icmp ne %struct.b43legacy_dmaring* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %48

6:                                                ; preds = %1
  %7 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %8 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %7, i32 0, i32 7
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %13 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %17 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %20 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %25 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %26 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %29 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @b43legacydbg(i32 %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i8* %24, i32 %27, i32 %30)
  %32 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %33 = call i32 @dmacontroller_cleanup(%struct.b43legacy_dmaring* %32)
  %34 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %35 = call i32 @free_all_descbuffers(%struct.b43legacy_dmaring* %34)
  %36 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %37 = call i32 @free_ringmemory(%struct.b43legacy_dmaring* %36)
  %38 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %39 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %38, i32 0, i32 1
  %40 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %39, align 8
  %41 = call i32 @kfree(%struct.b43legacy_dmaring* %40)
  %42 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %43 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %42, i32 0, i32 0
  %44 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %43, align 8
  %45 = call i32 @kfree(%struct.b43legacy_dmaring* %44)
  %46 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %47 = call i32 @kfree(%struct.b43legacy_dmaring* %46)
  br label %48

48:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @b43legacydbg(i32, i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @dmacontroller_cleanup(%struct.b43legacy_dmaring*) #1

declare dso_local i32 @free_all_descbuffers(%struct.b43legacy_dmaring*) #1

declare dso_local i32 @free_ringmemory(%struct.b43legacy_dmaring*) #1

declare dso_local i32 @kfree(%struct.b43legacy_dmaring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
