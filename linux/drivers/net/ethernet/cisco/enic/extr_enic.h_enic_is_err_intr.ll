; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic.h_enic_is_err_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic.h_enic_is_err_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enic*, i32)* @enic_is_err_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_is_err_intr(%struct.enic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.enic*, align 8
  %5 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.enic*, %struct.enic** %4, align 8
  %7 = getelementptr inbounds %struct.enic, %struct.enic* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @vnic_dev_get_intr_mode(i32 %8)
  switch i32 %9, label %22 [
    i32 130, label %10
    i32 128, label %15
    i32 129, label %21
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call i32 (...) @enic_legacy_err_intr()
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %3, align 4
  br label %23

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.enic*, %struct.enic** %4, align 8
  %18 = call i32 @enic_msix_err_intr(%struct.enic* %17)
  %19 = icmp eq i32 %16, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %23

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %2, %21
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %15, %10
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @vnic_dev_get_intr_mode(i32) #1

declare dso_local i32 @enic_legacy_err_intr(...) #1

declare dso_local i32 @enic_msix_err_intr(%struct.enic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
