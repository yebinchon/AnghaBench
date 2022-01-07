; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_alloc_txdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_alloc_txdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32, %struct.jme_ring* }
%struct.jme_ring = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_adapter*, %struct.sk_buff*)* @jme_alloc_txdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_alloc_txdesc(%struct.jme_adapter* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jme_adapter*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.jme_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %10, i32 0, i32 1
  %12 = load %struct.jme_ring*, %struct.jme_ring** %11, align 8
  %13 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %12, i64 0
  store %struct.jme_ring* %13, %struct.jme_ring** %6, align 8
  %14 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.jme_ring*, %struct.jme_ring** %6, align 8
  %18 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 2
  store i32 %24, i32* %8, align 4
  %25 = load %struct.jme_ring*, %struct.jme_ring** %6, align 8
  %26 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %25, i32 0, i32 1
  %27 = call i32 @atomic_read(i32* %26)
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %49

34:                                               ; preds = %2
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.jme_ring*, %struct.jme_ring** %6, align 8
  %37 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %36, i32 0, i32 1
  %38 = call i32 @atomic_sub(i32 %35, i32* %37)
  %39 = load %struct.jme_ring*, %struct.jme_ring** %6, align 8
  %40 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %43, %44
  %46 = load %struct.jme_ring*, %struct.jme_ring** %6, align 8
  %47 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %34, %33
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
