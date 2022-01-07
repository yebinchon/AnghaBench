; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_free_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_port = type { i32, i32*, i32*, i32*, i32, i32*, i32, %struct.sky2_hw* }
%struct.sky2_hw = type { i32 }

@RX_LE_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_port*)* @sky2_free_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_free_buffers(%struct.sky2_port* %0) #0 {
  %2 = alloca %struct.sky2_port*, align 8
  %3 = alloca %struct.sky2_hw*, align 8
  store %struct.sky2_port* %0, %struct.sky2_port** %2, align 8
  %4 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %5 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %4, i32 0, i32 7
  %6 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  store %struct.sky2_hw* %6, %struct.sky2_hw** %3, align 8
  %7 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %8 = call i32 @sky2_rx_clean(%struct.sky2_port* %7)
  %9 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %10 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %15 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RX_LE_BYTES, align 4
  %18 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %19 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %22 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pci_free_consistent(i32 %16, i32 %17, i32* %20, i32 %23)
  %25 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %26 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %25, i32 0, i32 5
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %13, %1
  %28 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %29 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %27
  %33 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %34 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %37 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %43 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %46 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @pci_free_consistent(i32 %35, i32 %41, i32* %44, i32 %47)
  %49 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %50 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %49, i32 0, i32 3
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %32, %27
  %52 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %53 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @kfree(i32* %54)
  %56 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %57 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @kfree(i32* %58)
  %60 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %61 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  %62 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %63 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  ret void
}

declare dso_local i32 @sky2_rx_clean(%struct.sky2_port*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
