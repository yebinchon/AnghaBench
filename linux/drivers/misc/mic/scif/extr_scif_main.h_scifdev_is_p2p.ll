; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_main.h_scifdev_is_p2p.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_main.h_scifdev_is_p2p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_dev = type { i32 }

@scif_dev = common dso_local global %struct.scif_dev* null, align 8
@SCIF_MGMT_NODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scif_dev*)* @scifdev_is_p2p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scifdev_is_p2p(%struct.scif_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scif_dev*, align 8
  store %struct.scif_dev* %0, %struct.scif_dev** %3, align 8
  %4 = call i64 (...) @scif_is_mgmt_node()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

7:                                                ; preds = %1
  %8 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %9 = load %struct.scif_dev*, %struct.scif_dev** @scif_dev, align 8
  %10 = load i64, i64* @SCIF_MGMT_NODE, align 8
  %11 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %9, i64 %10
  %12 = icmp ne %struct.scif_dev* %8, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %15 = call i32 @scifdev_self(%struct.scif_dev* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %13, %7
  %19 = phi i1 [ false, %7 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %6
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i64 @scif_is_mgmt_node(...) #1

declare dso_local i32 @scifdev_self(%struct.scif_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
