; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_inftlcore.c_inftl_getgeo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_inftlcore.c_inftl_getgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_blktrans_dev = type { i32 }
%struct.hd_geometry = type { i32, i32, i32 }
%struct.INFTLrecord = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_blktrans_dev*, %struct.hd_geometry*)* @inftl_getgeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inftl_getgeo(%struct.mtd_blktrans_dev* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca %struct.mtd_blktrans_dev*, align 8
  %4 = alloca %struct.hd_geometry*, align 8
  %5 = alloca %struct.INFTLrecord*, align 8
  store %struct.mtd_blktrans_dev* %0, %struct.mtd_blktrans_dev** %3, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %4, align 8
  %6 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %3, align 8
  %7 = bitcast %struct.mtd_blktrans_dev* %6 to i8*
  %8 = bitcast i8* %7 to %struct.INFTLrecord*
  store %struct.INFTLrecord* %8, %struct.INFTLrecord** %5, align 8
  %9 = load %struct.INFTLrecord*, %struct.INFTLrecord** %5, align 8
  %10 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %13 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.INFTLrecord*, %struct.INFTLrecord** %5, align 8
  %15 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %18 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.INFTLrecord*, %struct.INFTLrecord** %5, align 8
  %20 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %23 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
