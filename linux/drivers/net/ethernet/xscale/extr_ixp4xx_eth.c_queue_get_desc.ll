; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xscale/extr_ixp4xx_eth.c_queue_get_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xscale/extr_ixp4xx_eth.c_queue_get_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32 }
%struct.desc = type { i32 }

@TX_DESCS = common dso_local global i32 0, align 4
@RX_DESCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.port*, i32)* @queue_get_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_get_desc(i32 %0, %struct.port* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.desc*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.port* %1, %struct.port** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @qmgr_get_entry(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %71

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, -32
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.port*, %struct.port** %6, align 8
  %23 = call i32 @tx_desc_phys(%struct.port* %22, i32 0)
  br label %27

24:                                               ; preds = %16
  %25 = load %struct.port*, %struct.port** %6, align 8
  %26 = call i32 @rx_desc_phys(%struct.port* %25, i32 0)
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i32 [ %23, %21 ], [ %26, %24 ]
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.port*, %struct.port** %6, align 8
  %33 = call %struct.desc* @tx_desc_ptr(%struct.port* %32, i32 0)
  br label %37

34:                                               ; preds = %27
  %35 = load %struct.port*, %struct.port** %6, align 8
  %36 = call %struct.desc* @rx_desc_ptr(%struct.port* %35, i32 0)
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi %struct.desc* [ %33, %31 ], [ %36, %34 ]
  store %struct.desc* %38, %struct.desc** %11, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = udiv i64 %42, 4
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* @TX_DESCS, align 4
  br label %52

50:                                               ; preds = %37
  %51 = load i32, i32* @RX_DESCS, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = icmp sge i32 %45, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUG_ON(i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.desc*, %struct.desc** %11, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.desc, %struct.desc* %58, i64 %60
  %62 = call i32 @debug_desc(i32 %57, %struct.desc* %61)
  %63 = load %struct.desc*, %struct.desc** %11, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.desc, %struct.desc* %63, i64 %65
  %67 = getelementptr inbounds %struct.desc, %struct.desc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @BUG_ON(i32 %68)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %52, %15
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @qmgr_get_entry(i32) #1

declare dso_local i32 @tx_desc_phys(%struct.port*, i32) #1

declare dso_local i32 @rx_desc_phys(%struct.port*, i32) #1

declare dso_local %struct.desc* @tx_desc_ptr(%struct.port*, i32) #1

declare dso_local %struct.desc* @rx_desc_ptr(%struct.port*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @debug_desc(i32, %struct.desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
