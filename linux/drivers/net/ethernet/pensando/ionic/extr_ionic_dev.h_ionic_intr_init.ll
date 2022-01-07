; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_dev.h_ionic_intr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_dev.h_ionic_intr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_dev = type { i32 }
%struct.ionic_intr_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ionic_dev*, %struct.ionic_intr_info*, i64)* @ionic_intr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ionic_intr_init(%struct.ionic_dev* %0, %struct.ionic_intr_info* %1, i64 %2) #0 {
  %4 = alloca %struct.ionic_dev*, align 8
  %5 = alloca %struct.ionic_intr_info*, align 8
  %6 = alloca i64, align 8
  store %struct.ionic_dev* %0, %struct.ionic_dev** %4, align 8
  store %struct.ionic_intr_info* %1, %struct.ionic_intr_info** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.ionic_dev*, %struct.ionic_dev** %4, align 8
  %8 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @ionic_intr_clean(i32 %9, i64 %10)
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.ionic_intr_info*, %struct.ionic_intr_info** %5, align 8
  %14 = getelementptr inbounds %struct.ionic_intr_info, %struct.ionic_intr_info* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  ret void
}

declare dso_local i32 @ionic_intr_clean(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
