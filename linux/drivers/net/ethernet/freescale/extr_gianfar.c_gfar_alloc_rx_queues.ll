; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_alloc_rx_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_alloc_rx_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfar_private = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfar_private*)* @gfar_alloc_rx_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_alloc_rx_queues(%struct.gfar_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfar_private*, align 8
  %4 = alloca i32, align 4
  store %struct.gfar_private* %0, %struct.gfar_private** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %52, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %8 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %55

11:                                               ; preds = %5
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.TYPE_2__* @kzalloc(i32 4, i32 %12)
  %14 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %15 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %16, i64 %18
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %19, align 8
  %20 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %21 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %11
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %56

31:                                               ; preds = %11
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %34 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %35, i64 %37
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %32, i32* %40, align 4
  %41 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %42 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %45 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 %43, i32* %51, align 4
  br label %52

52:                                               ; preds = %31
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %5

55:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %28
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_2__* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
