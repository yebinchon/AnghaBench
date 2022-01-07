; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_update_rx_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_update_rx_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_ring = type { i8*, i64, i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_ring*)* @hns_update_rx_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_update_rx_rate(%struct.hnae_ring* %0) #0 {
  %2 = alloca %struct.hnae_ring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hnae_ring* %0, %struct.hnae_ring** %2, align 8
  %6 = load %struct.hnae_ring*, %struct.hnae_ring** %2, align 8
  %7 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %6, i32 0, i32 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load i8*, i8** @jiffies, align 8
  %17 = load %struct.hnae_ring*, %struct.hnae_ring** %2, align 8
  %18 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* @HZ, align 4
  %21 = ashr i32 %20, 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr i8, i8* %19, i64 %22
  %24 = call i64 @time_before(i8* %16, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15, %1
  br label %81

27:                                               ; preds = %15
  %28 = load %struct.hnae_ring*, %struct.hnae_ring** %2, align 8
  %29 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.hnae_ring*, %struct.hnae_ring** %2, align 8
  %32 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %30, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %27
  %37 = load %struct.hnae_ring*, %struct.hnae_ring** %2, align 8
  %38 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.hnae_ring*, %struct.hnae_ring** %2, align 8
  %42 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i8*, i8** @jiffies, align 8
  %44 = load %struct.hnae_ring*, %struct.hnae_ring** %2, align 8
  %45 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  br label %81

46:                                               ; preds = %27
  %47 = load %struct.hnae_ring*, %struct.hnae_ring** %2, align 8
  %48 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.hnae_ring*, %struct.hnae_ring** %2, align 8
  %52 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %5, align 4
  %56 = load i8*, i8** @jiffies, align 8
  %57 = load %struct.hnae_ring*, %struct.hnae_ring** %2, align 8
  %58 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = ptrtoint i8* %56 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @jiffies_to_msecs(i8* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @do_div(i32 %65, i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = ashr i32 %68, 10
  %70 = load %struct.hnae_ring*, %struct.hnae_ring** %2, align 8
  %71 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.hnae_ring*, %struct.hnae_ring** %2, align 8
  %73 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.hnae_ring*, %struct.hnae_ring** %2, align 8
  %77 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load i8*, i8** @jiffies, align 8
  %79 = load %struct.hnae_ring*, %struct.hnae_ring** %2, align 8
  %80 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %46, %36, %26
  ret void
}

declare dso_local i64 @time_before(i8*, i8*) #1

declare dso_local i32 @jiffies_to_msecs(i8*) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
