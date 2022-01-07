; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_nw_ioc_get_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_nw_ioc_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { i32, i32, i32 }
%struct.bfa_ioc_attr = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_nw_ioc_get_attr(%struct.bfa_ioc* %0, %struct.bfa_ioc_attr* %1) #0 {
  %3 = alloca %struct.bfa_ioc*, align 8
  %4 = alloca %struct.bfa_ioc_attr*, align 8
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %3, align 8
  store %struct.bfa_ioc_attr* %1, %struct.bfa_ioc_attr** %4, align 8
  %5 = load %struct.bfa_ioc_attr*, %struct.bfa_ioc_attr** %4, align 8
  %6 = bitcast %struct.bfa_ioc_attr* %5 to i8*
  %7 = call i32 @memset(i8* %6, i32 0, i32 44)
  %8 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %9 = call i32 @bfa_ioc_get_state(%struct.bfa_ioc* %8)
  %10 = load %struct.bfa_ioc_attr*, %struct.bfa_ioc_attr** %4, align 8
  %11 = getelementptr inbounds %struct.bfa_ioc_attr, %struct.bfa_ioc_attr* %10, i32 0, i32 8
  store i32 %9, i32* %11, align 4
  %12 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %13 = call i32 @bfa_ioc_portid(%struct.bfa_ioc* %12)
  %14 = load %struct.bfa_ioc_attr*, %struct.bfa_ioc_attr** %4, align 8
  %15 = getelementptr inbounds %struct.bfa_ioc_attr, %struct.bfa_ioc_attr* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 4
  %16 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %17 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bfa_ioc_attr*, %struct.bfa_ioc_attr** %4, align 8
  %20 = getelementptr inbounds %struct.bfa_ioc_attr, %struct.bfa_ioc_attr* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bfa_ioc_attr*, %struct.bfa_ioc_attr** %4, align 8
  %25 = getelementptr inbounds %struct.bfa_ioc_attr, %struct.bfa_ioc_attr* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bfa_ioc_attr*, %struct.bfa_ioc_attr** %4, align 8
  %30 = getelementptr inbounds %struct.bfa_ioc_attr, %struct.bfa_ioc_attr* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %32 = call i32 @bfa_ioc_get_type(%struct.bfa_ioc* %31)
  %33 = load %struct.bfa_ioc_attr*, %struct.bfa_ioc_attr** %4, align 8
  %34 = getelementptr inbounds %struct.bfa_ioc_attr, %struct.bfa_ioc_attr* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %36 = load %struct.bfa_ioc_attr*, %struct.bfa_ioc_attr** %4, align 8
  %37 = getelementptr inbounds %struct.bfa_ioc_attr, %struct.bfa_ioc_attr* %36, i32 0, i32 2
  %38 = call i32 @bfa_ioc_get_adapter_attr(%struct.bfa_ioc* %35, i32* %37)
  %39 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %40 = call i32 @bfa_ioc_devid(%struct.bfa_ioc* %39)
  %41 = load %struct.bfa_ioc_attr*, %struct.bfa_ioc_attr** %4, align 8
  %42 = getelementptr inbounds %struct.bfa_ioc_attr, %struct.bfa_ioc_attr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 4
  %44 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %45 = call i32 @bfa_ioc_pcifn(%struct.bfa_ioc* %44)
  %46 = load %struct.bfa_ioc_attr*, %struct.bfa_ioc_attr** %4, align 8
  %47 = getelementptr inbounds %struct.bfa_ioc_attr, %struct.bfa_ioc_attr* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %50 = call i32 @bfa_ioc_is_default(%struct.bfa_ioc* %49)
  %51 = load %struct.bfa_ioc_attr*, %struct.bfa_ioc_attr** %4, align 8
  %52 = getelementptr inbounds %struct.bfa_ioc_attr, %struct.bfa_ioc_attr* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %54 = load %struct.bfa_ioc_attr*, %struct.bfa_ioc_attr** %4, align 8
  %55 = getelementptr inbounds %struct.bfa_ioc_attr, %struct.bfa_ioc_attr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @bfa_ioc_get_pci_chip_rev(%struct.bfa_ioc* %53, i32 %57)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @bfa_ioc_get_state(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_portid(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_get_type(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_get_adapter_attr(%struct.bfa_ioc*, i32*) #1

declare dso_local i32 @bfa_ioc_devid(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_pcifn(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_is_default(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_get_pci_chip_rev(%struct.bfa_ioc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
