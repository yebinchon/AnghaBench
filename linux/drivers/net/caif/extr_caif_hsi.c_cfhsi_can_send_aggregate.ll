; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_hsi.c_cfhsi_can_send_aggregate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_hsi.c_cfhsi_can_send_aggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfhsi = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@CFHSI_PRIO_BEBK = common dso_local global i32 0, align 4
@CFHSI_MAX_PKTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfhsi*)* @cfhsi_can_send_aggregate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfhsi_can_send_aggregate(%struct.cfhsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cfhsi*, align 8
  %4 = alloca i32, align 4
  store %struct.cfhsi* %0, %struct.cfhsi** %3, align 8
  %5 = load %struct.cfhsi*, %struct.cfhsi** %3, align 8
  %6 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %44

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %28, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @CFHSI_PRIO_BEBK, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load %struct.cfhsi*, %struct.cfhsi** %3, align 8
  %18 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %44

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %12

31:                                               ; preds = %12
  %32 = load %struct.cfhsi*, %struct.cfhsi** %3, align 8
  %33 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* @CFHSI_PRIO_BEBK, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CFHSI_MAX_PKTS, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %44

43:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %42, %26, %10
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
