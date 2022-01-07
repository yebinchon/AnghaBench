; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.h_hnae_buffer_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.h_hnae_buffer_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_ring = type { %struct.TYPE_8__*, i32*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.hnae_ring*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_ring*, i32)* @hnae_buffer_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hnae_buffer_detach(%struct.hnae_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.hnae_ring*, align 8
  %4 = alloca i32, align 4
  store %struct.hnae_ring* %0, %struct.hnae_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %6 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %5, i32 0, i32 2
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32 (%struct.hnae_ring*, i32*)*, i32 (%struct.hnae_ring*, i32*)** %12, align 8
  %14 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %15 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %16 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 %13(%struct.hnae_ring* %14, i32* %20)
  %22 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %23 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
