; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_desc_ring_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_desc_ring_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev_ring = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnic_dev_ring*, i32, i32)* @vnic_dev_desc_ring_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnic_dev_desc_ring_size(%struct.vnic_dev_ring* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vnic_dev_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vnic_dev_ring* %0, %struct.vnic_dev_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 32, i32* %7, align 4
  store i32 16, i32* %8, align 4
  %9 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %4, align 8
  %10 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %9, i32 0, i32 0
  store i32 512, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 4096, i32* %5, align 4
  br label %14

14:                                               ; preds = %13, %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i8* @ALIGN(i32 %15, i32 %16)
  %18 = ptrtoint i8* %17 to i32
  %19 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %4, align 8
  %20 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @ALIGN(i32 %21, i32 %22)
  %24 = ptrtoint i8* %23 to i32
  %25 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %4, align 8
  %26 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %4, align 8
  %28 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %4, align 8
  %31 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %4, align 8
  %35 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %4, align 8
  %37 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %4, align 8
  %40 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  %43 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %4, align 8
  %44 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %4, align 8
  %46 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  ret i32 %47
}

declare dso_local i8* @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
