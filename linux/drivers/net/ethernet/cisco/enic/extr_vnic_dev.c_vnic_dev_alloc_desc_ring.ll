; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_alloc_desc_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_alloc_desc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32 }
%struct.vnic_dev_ring = type { i32, i32, i64, i64, i64, i32*, i32, i64, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Failed to allocate ring (size=%d), aborting\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnic_dev_alloc_desc_ring(%struct.vnic_dev* %0, %struct.vnic_dev_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnic_dev*, align 8
  %7 = alloca %struct.vnic_dev_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vnic_dev* %0, %struct.vnic_dev** %6, align 8
  store %struct.vnic_dev_ring* %1, %struct.vnic_dev_ring** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %7, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @vnic_dev_desc_ring_size(%struct.vnic_dev_ring* %10, i32 %11, i32 %12)
  %14 = load %struct.vnic_dev*, %struct.vnic_dev** %6, align 8
  %15 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %7, align 8
  %18 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %7, align 8
  %21 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %20, i32 0, i32 0
  %22 = call i64 @pci_alloc_consistent(i32 %16, i32 %19, i32* %21)
  %23 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %7, align 8
  %24 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %23, i32 0, i32 4
  store i64 %22, i64* %24, align 8
  %25 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %7, align 8
  %26 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %4
  %30 = load %struct.vnic_dev*, %struct.vnic_dev** %6, align 8
  %31 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %7, align 8
  %32 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @vdev_err(%struct.vnic_dev* %30, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %71

38:                                               ; preds = %4
  %39 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %7, align 8
  %40 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %7, align 8
  %43 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ALIGN(i32 %41, i32 %44)
  %46 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %7, align 8
  %47 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %7, align 8
  %49 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %7, align 8
  %53 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %7, align 8
  %56 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %54, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %51, i64 %59
  %61 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %7, align 8
  %62 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %61, i32 0, i32 5
  store i32* %60, i32** %62, align 8
  %63 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %7, align 8
  %64 = call i32 @vnic_dev_clear_desc_ring(%struct.vnic_dev_ring* %63)
  %65 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %7, align 8
  %66 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %67, 1
  %69 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %7, align 8
  %70 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %69, i32 0, i32 3
  store i64 %68, i64* %70, align 8
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %38, %29
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @vnic_dev_desc_ring_size(%struct.vnic_dev_ring*, i32, i32) #1

declare dso_local i64 @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @vdev_err(%struct.vnic_dev*, i8*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @vnic_dev_clear_desc_ring(%struct.vnic_dev_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
