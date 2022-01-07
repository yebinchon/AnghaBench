; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_update_vport_alive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_update_vport_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.hclge_vport* }
%struct.hclge_vport = type { i32, i32, i64 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@HCLGE_VPORT_STATE_ALIVE = common dso_local global i32 0, align 4
@HCLGE_MAC_DEFAULT_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*)* @hclge_update_vport_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_update_vport_alive(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_vport*, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  store i32 1, i32* %3, align 4
  br label %5

5:                                                ; preds = %44, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %8 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %47

11:                                               ; preds = %5
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %13 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %12, i32 0, i32 1
  %14 = load %struct.hclge_vport*, %struct.hclge_vport** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %14, i64 %16
  store %struct.hclge_vport* %17, %struct.hclge_vport** %4, align 8
  %18 = load i32, i32* @jiffies, align 4
  %19 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %20 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @HZ, align 4
  %23 = mul nsw i32 8, %22
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = call i64 @time_after(i32 %18, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %11
  %29 = load i32, i32* @HCLGE_VPORT_STATE_ALIVE, align 4
  %30 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %31 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %30, i32 0, i32 1
  %32 = call i32 @clear_bit(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %28, %11
  %34 = load i32, i32* @HCLGE_VPORT_STATE_ALIVE, align 4
  %35 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %36 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %35, i32 0, i32 1
  %37 = call i32 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @HCLGE_MAC_DEFAULT_FRAME, align 4
  %41 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %42 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %33
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %5

47:                                               ; preds = %5
  ret void
}

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
