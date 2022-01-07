; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_put_ring_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_put_ring_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_nic_priv = type { %struct.TYPE_4__*, i32, %struct.hnae3_handle* }
%struct.TYPE_4__ = type { %struct.TYPE_4__* }
%struct.hnae3_handle = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns3_nic_priv*)* @hns3_put_ring_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_put_ring_config(%struct.hns3_nic_priv* %0) #0 {
  %2 = alloca %struct.hns3_nic_priv*, align 8
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca i32, align 4
  store %struct.hns3_nic_priv* %0, %struct.hns3_nic_priv** %2, align 8
  %5 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %6 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %5, i32 0, i32 2
  %7 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  store %struct.hnae3_handle* %7, %struct.hnae3_handle** %3, align 8
  %8 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %9 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %64

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %51, %13
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %17 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %54

21:                                               ; preds = %14
  %22 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %23 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %26 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 @devm_kfree(i32 %24, %struct.TYPE_4__* %32)
  %34 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %35 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %38 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %42 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %40, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = call i32 @devm_kfree(i32 %36, %struct.TYPE_4__* %49)
  br label %51

51:                                               ; preds = %21
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %14

54:                                               ; preds = %14
  %55 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %56 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %59 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = call i32 @devm_kfree(i32 %57, %struct.TYPE_4__* %60)
  %62 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %63 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %62, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %63, align 8
  br label %64

64:                                               ; preds = %54, %12
  ret void
}

declare dso_local i32 @devm_kfree(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
