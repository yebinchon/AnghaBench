; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_intr_software_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_intr_software_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { %struct.lan743x_intr }
%struct.lan743x_intr = type { i32 }

@INT_STS = common dso_local global i32 0, align 4
@INT_BIT_SW_GP_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @lan743x_intr_software_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan743x_intr_software_isr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lan743x_adapter*, align 8
  %4 = alloca %struct.lan743x_intr*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.lan743x_adapter*
  store %struct.lan743x_adapter* %7, %struct.lan743x_adapter** %3, align 8
  %8 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %8, i32 0, i32 0
  store %struct.lan743x_intr* %9, %struct.lan743x_intr** %4, align 8
  %10 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %11 = load i32, i32* @INT_STS, align 4
  %12 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @INT_BIT_SW_GP_, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %19 = load i32, i32* @INT_STS, align 4
  %20 = load i32, i32* @INT_BIT_SW_GP_, align 4
  %21 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %18, i32 %19, i32 %20)
  %22 = load %struct.lan743x_intr*, %struct.lan743x_intr** %4, align 8
  %23 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %24

24:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @lan743x_csr_read(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
